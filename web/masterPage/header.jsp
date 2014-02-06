<%-- 
    Document   : header
    Created on : 02-06-2014, 12:08:21 AM
    Author     : Dasael Sandoval
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <div id="user-info">
            Bienvenido <em><%= session.getAttribute("sUserID") %></em> |
            <a href="doLogout.jsp">Salir</a>
        </div>
        <div id='cssmenu'>
            <ul>
               <li class='active'><a href='index.jsp'><span>Inicio</span></a></li>
               <li><a href='categorias.jsp'><span>Categorias</span></a></li>
               <li><a href='noticias.jsp'><span>Noticias</span></a></li>
               <li><a href='resultados.jsp'><span>Resultados</span></a></li>
               <li><a href='tabla.jsp'><span>Tabla de posiciones</span></a></li>
               <li><a href='videos.jsp'><span>Videos</span></a></li>
               <li class='last'><a href='usuarios.jsp'><span>Usuarios</span></a></li>
            </ul>
        </div>
