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
import { DiagramService } from '../../../../services/diagram.service';
import { Sort } from "@angular/material/sort";
import { Comparer } from '../../../../helpers/comparer';


@Component({
  selector: 'shapes',
  templateUrl: './shapes.component.html',
  styleUrls: ['./shapes.component.scss']
})
export class ShapesComponent implements OnInit {
  shapes = [];

  /**
  * A flattened list of all the component symbols CSET supports
  */
  symbols: any[];
  displayedColumns = ['label', 'color', 'layer', 'visible'];
  newComponent: any = {'componentGuid':'', 'assetType':''};
  comparer: Comparer = new Comparer();


  constructor(public diagramSvc: DiagramService) { }

  ngOnInit() {
    this.getShapes();
    this.getSymbols();
  }

  getShapes() {
    this.diagramSvc.getDiagramShapes().subscribe((x: any) => {
      this.shapes = x;
    });
  }

  /**
   * Gets the full list of symbols so that we 
   * can build SELECT controls for Asset Type.
   */
  getSymbols() {
    this.diagramSvc.getSymbols().subscribe((g: any) => {
      this.symbols = [];
      this.symbols.push( // inserts a default blank object in the beginning 
        {
          'abbreviation': null, 
          'componentFamilyName': null,
          'component_Symbol_Id': null,
          'fileName': '',
          'height': 0,
          'search_Tags': null,
          'symbol_Name': '',
          'width': 0
      });

      g.forEach(gg => {
        gg.symbols.forEach(s => {            
          this.symbols.push(s);
        });
      });

      this.symbols.sort((a, b) => a.symbol_Name.localeCompare(b.symbol_Name));
    });
  }

  changeShapeToComponent(event: any, id: string, label: string) {
    this.diagramSvc.changeShapeToComponent(event.target.value, id, label).subscribe(
      (r: any) =>
        {
          this.getShapes();
        }
    );

  }

  sortData(sort: Sort) {

    if (!sort.active || sort.direction === "") {
      return;
    }

    this.shapes.sort((a, b) => {
      const isAsc = sort.direction === "asc";
      switch (sort.active) {
        case "label":
          return this.comparer.compare(a.value, b.value, isAsc);
        case "layer":
          return this.comparer.compare(a.layerName, b.layerName, isAsc);
        case "visible":
          return this.comparer.compareBool(a.visible, b.visible, isAsc);
        default:
          return 0;
      }
    });
  }

  parseShapeType(shape: any) {
    if (shape.value != null && shape.value != '') {
      return shape.value; // if a name is already assigned, use it
    }

    let style = shape.style;
    let startOfShape = style.indexOf('=') + 1; // first index of the shape type
    let endOfShape = style.indexOf(';');

    return style.substring(startOfShape, endOfShape); // e.g. 'shape=ellipse;' grabs 'ellipse'
  }
}
