////////////////////////////////
//
//   Copyright 2022 Battelle Energy Alliance, LLC
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
////////////////////////////////
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ConfigService } from './config.service';
import { Demographic } from '../models/assessment-info.model';
import { ExtendedDemographics } from '../models/demographics-cf.model';


const headers = {
  headers: new HttpHeaders().set('Content-Type', 'application/json'),
  params: new HttpParams()
};

@Injectable()
export class DemographicService {
  apiUrl: string;
  id: number;

  constructor(private http: HttpClient, private configSvc: ConfigService) {
    this.apiUrl = this.configSvc.apiUrl + 'Demographics/';
  }

  // calls to retrieve static data
  getAllSectors() {
    return this.http.get(this.apiUrl + 'Sectors');
  }

  getAllAssetValues() {
    return this.http.get(this.apiUrl + 'AssetValues');
  }

  getSizeValues() {
    return this.http.get(this.apiUrl + 'Size');
  }

  // calls to dependent data
  getIndustry(sectorId: number) {
    return this.http.get(this.apiUrl + 'Sectors_Industry/' + sectorId);
  }

  /**
   * GETs the screen data for this assessment.
   */
  getDemographic() {
    return this.http.get(this.apiUrl);
  }

  /**
   * POSTs the screen data to the API.
   * @param demographic
   */
  updateDemographic(demographic: Demographic) {
    this.http.post(this.apiUrl, JSON.stringify(demographic), headers)
    .subscribe();
  }



  //////    CF 

  getDemographicCf() {
    return this.http.get(this.apiUrl + 'cf');
  }

  getAllSectorsCf() {
    return this.http.get(this.apiUrl + 'cf/sectors');
  }

  getSubsectorCf(sectorId: number) {
    return this.http.get(this.apiUrl + 'cf/subsector/' + sectorId);
  }

  getRegions(state: string) {
    return this.http.get(this.apiUrl + 'cf/regions/' + state)
  }

  getCounties(state: string) {
    return this.http.get(this.apiUrl + 'cf/counties/' + state);
  }

  getEmployeeRanges() {
    return this.http.get(this.apiUrl + 'cf/employees');
  }

  getCustomerRanges() {
    return this.http.get(this.apiUrl + 'cf/customers');
  }

  getGeoScope() {
    return this.http.get(this.apiUrl + 'cf/geoscope');
  }

  getCio() {
    return this.http.get(this.apiUrl + 'cf/cio');
  }

  getCiso() {
    return this.http.get(this.apiUrl + 'cf/ciso');
  }

  getTraining() {
    return this.http.get(this.apiUrl + 'cf/training');
  }

  /**
   * Persist the model to the API.
   */
  updateExtendedDemographics(demographic: ExtendedDemographics) {
    this.http.post(this.configSvc.apiUrl + 'extendeddemographics', JSON.stringify(demographic), headers)
    .subscribe();
  }
}
