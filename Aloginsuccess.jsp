<%-- 
    Document   : Aloginsuccess
    Created on : 12 Apr, 2018, 9:22:34 AM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" %>
<%@ page  import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
         <%@ page session="true" %>
  <%
     String username = request.getParameter("unm");  
     String    password = request.getParameter("passw");
    try{
        
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
          PreparedStatement psm=con.prepareStatement ("Select * from Admin where user = ? and pass = ?");
          psm.setString(1,username);
	  psm.setString(2,password);
          ResultSet rs;
          rs=psm.executeQuery();
          if(rs.next())
                     {
                             response.sendRedirect("p_rp.jsp");
                      }
                      else
                       {
                                 response.sendRedirect("admin.jsp");
                       }
                }
    catch(Exception e){
    System.out.println(e);
}
         
     
%>
