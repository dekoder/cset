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
import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { DiagramService } from '../../../../services/diagram.service';
import { Sort } from "@angular/material/sort";
import { Comparer } from '../../../../helpers/comparer';
import { MatDialog } from '@angular/material/dialog';
import { DiagramVulnerabilitiesDialogComponent } from './diagram-vulnerabilities-dialog/diagram-vulnerabilities-dialog';

export interface Vendor {
  name: string;
  products: Product[];
}

export interface Product {
  name: string;
  vulnerabilities: Vulnerability[];
  versions: { name: string; product_Id: string }[]
}

interface Vulnerability {
  cve: string;
  cwe: any;
  notes: any[];
  product_Status: any;
  references: any[];
  remediations: any[];
  scores: any[];
  title: string;
}

@Component({
  selector: 'app-diagram-vulnerabilities',
  templateUrl: './diagram-vulnerabilities.component.html',
  styleUrls: ['./diagram-vulnerabilities.component.scss']
})
export class DiagramVulnerabilitiesComponent implements OnInit {

  diagramComponentList: any[] = [];

  @Output()
  componentsChange = new EventEmitter<any>();

  comparer: Comparer = new Comparer();
  sal: any;
  criticality: any;
  vendors: Vendor[] = [];

  /**
   *
   */
  constructor(
    public diagramSvc: DiagramService,
    private dialog: MatDialog
  ) { }

  /**
   *
   */
  ngOnInit() {
    this.diagramSvc.getVulnerabilities().subscribe((vendors: Vendor[]) => {
      this.vendors = vendors;
      this.getComponents();
    })

  }

  /**
   *
   */
  getComponents() {
    this.diagramSvc.getDiagramComponents().subscribe((x: any) => {
      this.diagramComponentList = x;
      this.diagramComponentList.forEach(component => {
        this.updateComponentVendor(component);
      })
      this.componentsChange.emit(this.diagramComponentList);
    });
  }

  saveComponent(component) {
    this.updateComponentVendor(component);
    this.diagramSvc.saveComponent(component).subscribe();
  }

  showVulnerabilities(component) {
    this.dialog.open(DiagramVulnerabilitiesDialogComponent, {
      data: { product: component.vendor.products.find(p => p.name === component.productName), vendor: component.vendor }
    });
  }

  sortData(sort: Sort) {

    if (!sort.active || sort.direction === "") {
      return;
    }

    this.diagramComponentList.sort((a, b) => {
      const isAsc = sort.direction === "asc";
      switch (sort.active) {
        case "label":
          return this.comparer.compare(a.label, b.label, isAsc);
        case "assetType":
          return this.comparer.compare(a.assetType, b.assetType, isAsc);
        case "vendorName":
          return this.comparer.compareBool(a.vendorName, b.vendorName, isAsc);
        case "productName":
          return this.comparer.compareBool(a.productName, b.productName, isAsc);
        case "version":
          return this.comparer.compareBool(a.versionName, b.versionName, isAsc);
        case "serialNumber":
          return this.comparer.compareBool(a.serialNumber, b.serialNumber, isAsc);
        case "physicalLocation":
          return this.comparer.compareBool(a.physicalLocation, b.physicalLocation, isAsc);
        default:
          return 0;
      }
    });
  }

  updateComponentVendor(component) {
    if (!component.vendorName) {
      return;
    }

    component.vendor = this.vendors.find(v => v.name === component.vendorName);
  }
}
