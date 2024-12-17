using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClientePuntodeVentas.PuntoVentasSW;

namespace ClientePuntodeVentas
{
    public partial class _Default : Page
    {
        WebServicePuntodeVentasSoapClient _soapClient;
        protected void Page_Load(object sender, EventArgs e)
        {
            _soapClient = new WebServicePuntodeVentasSoapClient();
            if (!IsPostBack)
            {
                {
                   
                }
            }
          
       

        }

        protected void GVEmpleados_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}