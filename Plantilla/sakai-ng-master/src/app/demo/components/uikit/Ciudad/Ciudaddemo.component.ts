import { Component, OnInit, ViewChild, ElementRef } from '@angular/core';
import { ConfirmationService, MessageService } from 'primeng/api';
import { Product } from 'src/app/demo/api/product';
import {Router} from '@angular/router';
import { Table } from 'primeng/table';
import {Ciudad} from 'src/app/Models/CiudadViewModel'
import { ServiceService } from 'src/app/Service/service.service';
@Component({
    templateUrl: './Departamentodemo.component.html',
    providers: [ConfirmationService, MessageService]
})
export class DepartamentoDemoComponent implements OnInit {
    ciudad!:Ciudad[];
   

    statuses: any[] = [];

    products: Product[] = [];

    rowGroupMetadata: any;


    activityValues: number[] = [0, 100];

    isExpanded: boolean = false;

    idFrozen: boolean = false;

    loading: boolean = false;

    @ViewChild('filter') filter!: ElementRef;

    constructor(private service: ServiceService, private router: Router
    
    ) { }
  

    ngOnInit(): void {
        this.service.getDepartamentos().subscribe((data: any)=>{
            console.log(data);
            this.ciudad = data;
        },error=>{
          console.log(error);
        });
     }
    
    
      
}

