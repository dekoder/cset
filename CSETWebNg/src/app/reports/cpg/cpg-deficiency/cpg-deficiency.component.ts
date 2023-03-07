////////////////////////////////
//
//   Copyright 2023 Battelle Energy Alliance, LLC
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
import { Component, OnInit } from '@angular/core';
import { Title } from '@angular/platform-browser';
import { AssessmentService } from '../../../services/assessment.service';
import { ConfigService } from '../../../services/config.service';
import { CpgService } from '../../../services/cpg.service';
import { MaturityService } from '../../../services/maturity.service';
import { QuestionsService } from '../../../services/questions.service';
import { RraDataService } from '../../../services/rra-data.service';

@Component({
  selector: 'app-cpg-deficiency',
  templateUrl: './cpg-deficiency.component.html',
  styleUrls: ['./cpg-deficiency.component.scss', '../../reports.scss']
})
export class CpgDeficiencyComponent implements OnInit {

  loading = false;

  // catPracMap: Map<number, any[]> = new Map<number, any[]>(); // <grouping_Id, [ansText_S, ansText_N, ans_Text_U]>

  assessmentName: string;
  assessmentDate: string;
  assessorName: string;

  info: any;
  def: any;

  /**
   * 
   */
  constructor(
    public rraDataSvc: RraDataService,
    public titleSvc: Title,
    public maturitySvc: MaturityService,
    private assessSvc: AssessmentService,
    public questionsSvc: QuestionsService,
    public cpgSvc: CpgService,
    public configSvc: ConfigService
  ) { }

  /**
   * 
   */
  ngOnInit(): void {
    this.titleSvc.setTitle("CPGs Deficiency - CSET");

    this.maturitySvc.getMaturityDeficiency('CPG').subscribe((resp: any) => {
      console.log(resp)
      this.info = resp.information;
      this.def = resp.deficienciesList;

      this.assessmentName = this.info.assessment_Name;
      this.assessmentDate = this.info.assessment_Date;
      this.assessorName = this.info.assessor_Name;

      this.loading = true;

      // for(let i = 0; i < def.length; i++) {
      //   let ansText = def[i].answer.answer_Text;
      //   let questInfo = def[i].mat;

      //   if (!this.catPracMap.has(questInfo.grouping_Id)) {
          
      //   } else {
      //     let currCatArray = this.catPracMap.get(questInfo.grouping_Id);
      //     currCatArray.push();
      //   }
        
      // }
    })
  }

  colorSwitcher(color: string) {
    switch(color){
      case 'S':
        return 'scoped-background';
      case 'N':
        return 'not-background';
      // case 'S':
      //   return 'scoped-background';
            
    }
  }
}
