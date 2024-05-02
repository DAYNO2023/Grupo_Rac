// Importación de módulos de Angular y PrimeNG
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { ChartModule } from 'primeng/chart';        // Módulo para gráficos
import { MenuModule } from 'primeng/menu';          // Módulo para menús
import { TableModule } from 'primeng/table';        // Módulo para tablas
import { ButtonModule } from 'primeng/button';      // Módulo para botones
import { StyleClassModule } from 'primeng/styleclass';  // Módulo para clases de estilo
import { PanelMenuModule } from 'primeng/panelmenu';    // Módulo para menús de panel

// Componente y enrutamiento del dashboard
import { DashboardComponent } from './dashboard.component';
import { DashboardsRoutingModule } from './dashboard-routing.module';



@NgModule({
    declarations: [
        DashboardComponent  // Declaración del componente Dashboard
    ],
    imports: [
        CommonModule,        // Importación de CommonModule para funcionalidades comunes de Angular
        FormsModule,         // Importación de FormsModule para formularios
        ChartModule,         // Importación de ChartModule para usar gráficos de PrimeNG
        MenuModule,          // Importación de MenuModule para usar menús de PrimeNG
        TableModule,         // Importación de TableModule para usar tablas de PrimeNG
        ButtonModule,        // Importación de ButtonModule para usar botones de PrimeNG
        StyleClassModule,    // Importación de StyleClassModule para manejo de clases CSS
        PanelMenuModule,     // Importación de PanelMenuModule para menús de panel
        DashboardsRoutingModule  // Importación del módulo de enrutamiento para el dashboard
    ]
})
export class DashboardModule {}
