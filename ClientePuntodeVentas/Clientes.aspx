<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="ClientePuntodeVentas.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



     <div class="container">
    <div class="row">
        <h3>Clientes</h3>
      
    </div>
    <div class="row">
        <asp:GridView ID="GVClientes" runat="server" CssClass="table table-bordered table-condensed table-striped" AutoGenerateColumns="false" DataKeyNames="id_cliente" OnRowCommand="GVClientes_RowCommand">

            <Columns>
               
                <asp:BoundField DataField="id_cliente" HeaderText="id_cliente" ItemStyle-Width="50px" ReadOnly="true" />

                <asp:BoundField DataField="nombre" HeaderText="nombre" ItemStyle-Width="50px" ReadOnly="true" />

                <asp:BoundField DataField="direccion" HeaderText="direccion" ItemStyle-Width="50px" ReadOnly="true" />

                 <asp:BoundField DataField="telefono" HeaderText="telefono" ItemStyle-Width="50px" ReadOnly="true" />

                <asp:BoundField DataField="email" HeaderText="email" ItemStyle-Width="50px" ReadOnly="true" />

                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Editar" ShowHeader="true" Text="Editar" ControlStyle-CssClass="btn btn-primary btn-xs" ItemStyle-Width="50px" />


                 <asp:CommandField ButtonType="Button" HeaderText="Eliminar" ShowDeleteButton="true" ShowHeader="true" ControlStyle-CssClass="btn btn-danger btn-xs" ItemStyle-Width="50px" />

            </Columns>
        </asp:GridView>
    </div>
</div>










</asp:Content>
