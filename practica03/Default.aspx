<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="practica03.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gestion de Personas y Cursos</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.1.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="jumbotron">
        <div class="container">
            <h1>Gestion de Personas y Cursos</h1>
        </div>
    </div>
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <div class="panel panel-primary">
            <div class="panel-heading">
                Menu principal
            </div>
            <div class="panel-body">
                <a href="altapersona.aspx" class="btn btn-block btn-lg btn-success">Alta Personas</a>
                <a href="eliminarpersona.aspx" class="btn btn-block btn-lg btn-danger">Baja Personas</a>
                <a href="altacurso.aspx" class="btn btn-block btn-lg btn-success">Alta Cursos</a>
                <a href="eliminarcurso.aspx" class="btn btn-block btn-lg btn-danger">Baja Cursos</a>
            </div>
        </div>
     </div>
    <div class="col-md-4"></div>
    </form>
</body>
</html>
