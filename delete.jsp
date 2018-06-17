<%-- 
    Document   : delete
    Created on : 10 Apr, 2018, 1:47:52 AM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" %>

<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
    
    String pid = request.getParameter("btn");
   
   // String pid= request.getParameter("id");
  
  // String username= (String)session.getAttribute("user");
   Class.forName("com.mysql.jdbc.Driver");
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
  Statement statement = con.createStatement();
  ResultSet resultset = null;
 // resultset = statement.executeQuery("select pid,user from new_provider where user=?");
int i=statement.executeUpdate("delete from m_content where mid="+pid);


     response.sendRedirect("publish_content.jsp");


    %>