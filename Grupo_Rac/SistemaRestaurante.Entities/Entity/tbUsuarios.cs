﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;

#nullable disable

namespace Grupo_Rac.Entities.Entity
{
    public partial class tbUsuarios
    {
        public tbUsuarios()
        {
            InverseUsu_UsuCreNavigation = new HashSet<tbUsuarios>();
            InverseUsu_UsuModiNavigation = new HashSet<tbUsuarios>();
            tbCargosCrg_CreacionNavigation = new HashSet<tbCargos>();
            tbCargosCrg_ModificaNavigation = new HashSet<tbCargos>();
            tbCiudadesCiu_CreacionNavigation = new HashSet<tbCiudades>();
            tbCiudadesCiu_ModificaNavigation = new HashSet<tbCiudades>();
            tbClientesCli_CreacionNavigation = new HashSet<tbClientes>();
            tbClientesCli_ModificaNavigation = new HashSet<tbClientes>();
            tbComprasCom_CreacionNavigation = new HashSet<tbCompras>();
            tbComprasCom_ModificaNavigation = new HashSet<tbCompras>();
            tbDepartamentoDep_CreacionNavigation = new HashSet<tbDepartamento>();
            tbDepartamentoDep_ModificaNavigation = new HashSet<tbDepartamento>();
            tbEstadosCivilesEst_UsuCreNavigation = new HashSet<tbEstadosCiviles>();
            tbEstadosCivilesEst_UsuModiNavigation = new HashSet<tbEstadosCiviles>();
            tbMarcasMar_CreacionNavigation = new HashSet<tbMarcas>();
            tbMarcasMar_ModificaNavigation = new HashSet<tbMarcas>();
            tbModelosMod_CreacionNavigation = new HashSet<tbModelos>();
            tbModelosMod_ModificaNavigation = new HashSet<tbModelos>();
            tbPantallasPtl_CreacionNavigation = new HashSet<tbPantallas>();
            tbPantallasPtl_ModificaNavigation = new HashSet<tbPantallas>();
            tbPantallas_PorRolesPaR_CreacionNavigation = new HashSet<tbPantallas_PorRoles>();
            tbPantallas_PorRolesPaR_ModificaNavigation = new HashSet<tbPantallas_PorRoles>();
            tbRolesRol_CreacionNavigation = new HashSet<tbRoles>();
            tbRolesRol_ModificaNavigation = new HashSet<tbRoles>();
            tbSedesSed_CreacionNavigation = new HashSet<tbSedes>();
            tbSedesSed_ModificaNavigation = new HashSet<tbSedes>();
            tbVehiculosVeh_CreacionNavigation = new HashSet<tbVehiculos>();
            tbVehiculosVeh_ModificaNavigation = new HashSet<tbVehiculos>();
            tbVentasDetalleVeD_CreacionNavigation = new HashSet<tbVentasDetalle>();
            tbVentasDetalleVeD_ModificaNavigation = new HashSet<tbVentasDetalle>();
            tbVentasEncVeE_CreacionNavigation = new HashSet<tbVentasEnc>();
            tbVentasEncVeE_ModificaNavigation = new HashSet<tbVentasEnc>();
        }

        public int Usu_ID { get; set; }
        public string Usu_Nombre { get; set; }
        public string Usu_Apellido { get; set; }
        public string Usu_Sexo { get; set; }
        public DateTime? Usu_FechaNacimiento { get; set; }
        public string Usu_Telefono { get; set; }
        public string Usu_Usua { get; set; }
        public bool? Usu_Admin { get; set; }
        public int? Usu_UsuCre { get; set; }
        public int? Usu_UsuModi { get; set; }
        public DateTime? Usu_FechaCreacion { get; set; }
        public DateTime? Usu_FechaModifica { get; set; }
        public int? Usu_Estado { get; set; }
        public byte[] Usu_Contra { get; set; }
        public int? Est_Id { get; set; }
        public int? Sed_Id { get; set; }
        public int? Crg_Id { get; set; }
        public int? Rol_Id { get; set; }

