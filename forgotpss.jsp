<%-- 
    Document   : forgotpss
    Created on : 8 Apr, 2018, 11:58:06 AM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" %>
<%@ page  import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<html>
    <body>
         <%@ page session="true" %>
  <%
        String um = request.getParameter("um");
        String pwd = request.getParameter("psw");
 
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
        Statement statement = con.createStatement();
        ResultSet rs;
        PreparedStatement st= con.prepareStatement("update new_provider set pass='"+pwd+"'  where user='"+um+"'");
        int i=st.executeUpdate();
        if(i>0)
        {
                         
                        // request.setAttribute("user",username); 
                               response.sendRedirect("Provider.jsp");
                             }
                                     else{
                                 response.sendRedirect("forgotPass.jsp");
               
}
         
     

                        
             
%>
</body>
</html>