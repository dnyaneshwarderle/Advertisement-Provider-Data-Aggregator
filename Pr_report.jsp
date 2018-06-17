<%-- 
    Document   : Pr_report
    Created on : 8 Feb, 2018, 9:46:41 PM
    Author     : dnyaneshwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>



<html>
    <head>
        <title>p_report </title>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
<style>
body {
 //   background-image: url("images/main.jpg");
}
</style>
    <body background="images/main.jpg">
      <Center>  <h2>Provider Reports </h2></center><br>

        <% 
              Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
            Statement statement = con.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from prov_data") ; 
        %>

       <h2> <center><TABLE BORDER="1">
            <TR>
                <TH>Date</TH>
                <TH>Domain</TH>
                <TH>Advertise File Name</TH>
                <TH>Advertise File</TH>
                <TH>Advertise File Size </TH>
                <TH>Currency </TH>
                <TH>Ad_CMP </TH>
                <TH>Ernings</TH>
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                 <TD> <%= resultset.getString(6) %></TD>
                  <TD> <%= resultset.getString(7) %></TD>
                   <TD> <%= resultset.getString(8) %></TD>
            </TR>
            <% } %>
        </TABLE></center></h2>
    </body>
</html>