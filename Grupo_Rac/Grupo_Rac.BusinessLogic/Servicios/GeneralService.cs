using GestionEmergencias.BussinesLogic;
using Grupo_Rac.DataAccess.Repositorio;
using Grupo_Rac.Entities.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Grupo_Rac.BusinessLogic.Servicios
{
    public class GeneralService
    {
        private readonly DepartamentoRepositorio _departamentoRepositorio;
        public GeneralService(DepartamentoRepositorio departamentoRepositorio)
        {
            _departamentoRepositorio = departamentoRepositorio;
        }

        #region Departamento

        public ServiceResult ListDepto()
        {
            var result = new ServiceResult();
            try
            {
                var lost = _departamentoRepositorio.List();
                return result.Ok(lost);
            }
            catch (Exception ex)
            {
                return result.Error(ex.Message);
            }
        }
        public ServiceResult InsertarDepto(tbDepartamento item)
        {
            var resul = new ServiceResult();
            try
            {
                var lost = _departamentoRepositorio.Insertar(item);
                if (lost.CodeStatus > 0)
                {
                    return resul.Ok(lost);
                }
                else
                {
                    lost.MessageStatus = (lost.CodeStatus == 0) ? "401 error de consulta" : lost.MessageStatus;
                    return resul.Error(lost);
                }
            }
            catch (Exception ex)
            {
                return resul.Error(ex.Message);
            }
        }



        //public ServiceResult ActualizarDepto(tbDepartamento item)
        //{
        //    var resul = new ServiceResult();
        //    try
        //    {
        //        var lost = _departamentoRepositorio.Update(item);
        //        if (lost.CodeStatus > 0)
        //        {
        //            return resul.Ok(lost);
        //        }
        //        else
        //        {
        //            lost.MessageStatus = (lost.CodeStatus == 0) ? "401 error de consulta" : lost.MessageStatus;
        //            return resul.Error(lost);
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return resul.Error(ex.Message);
        //    }
        //}


        //public ServiceResult EliminarDepto(string Dept_Id)
        //{
        //    var resul = new ServiceResult();
        //    try
        //    {
        //        var lost = _departamentoRepositorio.DeleteS(Dept_Id);
        //        if (lost.CodeStatus > 0)
        //        {
        //            return resul.Ok(lost);
        //        }
        //        else
        //        {
        //            return resul.Error(lost);
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return resul.Error(ex.Message);
        //    }
        //}


        //public ServiceResult DetallesDepto(string Dept_Id)
        //{
        //    var resul = new ServiceResult();
        //    try
        //    {
        //        var lost = _departamentoRepositorio.findS(Dept_Id);
        //        return resul.Ok(lost);

        //    }
        //    catch (Exception ex)
        //    {
        //        return resul.Error(ex.Message);
        //    }
        //}
        #endregion
    }
}
