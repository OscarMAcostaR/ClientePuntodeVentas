using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClientePuntodeVentas.PuntoVentasSW;

namespace ClientePuntodeVentas
{
    public partial class Clientes : System.Web.UI.Page
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
            GVClientes.DataSource = swpuntoventas.Get_Clientes(new ArrayOfAnyType { });
            GVClientes.DataBind();


        }

        protected void GVClientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int varIndex = int.Parse(e.CommandArgument.ToString());
                string id = GVClientes.DataKeys[varIndex].Values["id_cliente"].ToString();

            }
        }
    }
}