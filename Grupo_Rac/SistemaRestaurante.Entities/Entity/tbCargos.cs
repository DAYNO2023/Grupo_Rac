﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;

#nullable disable

namespace Grupo_Rac.Entities.Entity
{
    public partial class tbCargos
    {
        public tbCargos()
        {
            tbUsuarios = new HashSet<tbUsuarios>();
        }

        public int Crg_ID { get; set; }
        public string Crg_Descripcion { get; set; }
        public int Crg_Creacion { get; set; }
        public int? Crg_Modifica { get; set; }
        public DateTime Crg_Fecha_Creacion { get; set; }
        public DateTime? Crg_Fecha_Modifica { get; set; }
        public bool Crg_Estado { get; set; }

        public virtual tbUsuarios Crg_CreacionNavigation { get; set; }
        public virtual tbUsuarios Crg_ModificaNavigation { get; set; }
        public virtual ICollection<tbUsuarios> tbUsuarios { get; set; }
    }
}