<%-- 
    Document   : Aforgotpass
    Created on : 17 Apr, 2018, 12:45:13 PM
    Author     : dnyaneshwar
--%>


<%@ page import="java.io.*" %>
<%@ page  import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>

  <%
        String um = request.getParameter("unm");
        String pwd = request.getParameter("pswd");
 
        
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
        Statement statement = con.createStatement();
        ResultSet rs;
        PreparedStatement st= con.prepareStatement("update Admin set pass='"+pwd+"'  where user='"+um+"'");          
        int i=st.executeUpdate();
        if(i>0)
               {
                         
                        // request.setAttribute("user",username); 
                               response.sendRedirect("admin.jsp");
               }
               else
        {
                               response.sendRedirect("AfPass.jsp");
               
        }
             
%>
