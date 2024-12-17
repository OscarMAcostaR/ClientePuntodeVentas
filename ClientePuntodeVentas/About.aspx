<%@ Page Title="Lista Empleados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ClientePuntodeVentas.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   


    <div class="container">
        <div class="row">
            <h3>Lista de Empleados</h3>
          
        </div>
        <div class="row">
            <asp:GridView ID="GVEmpleados" runat="server" CssClass="table table-bordered table-condensed table-striped" AutoGenerateColumns="false" DataKeyNames="id_empleado" OnRowCommand="GVEmpleados_RowCommand" OnRowDeleting="GVEmpleados_RowDeleting">

                <Columns>
                    <asp:BoundField DataField="id_empleado" HeaderText="id_empleado" ItemStyle-Width="50px" ReadOnly="true" />

                    <asp:BoundField DataField="nombre" HeaderText="Nombre" ItemStyle-Width="50px" ReadOnly="true" />

                    <asp:BoundField DataField="puesto" HeaderText="Puesto" ItemStyle-Width="50px" ReadOnly="true" />

                    <asp:BoundField DataField="telefono" HeaderText="Telefono" ItemStyle-Width="50px" ReadOnly="true" />

                    <asp:CommandField ButtonType="Button" HeaderText="Eliminar" ShowDeleteButton="true" ShowHeader="true" ControlStyle-CssClass="btn btn-danger btn-xs" ItemStyle-Width="50px" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

 </div>






</asp:Content>
