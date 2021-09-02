﻿using CSETWebCore.Reports.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Threading.Tasks;
using CSETWebCore.Business.Authorization;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Mvc.ViewEngines;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using CSETWebCore.Interfaces.Assessment;
using CSETWebCore.Interfaces.Helpers;
using CSETWebCore.Interfaces.Maturity;
using CSETWebCore.Model.Edm;

namespace CSETWebCore.Reports.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IViewEngine _engine;
        private readonly ITokenManager _token;
        private readonly IAssessmentBusiness _assessment;
        private readonly IMaturityBusiness _maturity;

        public HomeController(ILogger<HomeController> logger, IViewEngine engine, ITokenManager token, 
            IAssessmentBusiness assessment, IMaturityBusiness maturity)
        {
            _logger = logger;
            _engine = engine;
            _token = token;
            _assessment = assessment;
            _maturity = maturity;
        }

        public IActionResult Index()
        {
            ViewData.Model = GetCssLinks();
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [HttpGet]
        public IActionResult CrrReport()
        {
            int assessmentId = 5390;
            var detail = _assessment.GetAssessmentDetail(assessmentId);
            var scores = (List<EdmScoreParent>)_maturity.GetEdmScores(assessmentId, "MIL");
            return View(new CrrViewModel(detail, scores));
        }

        private CrrViewModel GetCrrModel(int assessmentId)
        {
            var detail = _assessment.GetAssessmentDetail(assessmentId);
            var scores = (List<EdmScoreParent>)_maturity.GetEdmScores(assessmentId, "MIL");
            return new CrrViewModel(detail, scores);
        }


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        [CsetAuthorize]
        [HttpGet]
        [Route("getPdf")]
        public async Task<IActionResult> CreatePdf(string view)
        {
            var assessmentId = _token.AssessmentForUser();
            var report = await CreateHtmlString("CrrReport", assessmentId);
            var renderer = new IronPdf.ChromePdfRenderer();
            var pdf = renderer.RenderHtmlAsPdf(report);
            return File(pdf.BinaryData,"application/pdf", "test.pdf");
        }

        private async Task<string> CreateHtmlString(string view, int assessmentId)
        {
            TempData["links"] = GetCssLinks();
            ViewData.Model = GetCrrModel(assessmentId);
            await using var sw = new StringWriter();
            var viewResult = _engine.FindView(ControllerContext, view, false);
            var viewContext = new ViewContext(ControllerContext, viewResult.View,
                ViewData, TempData, sw, new HtmlHelperOptions());
            await viewResult.View.RenderAsync(viewContext);
            string report = sw.GetStringBuilder().ToString();
           
            return report;
        }

        private string GetCssLinks()
        {
            var url = string.Format("{0}://{1}", Request.Scheme, Request.Host.ToUriComponent());
            return url;
        }
    }
}
