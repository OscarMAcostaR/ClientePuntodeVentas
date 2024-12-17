<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="ClientePuntodeVentas.Ventas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
       <div class="row">
           <h3>Ventas</h3>
         
       </div>
       <div class="row">
           <asp:GridView ID="GVDVenta" runat="server" CssClass="table table-bordered table-condensed table-striped" AutoGenerateColumns="false" DataKeyNames="id_venta" OnRowCommand="GVDVenta_RowCommand">

               <Columns>
                  
                   <asp:BoundField DataField="id_venta" HeaderText="id_venta" ItemStyle-Width="50px" ReadOnly="true" />

                   <asp:BoundField DataField="id_cliente" HeaderText="id_cliente" ItemStyle-Width="50px" ReadOnly="true" />

                   <asp:BoundField DataField="id_empleado" HeaderText="id_empleado" ItemStyle-Width="50px" ReadOnly="true" />

                    <asp:BoundField DataField="fecha_venta" HeaderText="fecha_venta" ItemStyle-Width="50px" ReadOnly="true" />

                   <asp:BoundField DataField="total" HeaderText="total" ItemStyle-Width="50px" ReadOnly="true" />

                   <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Editar" ShowHeader="true" Text="Editar" ControlStyle-CssClass="btn btn-primary btn-xs" ItemStyle-Width="50px" />
               </Columns>
           </asp:GridView>
       </div>
   </div>




</asp:Content>
