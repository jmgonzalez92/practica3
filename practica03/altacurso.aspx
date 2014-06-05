<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altacurso.aspx.cs" Inherits="practica03.altacurso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Alta Cursos</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />    
    <script src="Scripts/jquery-2.1.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    
    <h1>Alta Cursos</h1>
    
    <form id="form1" runat="server" role="form">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row" style="padding-left: 10px;">            
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label CssClass="control-label" Text="ID Curso" ID="lblIDCurso" runat="server" AssociatedControlID="txtIDCurso"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtIDCurso" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label CssClass="control-label" Text="Curso" ID="lblCurso" runat="server" AssociatedControlID="txtCurso"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtCurso" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label CssClass="control-label" Text="Creditos" ID="lblCreditos" runat="server" AssociatedControlID="txtCreditos"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtCreditos" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                    <asp:Label CssClass="control-label" Text="ID Departamento" ID="lblFecha1" runat="server" AssociatedControlID="txtIDDepartamento"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txtIDDepartamento" runat="server"></asp:TextBox>
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
                        <asp:BoundField HeaderText="ID Curso" DataField="CourseID" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Curso" DataField="Title" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Creditos" DataField="Credits" >
                        <ItemStyle Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField HeaderText="ID Departamento" DataField="DepartmentID" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:ButtonField Text="Eliminar">
                        <ItemStyle Width="150px" />
                        </asp:ButtonField>
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
