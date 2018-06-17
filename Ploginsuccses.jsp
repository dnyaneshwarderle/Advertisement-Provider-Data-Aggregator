<%-- 
    Document   : Ploginsuccsess
    Created on : 8 Feb, 2018, 12:21:32 PM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" %>
<%@ page  import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<html>
    <body>
         <%@ page session="true" %>
  <%
      String username = request.getParameter("um");
      session.setAttribute("user",username);  
      String    password = request.getParameter("psw");
      String role = request.getParameter("role");
 
       try{
        
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");		
            PreparedStatement psm=con.prepareStatement ("Select * from new_provider where user = ? and pass = ?");
            psm.setString(1,username);
            psm.setString(2,password);
            ResultSet rs;
            rs=psm.executeQuery();                                  
            if(rs.next())
                     {                      
                        request.setAttribute("user",username); 
                        response.sendRedirect("Provider_data.jsp");
                      }
                      else
                        {
                            response.sendRedirect("Provider.jsp");
                        }
                }
    catch(Exception e){
    System.out.println(e);
}
         
     
%>
</body>
</html>