        public string Usu_Codigo { get; set; }

        public virtual tbCargos Crg { get; set; }
        public virtual tbEstadosCiviles Est { get; set; }
        public virtual tbRoles Rol { get; set; }
        public virtual tbSedes Sed { get; set; }
        public virtual tbUsuarios Usu_UsuCreNavigation { get; set; }
        public virtual tbUsuarios Usu_UsuModiNavigation { get; set; }
        public virtual ICollection<tbUsuarios> InverseUsu_UsuCreNavigation { get; set; }
        public virtual ICollection<tbUsuarios> InverseUsu_UsuModiNavigation { get; set; }
        public virtual ICollection<tbCargos> tbCargosCrg_CreacionNavigation { get; set; }
        public virtual ICollection<tbCargos> tbCargosCrg_ModificaNavigation { get; set; }
        public virtual ICollection<tbCiudades> tbCiudadesCiu_CreacionNavigation { get; set; }
        public virtual ICollection<tbCiudades> tbCiudadesCiu_ModificaNavigation { get; set; }
        public virtual ICollection<tbClientes> tbClientesCli_CreacionNavigation { get; set; }
        public virtual ICollection<tbClientes> tbClientesCli_ModificaNavigation { get; set; }
        public virtual ICollection<tbCompras> tbComprasCom_CreacionNavigation { get; set; }
        public virtual ICollection<tbCompras> tbComprasCom_ModificaNavigation { get; set; }
        public virtual ICollection<tbDepartamento> tbDepartamentoDep_CreacionNavigation { get; set; }
        public virtual ICollection<tbDepartamento> tbDepartamentoDep_ModificaNavigation { get; set; }
        public virtual ICollection<tbEstadosCiviles> tbEstadosCivilesEst_UsuCreNavigation { get; set; }
        public virtual ICollection<tbEstadosCiviles> tbEstadosCivilesEst_UsuModiNavigation { get; set; }
        public virtual ICollection<tbMarcas> tbMarcasMar_CreacionNavigation { get; set; }
        public virtual ICollection<tbMarcas> tbMarcasMar_ModificaNavigation { get; set; }
        public virtual ICollection<tbModelos> tbModelosMod_CreacionNavigation { get; set; }
        public virtual ICollection<tbModelos> tbModelosMod_ModificaNavigation { get; set; }
        public virtual ICollection<tbPantallas> tbPantallasPtl_CreacionNavigation { get; set; }
        public virtual ICollection<tbPantallas> tbPantallasPtl_ModificaNavigation { get; set; }
        public virtual ICollection<tbPantallas_PorRoles> tbPantallas_PorRolesPaR_CreacionNavigation { get; set; }
        public virtual ICollection<tbPantallas_PorRoles> tbPantallas_PorRolesPaR_ModificaNavigation { get; set; }
        public virtual ICollection<tbRoles> tbRolesRol_CreacionNavigation { get; set; }
        public virtual ICollection<tbRoles> tbRolesRol_ModificaNavigation { get; set; }
        public virtual ICollection<tbSedes> tbSedesSed_CreacionNavigation { get; set; }
        public virtual ICollection<tbSedes> tbSedesSed_ModificaNavigation { get; set; }
        public virtual ICollection<tbVehiculos> tbVehiculosVeh_CreacionNavigation { get; set; }
        public virtual ICollection<tbVehiculos> tbVehiculosVeh_ModificaNavigation { get; set; }
        public virtual ICollection<tbVentasDetalle> tbVentasDetalleVeD_CreacionNavigation { get; set; }
        public virtual ICollection<tbVentasDetalle> tbVentasDetalleVeD_ModificaNavigation { get; set; }
        public virtual ICollection<tbVentasEnc> tbVentasEncVeE_CreacionNavigation { get; set; }
        public virtual ICollection<tbVentasEnc> tbVentasEncVeE_ModificaNavigation { get; set; }
    }
}