<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClientePuntodeVentas._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

         <div class="container">
    <div class="row">
        <h3>Empleados</h3>
      
    </div>
    <div class="row">
        <asp:GridView ID="GVEmpleados" runat="server" CssClass="table table-bordered table-condensed table-striped" AutoGenerateColumns="false" DataKeyNames="id_empleado" OnRowCommand="GVEmpleados_RowCommand">

            <Columns>
               
                <asp:BoundField DataField="id_empleado" HeaderText="id_empleado" ItemStyle-Width="50px" ReadOnly="true" />

                <asp:BoundField DataField="nombre" HeaderText="nombre" ItemStyle-Width="50px" ReadOnly="true" />

                <asp:BoundField DataField="puesto" HeaderText="puesto" ItemStyle-Width="50px" ReadOnly="true" />

                 <asp:BoundField DataField="telefono" HeaderText="telefono" ItemStyle-Width="50px" ReadOnly="true" />

                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Editar" ShowHeader="true" Text="Editar" ControlStyle-CssClass="btn btn-primary btn-xs" ItemStyle-Width="50px" />


                 <asp:CommandField ButtonType="Button" HeaderText="Eliminar" ShowDeleteButton="true" ShowHeader="true" ControlStyle-CssClass="btn btn-danger btn-xs" ItemStyle-Width="50px" />

            </Columns>
        </asp:GridView>
    </div>
</div>
           

</asp:Content>
