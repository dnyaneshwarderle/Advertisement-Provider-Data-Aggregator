<%-- 
    Document   : graphData
    Created on :14 Apr, 2018, 12:28:32 AM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>

<% 
       
        String username= (String)session.getAttribute("user");
       String name= (String)session.getAttribute("aname");
       Class.forName("com.mysql.jdbc.Driver").newInstance();
       Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
       Statement statement = con.createStatement() ;
       ResultSet resultset = statement.executeQuery("select pid from new_provider where user='"+username+"'");
       String userID = "";
       if(resultset.next())
       {
	  userID = resultset.getString("pid");
      
       }       
       resultset = statement.executeQuery("select m_name,count from p_content where npid='"+userID+"' ");
			
			List<String> mNamesList = new ArrayList<String>();
			List<String> mNameCountsList = new ArrayList<String>();
			
			while(resultset.next()){
				String cname = resultset.getString("m_name");
				mNamesList.add("\""+cname+"\"");
				mNameCountsList.add(Integer.toString(resultset.getInt("count")));
			}
			String mNames = String.join(",", mNamesList);
			String mNameCounts = String.join(",", mNameCountsList);
			
			StringBuffer data = new StringBuffer();
			data.append(" { \"mNames\" : [ "+mNames+" ], \"counts\" : ["+mNameCounts+"] }");
			
			
			out.print(data);
       
        %>