////////////////////////////////
//
//   Copyright 2021 Battelle Energy Alliance, LLC
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
import { Component, Input, OnChanges, OnInit, } from '@angular/core';

@Component({
  selector: 'app-charts-donut',
  templateUrl: './charts-donut.component.html',
  styleUrls: ['../reports.scss']
})
export class ChartsDonutComponent implements OnInit, OnChanges {
  @Input()
  donutData: any;

  @Input()
  range: string[];

  levelNames = ['baseline', 'evolving', 'intermediate', 'advanced', 'innovative'];

  // options
  showLegend: boolean = false;
  showLabels: boolean = false;
  view: any[] = [600, 200];
  label: string = "Total %"

  minWidth: any = 100;
  colorScheme = {
    domain: ['#d9534f', '#f0ad4e', '#5cb85c', '#5bc0de', '#a8385d', '#aae3f5']
  };

  constructor(
  ) { }

  ngOnInit() {
  }

  onSelect(event) {
    // console.log(event);
  }


  /**
   * 
   * @returns 
   */
  ngOnChanges() {
    if (!this.range) {
      return;
    }
    
    let donutColors = this.getDonutColors(this.donutData);
    this.colorScheme.domain = donutColors;
    this.colorScheme = {...this.colorScheme};
  }


  /**
   * 
   * @param data 
   * @returns 
   */
  getDonutColors(data: any) {
    let colors = [];
    data.forEach(item => {
      if (item.value === 0) {
        if (this.outsideRange(item.name)) {
          // gray
          colors.push('#888888');
        } else {
          // red
          colors.push('#d9534f');
        }
      }
      else if (item.value > 0 && item.value < 100) {
        // yellow
        colors.push('#f0ad4e');
      }
      else if (item.value === 100) {
        // green
        colors.push('#5cb85c');
      }
      else {
        // cyan
        colors.push('#5bc0de');
      }
    });

    return colors;
  }

  /**
   * Indicates if a level is above the top of the defined range.
   */
  outsideRange(level: string) {
    if (!this.range) {
      return false;
    }
    const rangeTop = this.levelNames.indexOf(this.range[1].toLowerCase());
    const rangeMe = this.levelNames.indexOf(level.toLowerCase());
    return rangeMe > rangeTop;
  }
}
