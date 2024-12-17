﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClientePuntodeVentas.PuntoVentasSW;

namespace ClientePuntodeVentas
{
    public partial class Contact : Page
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
            GVDetVentas.DataSource = swpuntoventas.Get_Detalle(new ArrayOfAnyType { });
            GVDetVentas.DataBind();


        }


        protected void GVDetVenta_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int varIndex = int.Parse(e.CommandArgument.ToString());
                string id = GVDetVentas.DataKeys[varIndex].Values["id_detalle"].ToString();

            }

        }
    }
}