<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="PruebaAppWebForm.Productos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  
    <title>Productos</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" >
</head>
<body>
   
    <div class="container">
  <form class="form-horizontal" style="margin-top:10%" runat="server">
  <div class="row">
    <div class="form-group col-md-4">
        <asp:Label ID="Label1" runat="server"  Text="Producto"></asp:Label>
        <asp:TextBox ID="ProductName" CssClass="form-control"  runat="server"></asp:TextBox>
    </div>
    <div class="form-group col-md-4">
        <asp:Label ID="Label2" runat="server" Text="Cantidad"></asp:Label>
        <asp:TextBox ID="QuantityPrduct" CssClass="form-control"  runat="server"></asp:TextBox>
    </div>
     <div class="form-group col-md-4">
        <asp:Label ID="Label3" runat="server" Text="Precio"></asp:Label>
        <asp:TextBox ID="PriceProduct" CssClass="form-control"  runat="server"></asp:TextBox>
    </div>
      </div>
      <div class="row">
     <div class="form-group col-md-4">
        <asp:Label ID="Label4" runat="server" Text="Optiones"></asp:Label>       
             <asp:DropDownList id="ListOtion" CssClass="form-control"  AutoPostBack="True"  runat="server">
                   <asp:ListItem Value="0"> Seleccione </asp:ListItem>
                   <asp:ListItem Value="1"> Favorito </asp:ListItem>
                   <asp:ListItem Value="2"> Carrito </asp:ListItem>
             </asp:DropDownList>
    </div>
   </div>
 

       
     
 
      <div class="row">
 <div class="form-group col-md-6">
              <asp:Label ID="Label5" runat="server" Text="Favorito"></asp:Label>
              <asp:ListBox ID="ListFavoritos" CssClass="form-control"  runat="server" Rows="5"></asp:ListBox>
         </div>
          <div class="form-group col-md-6">
              <asp:Label ID="Label6" runat="server"   Text="Carrito"></asp:Label>
              <asp:ListBox ID="ListCarritos" CssClass="form-control" runat="server" Rows="5"></asp:ListBox>
            
          <div class="form-group">
          <asp:TextBox ID="SubTotal" CssClass="form-control"  runat="server"></asp:TextBox>
              </div>
                </div>
      </div>
             <div class="form-group col-md-1">
           <asp:Button ID="Add" runat="server" CssClass="form-control"  Text="Agregar" OnClick="Button1_Click" />
    </div>
</form>
</div>

</body>
</html>
