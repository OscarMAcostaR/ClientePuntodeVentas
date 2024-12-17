using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClientePuntodeVentas.PuntoVentasSW;

namespace ClientePuntodeVentas
{
    public partial class Producto : System.Web.UI.Page
    {
        WebServicePuntodeVentasSoapClient swpuntoventas;
        protected void Page_Load(object sender, EventArgs e)
        {
            swpuntoventas = new WebServicePuntodeVentasSoapClient();
            if (!IsPostBack)
            {
                {
                   
                }
            }
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            string titulo = "", respuesta = "", tipo = "", salida = "";
            string Nombre = "";
            double Precio = 0;
            int Stock  = 0;


            Nombre = txtNombre.Text; 
            Precio = double.Parse(txtPrecio.Text);
            Stock = int.Parse(txtStock.Text);

           
            


        }
    }
}