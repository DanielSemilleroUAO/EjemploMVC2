<%-- 
    Document   : index
    Created on : 19/04/2022, 12:54:16 p. m.
    Author     : adseglocdom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ejemplo MVC2</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Ejemplo MVC2</h1>
        <br/>
        <div style="color: red">
            ${mensaje}
        </div>
        <br/>
        <a href="${pageContext.request.contextPath}/ServletControlador">Link al servlet controlador Sin Parametros</a>
        <br/>
        <a href="${pageContext.request.contextPath}/ServletControlador?accion=agregarVariables">Link al servlet controlador para agregar variables </a>
        <br/>
        <a href="${pageContext.request.contextPath}/ServletControlador?accion=listarVariables">Link al servlet controlador para listar variables</a>
    </body>
</html>
