<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="ClientePuntodeVentas.Producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container">
     <div class="row">
         <div class="col-md-12">
             <div class="form-group">

                 <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
                 <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>

                 <asp:Label ID="lblPrecio" runat="server" Text="Precio"></asp:Label>
                 <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control"></asp:TextBox>

                 <asp:Label ID="lblStock" runat="server" Text="Stock"></asp:Label>
                 <asp:TextBox ID="txtStock" runat="server" CssClass="form-control"></asp:TextBox>

                 <asp:Label ID="Label1" runat="server" Text="Stock"></asp:Label>
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                 <asp:Button ID="btnguardar" CssClass="btn btn-primary" runat="server" Text="Guardar" OnClick="btnguardar_Click" />


             </div>
         </div>
     </div>
</div>




</asp:Content>
