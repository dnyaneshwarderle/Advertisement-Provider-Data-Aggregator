<%-- 
    Document   : new_users
    Created on : 8 Feb, 2018, 11:21:32 PM
    Author     : dnyaneshwar
--%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page session="true" %>
<%

    String id = request.getParameter("id");
    String nm = request.getParameter("nm");
    String phn = request.getParameter("phn");
    String email = request.getParameter("email");    
    String um = request.getParameter("um");
    String pwd = request.getParameter("psw");
    String rpwd = request.getParameter("rpsw");
    session.setAttribute("user",um); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
		
    PreparedStatement st = con.prepareStatement("insert into new_provider(pid, p_name,ph_no,email,user,pass,r_pass) VALUES (" + id + ",'" + nm + "'," + phn + ",'" + email + "','" + um + "','" + pwd + "','" + rpwd + "')");
    out.println("Data is successfully inserted!");
  

    int i = st.executeUpdate();

    if (i > 0) { %>
        <script language="javascript">
            alert("Register Successfully...")
        </script>
    <%    response.sendRedirect("index.jsp");
    }

    
%>