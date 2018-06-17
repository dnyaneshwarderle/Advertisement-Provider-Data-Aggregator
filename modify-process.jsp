<%-- 
    Document   : modify-process
    Created on : 10 Apr, 2018, 1:11:16 AM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" %>

<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>

<%
    
    String pid = request.getParameter("id");
    String date = request.getParameter("d");
    String dom = request.getParameter("dm");
    String anm = request.getParameter("ad");
    String afile = request.getParameter("adf");    
    String asize= request.getParameter("s");
    String cmp = request.getParameter("cmp");
  
    String st1=request.getParameter("st1");
    String t1=request.getParameter("t1");
    String st2=request.getParameter("st2");
    String t2=request.getParameter("t2");
    String st3=request.getParameter("st3");
    String ts3=request.getParameter("t3"); 
   // String pid= request.getParameter("id");
  
   String username= (String)session.getAttribute("user");
   Class.forName("com.mysql.jdbc.Driver");
   Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
  Statement statement = con.createStatement();
  ResultSet resultset = null;
 // resultset = statement.executeQuery("select pid,user from new_provider where user=?");
   PreparedStatement st = con.prepareStatement("update m_content set a_name=? , date=? , domain=? , a_file=? , a_size=? , s_time1=? , time_sec1=? , s_time2=? , time_sec2=? , s_time3=? , time_sec3=? , cmp=? where mid=?");
   st.setString(1,anm);
    st.setString(2,date);
     st.setString(3,dom);
      st.setString(4,afile);
       st.setString(5,asize);
        st.setString(6,st1);
         st.setString(7,t1);
          st.setString(8,st2);
           st.setString(9,t2);
            st.setString(10,st3);
             st.setString(11,ts3);
              st.setString(12,cmp);
               st.setString(13,pid);
    
 int i=st.executeUpdate();

   
    
    if(i>0)
    {
         response.sendRedirect("publish_content.jsp");
    }
    else
    {
            response.sendRedirect("modify-process.jsp");
    }
         

  

%>
