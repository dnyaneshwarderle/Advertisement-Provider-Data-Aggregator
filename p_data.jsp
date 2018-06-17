<%-- 
    Document   : p_data
    Created on : 13 Feb, 2018, 12:47:01 AM
    Author     : dnyaneshwar
--%>


<%@ page import="java.io.*" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<%
    String date = request.getParameter("d");
    String dom = request.getParameter("dm");
    String anm = request.getParameter("ad");
    String afile = request.getParameter("adf");    
    String asize= request.getParameter("s");
    String curr = request.getParameter("example");
    String cmp = request.getParameter("cmp");  
    String st1=request.getParameter("st1");
    String t1=request.getParameter("t1");
    String st2=request.getParameter("st2");
    String t2=request.getParameter("t2");
    String st3=request.getParameter("st3");
    String ts3=request.getParameter("t3");
    
    String username= (String)session.getAttribute("user");
    
   Class.forName("com.mysql.jdbc.Driver");
   Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
		
   Statement statement = con.createStatement();
   ResultSet resultset = statement.executeQuery("select pid from new_provider where user='"+username+"'");
   String userID = "";
  if(resultset.next())
  {
	  userID = resultset.getString("pid");
  }
 
   PreparedStatement st = con.prepareStatement("insert into m_content(date,domain,a_name,a_file,a_size,s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3,cmp,pid) VALUES ('" + date + "','" + dom + "','" + anm + "','" + afile + "','" + asize+ "','"+st1+"',"+t1+",'"+st2+"',"+t2+",'"+st3+"',"+ts3+"," + cmp + ","+ userID +")");
   int i=st.executeUpdate();
    if(i>0)
    {
        resultset = statement.executeQuery("select pc_id,Ad_request from p_content  where m_name='"+anm+"'");
        if(resultset.next())
        {
            int pc_id=resultset.getInt("pc_id");
            int ad_count=resultset.getInt("Ad_request");
            ad_count++;
             st = con.prepareStatement("update p_content set  Ad_request=?    where pc_id=?");
             st.setInt(1,ad_count);
             st.setString(2,userID);
             st.setInt(2, pc_id);
             st.executeUpdate();
        }
        else
        {
            st=con.prepareStatement("insert into  p_content(Ad_request,m_name,npid) values(?,?,?)");
            st.setInt(1,1);
            st.setString(2,anm);
           
            st.setString(3,userID);
            st.executeUpdate();
        }
         session.setAttribute("aname",anm);  
        response.sendRedirect("Provider_data.jsp");
    }

%>
