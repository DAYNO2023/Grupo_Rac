﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;

#nullable disable

namespace Grupo_Rac.Entities.Entity
{
    public partial class tbMarcas
    {
        public tbMarcas()
        {
            tbModelos = new HashSet<tbModelos>();
        }

        public int Mar_Id { get; set; }
        public string Mar_Descripcion { get; set; }
        public int? Mar_Creacion { get; set; }
        public int? Mar_Modifica { get; set; }
        public DateTime Mar_Fecha_Creacion { get; set; }
        public DateTime? Mar_Fecha_Modifica { get; set; }
        public bool? Mar_Estado { get; set; }

        public virtual tbUsuarios Mar_CreacionNavigation { get; set; }
        public virtual tbUsuarios Mar_ModificaNavigation { get; set; }
        public virtual ICollection<tbModelos> tbModelos { get; set; }
    }
}