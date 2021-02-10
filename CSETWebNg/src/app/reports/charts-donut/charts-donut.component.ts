////////////////////////////////
//
//   Copyright 2020 Battelle Energy Alliance, LLC
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
// adding comp:     <app-charts-donut [donutData]="donutData"></app-charts-donut>
// donutData format => donutData = [{"name": "coolness", "value": 50 }]
////////////////////////////////
import { Component, Input, OnInit, } from '@angular/core';

@Component({
  selector: 'app-charts-donut',
  templateUrl: './charts-donut.component.html', 
  styleUrls: ['../reports.scss']
})
export class ChartsDonutComponent implements OnInit {
  @Input()
  donutData: any;

  // options
  showLegend: boolean = false;
  showLabels: boolean = false;
  view: any[] = [600,200];
  
  minWidth: any = 100;
  colorScheme = {
    domain: ['green', 'yellow', 'red', '#7aa3e5', '#a8385d', '#aae3f5']
  };

  constructor(
  ) { }

  ngOnInit() {
    let donutColors = this.getDonutColors(this.donutData);
    this.colorScheme.domain = donutColors;
  }

  onSelect(event) {
    console.log(event);
  }

  getDonutColors(data: any){
    let colors = [];
    data.forEach(item => {
      if (item.value === 0){
        colors.push('red');
      }
      else if (item.value > 0 && item.value < 100) {
        colors.push('yellow');
      }
      else if (item.value === 100) {
        colors.push('green');
      }
      else {
        colors.push('gray');
      }

    });
    return colors;
  }

}
