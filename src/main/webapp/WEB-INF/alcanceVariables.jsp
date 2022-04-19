<%-- 
    Document   : alcanceVariables
    Created on : 19/04/2022, 1:32:32 p. m.
    Author     : adseglocdom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alcance de Variables</title>
    </head>
    <body>
        <h1>Alcance de Variables</h1>
        <br/>
        Variables request:
        Base: ${rectanguloRequest.base}
        Altura ${rectanguloRequest.altura}
        Area: ${rectanguloRequest.area}
        <br/>
        Variables sesion
        Base: ${rectanguloSesion.base}
        Altura ${rectanguloSesion.altura}
        Area: ${rectanguloSesion.area}
        <br/>
        Variables aplicacion
        Base: ${rectanguloAplicacion.base}
        Altura ${rectanguloAplicacion.altura}
        Area: ${rectanguloAplicacion.area}
        <br/>
        <a href="${pageContext.request.contextPath}/index.jsp">Volver al menu</a>
    </body>
</html>
