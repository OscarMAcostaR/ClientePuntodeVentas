using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClientePuntodeVentas.PuntoVentasSW;
using ClientePuntodeVentas.utilidades;
using ClientePuntodeVentas.utilidades;

namespace ClientePuntodeVentas
{
    public partial class About : Page
    {
        WebServicePuntodeVentasSoapClient swpuntoventas;
        protected void Page_Load(object sender, EventArgs e)
        {
            swpuntoventas = new WebServicePuntodeVentasSoapClient();
            if (!IsPostBack)
            {
                {
                    cargarGrid();
                }
            }

        }
        public void cargarGrid()
        {
            // Defino si el comando que se detecta tiene la propiedad tiene select


           

            int _id = Convert.ToInt32(Request.QueryString["id"]);
            GVEmpleados.DataSource = swpuntoventas.Get_Empleados(new ArrayOfAnyType { });
            GVEmpleados.DataBind();


        }



        protected void GVEmpleados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int varIndex = int.Parse(e.CommandArgument.ToString());
                string id = GVEmpleados.DataKeys[varIndex].Values["id_empleado"].ToString();

            }


        }

        protected void GVEmpleados_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int idEmpleado = int.Parse(GVEmpleados.DataKeys[e.RowIndex].Values["id_empleado"].ToString());
            string respuesta = swpuntoventas.Eliminar_Empleados(idEmpleado);
            string titulo, msg, tipo;
            if (respuesta.ToUpper().Contains("ERROR"))
            {
                titulo = "Ops...";
                msg = respuesta;
                tipo = "error";
            }
            else
            {
                titulo = "Correcto!";
                msg = respuesta;
                tipo = "success";
            }
            sweetAlert.Sweet_Alert(titulo, msg, tipo, this.Page, this.GetType());
            cargarGrid();
        }
    }
}