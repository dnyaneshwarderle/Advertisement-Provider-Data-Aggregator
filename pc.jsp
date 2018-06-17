<%-- 
    Document   : publish_containt
    Created on : 26 Feb, 2018, 6:14:31 PM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>P_contents</title>
  
  <link href="style.css" rel="stylesheet" type="text/css">
 
     <link href="report.css" rel="stylesheet" type="text/css">

<style>
h {background-color: powderblue;}

p    {color: red;}
body {
   background-image: url("images/wb.png");
}
</style>

</head>
<body>
  
     
<%
       String select = request.getParameter("chk");
       
              Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
            Statement statement = con.createStatement(); 
            ResultSet resultset;
          //   ResultSet resultset = statement.executeQuery("select a_name,mid from m_content where mid="+mid+" ");
       //   String a_name = "";
 //if(resultset.next()){
	//  a_name = resultset.getString("a_name");
// }
           // resultset =  statement.executeQuery("select m_name,Ad_request,Bilable_impression,count,fill_rate from m_content,p_content where m_content.a_name=p_content.m_name and pid='"+userID+"'");
        //  for (int i = 0; i < select.length; i++)
        //  {
             resultset = statement.executeQuery("select m_name,Ad_request,Bilable_impression,count,fill_rate from p_content where m_name="+select+" ");
            // String name="";
         // ResultSet resultset1;
             
       //     fr=(complete/Adr)*100;
            
/* if(resultset.next()){

     double Adr=resultset.getDouble("Ad_request");

    double complete=resultset.getDouble("Bilable_impression");
   String name = resultset.getString("m_name");
      double fr=(complete/Adr)*100;
         
           PreparedStatement st = con.prepareStatement("update p_content set fill_rate=? where m_name=?");
               st.setDouble(1,fr);
               st.setString(2,name);
              st.executeUpdate();
    }*/
              
                // resultset =  statement.executeQuery("select pc_id,date,domain,a_file,a_size,s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3,Ad_request,Bilable_impression,count,cmp,fill_Rate from p_content,m_content") ; 
        %>
 <br>
			<center><h1>Publish Content</h1></center><br>
				<table>
					<thead>
						<tr>
							<th> Advertise name</th>
                                                          <th>Advertise Request</th>
                                                          <th>Completed Reduests</th>
                                                           <th>Count</th>
                                                         <th>Fill Rate(%)</th>
                                                        
                                                     
						</tr>
                                                  <thead>
                                                <% while(resultset.next()){ %>
                                                 <tbody>
						<tr>
							<td> <%= resultset.getString(1) %></td>
                                                          <td> <%= resultset.getString(2) %></td>
                                                          <td> <%= resultset.getString(3) %></td>
                                                          <td> <%= resultset.getString(4) %></td>
                                                          <td> <%= resultset.getString(5) %></td>
                                                        
                                                        
                                                      
						</tr> <%} }%>
						
					  </tbody>
                         </table>
			

</body>

</html>

