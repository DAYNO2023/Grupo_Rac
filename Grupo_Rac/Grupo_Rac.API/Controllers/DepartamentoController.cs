using AutoMapper;
using Grupo_Rac.BusinessLogic.Servicios;
using Grupo_Rac.Common.Models;
using Grupo_Rac.Entities.Entity;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Grupo_Rac.API.Controllers
{
    [ApiController]
    [Route("API/[controller]")]
    public class DepartamentoController : Controller
    {
        private readonly GeneralService _generalService;
        private readonly IMapper _mapper;
        public DepartamentoController(GeneralService generalService, IMapper mapper)
        {
            _generalService = generalService;
            _mapper = mapper;
        }
        [HttpGet("List")]
        public IActionResult List()
        {
            var list = _generalService.ListDepto();
            return Ok(list.Data);
        }
        [HttpPost("Insert")]
        public IActionResult Create(DepartamentoViewModel item)
        {
            var model = _mapper.Map<tbDepartamento>(item);
            var modelo = new tbDepartamento()
            {
                Dep_Id = item.Dep_Id,
                Dep_Descripcion = item.Dep_Descripcion,
            };

            var list = _generalService.ListDepto();
            _generalService.InsertarDepto(modelo);
            return Ok(list);

        }
    }
}
