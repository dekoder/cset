
function Test-SqlConnection {
    param(
        [Parameter(Mandatory)]
        [string]$connectionString
    )

    try {
        $sqlConnection = New-Object System.Data.SqlClient.SqlConnection $connectionString
        $sqlConnection.Open()
        ## This will run if the Open() method does not throw an exception
        return $true
    } catch {
        return $false
    } finally {
        $sqlConnection.Close()
    }
}

# Install SQL Server Express 2019
Start-Process SQL2019-SSEI-Expr.exe -Wait

# Install Web Server (IIS)
Install-WindowsFeature -Name Web-Server -IncludeManagementTools

# Install dotnet 6 hosting bundle 
Start-Process dotnet-hosting-6.0.2-win.exe -Wait

# Update enviornment path to ensure sqlcmd works after installing SQL server
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

# Create CSETUser
$password = Read-Host -AsSecureString "Enter a password for CSET service user account"
New-LocalUser -Name "CSETUser" -Description "CSET Service User" -Password $password -PasswordNeverExpires -UserMayNotChangePassword

# Create directories to place CSETAPI, CSETReportAPI, and CSETUI
New-Item -ItemType directory -Path C:\inetpub\wwwroot\CSETAPI -Force
New-Item -ItemType directory -Path C:\inetpub\wwwroot\CSETReportAPI -Force
New-Item -ItemType directory -Path C:\inetpub\wwwroot\CSETUI -Force

Copy-Item -Path CSETWebApi\* -Destination C:\inetpub\wwwroot\CSETAPI -Recurse -Force
Copy-Item -Path CSETWebApiReports\* -Destination C:\inetpub\wwwroot\CSETReportAPI -Recurse -Force
Copy-Item -Path CSETUI\* -Destination C:\inetpub\wwwroot\CSETUI -Recurse -Force

# Copy database files to user directory
New-Item -ItemType directory -Path C:\CSETDatabase -Force
Copy-Item -Path database\CSETWeb11012.mdf -Destination C:\CSETDatabase\CSETWeb.mdf -Force
Copy-Item -Path database\CSETWeb11012_log.ldf -Destination C:\CSETDatabase\CSETWeb_log.ldf -Force

$plainTextPassword = [Net.NetworkCredential]::new('', $password).Password

# Add CSETAPP app pool (leaving managedRuntimeVersion blank results in "No Managed Code")
& ${Env:windir}\system32\inetsrv\appcmd add apppool /name:"CSETAPP" /managedPipelineMode:"Integrated" /managedRuntimeVersion:"" /processModel.identityType:"SpecificUser" /processModel.userName:"${env:userdomain}\CSETUser" /processModel.password:$plainTextPassword

# Create CSETAPI, CSETReportAPI, and CSETUI sites and add them to CSET app pool
& ${Env:windir}\system32\inetsrv\appcmd add site /name:"CSETAPI" /physicalPath:"C:\inetpub\wwwroot\CSETAPI" /bindings:"http/*:5001:"
& ${Env:windir}\system32\inetsrv\appcmd set site "CSETAPI" /applicationDefaults.applicationPool:"CSETAPP"

& ${Env:windir}\system32\inetsrv\appcmd add site /name:"CSETReportAPI" /physicalPath:"C:\inetpub\wwwroot\CSETReportAPI" /bindings:"http/*:5002:"
& ${Env:windir}\system32\inetsrv\appcmd set site "CSETReportAPI" /applicationDefaults.applicationPool:"CSETAPP"

& ${Env:windir}\system32\inetsrv\appcmd add site /name:"CSETUI" /physicalPath:"C:\inetpub\wwwroot\CSETUI" /bindings:"http/*:80:"
& ${Env:windir}\system32\inetsrv\appcmd set site "CSETUI" /applicationDefaults.applicationPool:"CSETAPP"

# Carry on with database setup...
$server = Read-Host "Enter the SQL server name to be used for CSET database setup"

$sqlConnectionSucceeded = Test-SqlConnection "data source=${server};persist security info=True;Integrated Security=SSPI;MultipleActiveResultSets=True;Encrypt=false"

While ($sqlConnectionSucceeded -ne $true) {
	$server = Read-Host "Error connecting to the provided database server. Please try again"
	$sqlConnectionSucceeded = Test-SqlConnection "data source=${server};persist security info=True;Integrated Security=SSPI;MultipleActiveResultSets=True;Encrypt=false"
	$sqlConnectionSucceeded
}

$serverescaped = $server.replace("\", "\\")

# Making sure connection string and ports are correct in config files
(Get-Content C:\inetpub\wwwroot\CSETAPI\appsettings.json -Raw).replace("(localdb)\\MSSQLLocalDb", $serverescaped) | Set-Content C:\inetpub\wwwroot\CSETAPI\appsettings.json -NoNewLine
(Get-Content C:\inetpub\wwwroot\CSETReportAPI\appsettings.json -Raw).replace("(localdb)\\MSSQLLocalDb", $serverescaped) | Set-Content C:\inetpub\wwwroot\CSETReportAPI\appsettings.json -NoNewLine
(Get-Content C:\inetpub\wwwroot\CSETUI\assets\config.json -Raw).replace('"port":"5000"', '"port":"5001"') | Set-Content C:\inetpub\wwwroot\CSETUI\assets\config.json -NoNewLine
(Get-Content C:\inetpub\wwwroot\CSETUI\assets\config.json -Raw).replace('"reportsApi":"http://localhost:44363/"', '"reportsApi":"http://localhost:5002/"') | Set-Content C:\inetpub\wwwroot\CSETUI\assets\config.json -NoNewLine

sqlcmd -E -S $server -d "MASTER" -Q "CREATE DATABASE CSETWeb ON (FILENAME = 'C:\CSETDatabase\CSETWeb.mdf'), (FILENAME = 'C:\CSETDatabase\CSETWeb_log.ldf') FOR ATTACH;"
sqlcmd -E -S $server -d "CSETWeb" -Q "CREATE LOGIN [${env:userdomain}\CSETUser] FROM WINDOWS WITH DEFAULT_DATABASE = CSETWeb; CREATE USER [${env:userdomain}\CSETUser] FOR LOGIN [${env:userdomain}\CSETUser] WITH DEFAULT_SCHEMA = [dbo];"
sqlcmd -E -S $server -d "CSETWeb" -Q "ALTER ROLE [db_datareader] ADD MEMBER [${env:userdomain}\CSETUser]; ALTER ROLE [db_datawriter] ADD MEMBER [${env:userdomain}\CSETUser];"

# Restarting websites
& ${Env:windir}\system32\inetsrv\appcmd start apppool "CSETAPP"

& ${Env:windir}\system32\inetsrv\appcmd stop site "CSETAPI"
& ${Env:windir}\system32\inetsrv\appcmd stop site "CSETReportAPI"
& ${Env:windir}\system32\inetsrv\appcmd stop site "CSETUI"
& ${Env:windir}\system32\inetsrv\appcmd stop site "Default Web Site"

& ${Env:windir}\system32\inetsrv\appcmd start site "CSETAPI"
& ${Env:windir}\system32\inetsrv\appcmd start site "CSETReportAPI"
& ${Env:windir}\system32\inetsrv\appcmd start site "CSETUI"