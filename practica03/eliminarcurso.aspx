<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eliminarcurso.aspx.cs" Inherits="practica03.eliminarcurso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"></asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Borrar" />
    </div>
    </form>
</body>
</html>
