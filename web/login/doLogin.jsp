<%-- 
    Document   : doLogin
    Created on : 02-05-2014, 08:15:07 PM
    Author     : Dasael Sandoval
--%>

<%@page language="java" errorPage=""%>
<%@page import="data_clases.users" %>
<% 
    users _usuario = new users();
    _usuario.setAliasUsuario(request.getParameter("user"));
    _usuario.setPassword(request.getParameter("pass"));
    
    boolean found = _usuario.buscarUsuario(_usuario);
    
    if(!found){
        response.sendRedirect("login.jsp?error=Usuario o contraseña incorrectos.");
    }else{
        response.sendRedirect("../index.jsp");
        session.setAttribute("sUserID", _usuario.getAliasUsuario());
    }
%>
