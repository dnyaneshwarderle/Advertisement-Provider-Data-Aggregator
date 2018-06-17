<%-- 
    Document   : logout
    Created on : 20 Mar, 2018, 3:29:19 PM
    Author     : dnyaneshwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
session.setAttribute("user","");
 response.sendRedirect("index.jsp");
%>  