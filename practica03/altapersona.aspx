<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altapersona.aspx.cs" Inherits="practica03.altapersona" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Alta Personas</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />    
    <script src="Scripts/jquery-2.1.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>

    <h1>Alta Personas</h1>
    
    <form id="form1" runat="server" role="form">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row" style="padding-left: 10px;">            
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label CssClass="control-label" Text="Numero Registro" ID="lblID" runat="server" AssociatedControlID="txtID"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtID" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label CssClass="control-label" Text="Nombre" ID="lblNombre" runat="server" AssociatedControlID="txtNombre"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label CssClass="control-label" Text="Apellidos" ID="lblApellidos" runat="server" AssociatedControlID="txtApellidos"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtApellidos" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label CssClass="control-label" Text="Fecha de Matriculacion" ID="lblFecha1" runat="server" AssociatedControlID="txtFecha1"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtFecha1" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label CssClass="control-label" Text="Fecha de Contratacion" ID="lblFecha2" runat="server" AssociatedControlID="txtFecha2"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtFecha2" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-1">
                <div class="form-group">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Añadir"   />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
             </div>
        </div>

        <div style="padding:20px;">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
            <ContentTemplate>
            <div class="row" style="padding: 10px;">
                <asp:GridView CssClass="table-bordered table-hover table table-responsive" ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No hay datos añadidos" GridLines="None" ShowHeaderWhenEmpty="True" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <Columns>
                        <asp:BoundField HeaderText="Numero Registro" DataField="id" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Nombre" DataField="FirstName" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Apellidos" DataField="LastName" >
                        <ItemStyle Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Fecha de Contratacion" DataField="HireDate" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="EnrollmentDate" HeaderText="Fecha de Matriculacion" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                    </Columns>
                    <HeaderStyle BackColor="#000066" ForeColor="White" />
                </asp:GridView>
                </ContentTemplate>            
            </asp:UpdatePanel>
        </div>

        <div class="container" style="text-align:right">

            <asp:Button CssClass="btn btn-success" ID="Button2"
                 runat="server" Text="Guardar" />
            <asp:Button CssClass="btn btn-danger" ID="Button3" 
                runat="server" Text="Cancelar"
                OnClientClick="return confirm('¿Esta seguro?');" />
        </div>
        
    </form>

</body>
</html>
