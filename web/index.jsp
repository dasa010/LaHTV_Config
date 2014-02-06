<%-- 
    Document   : index
    Created on : 02-04-2014, 07:36:24 PM
    Author     : Dasael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if(session.getAttribute("sUserID") == null || session.getAttribute("sUserID").equals(""))
        response.sendRedirect("login.jsp");
    
%>
<!DOCTYPE html>
<html>
    <head>
        <title>La H TV - Menu Principal</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/site.css"/>
        <link rel="stylesheet" href="css/menu.css"/>
        <script src="scripts/jquery-1.11.0.min.js"></script>
        <script src="scripts/menu.js"></script>
    </head>
    <body>
        <div id="container">
            <jsp:include page="masterPage/header.jsp" />
            <div id="content">
                <h1>Bienvenido</h1>
                <p>
                    En este sitio web podrá perzonalizar la aplicación
                    "<em>LaHTV</em>" para Samsung Smart TV.
                    
                    Presione cualquier elemento del menu principal para 
                    visitar la opción señalada.
                </p>
            </div>
            <jsp:include page="masterPage/footer.jsp" />
        </div>
    </body>
</html>
