<%-- 
    Document   : Graph
    Created on : 14 Apr, 2018, 12:28:32 AM
    Author     : dnyaneshwar
--%>
<!DOCTYPE html>
<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<html>
	<head>
		<title>Graph</title>
		<script src="js/jquery-2.1.4.min.js"></script>
		<script src="js/Chart.js"></script>
	</head>
    <style>
	body{
        background-color: lightgray;
		padding-top: 60px;
        padding-left: 40px;
	}
        #table1{
            border: 1px solid black; 
            
        }
        th{
            text-align: center;
        }
	</style>
  <%  
       String username= (String)session.getAttribute("user");
     %></%>
    <%! 
           ///  ResultSet rs,rs1,rs2,rs3;
           
         //   Connection con=null;
          // int point2,point3;
            
         //   String tname,point1;
        %></%!>
        <%
            
           
         
               Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
            Statement statement = con.createStatement() ;
           ResultSet resultset = statement.executeQuery("select pid from new_provider where user='"+1+"'");
          String userID = "";
 if(resultset.next()){
	  userID = resultset.getString("pid");
 }
           
            int  point2=0;
            String point1="";
       PreparedStatement  ps1=con.prepareStatement("select a_name from m_content where pid='"+userID+"'  ");
          //  ps1.setInt(1,1);
            String aname="";
           resultset=ps1.executeQuery();
           if(resultset.next())
           {
                     aname = resultset.getString("a_name");
                    point1=resultset.getString(1);
                     out.println(point1);
           }
         
           
            PreparedStatement  ps2=con.prepareStatement("select count from m_content,p_content where m_content.a_name=p_content.m_name and m_name='"+aname+"'");
          ResultSet  rs2=ps2.executeQuery();
           
           if(rs2.next())
           {
                                point2=rs2.getInt(1);
                               out.println(point2);
           }
           
        /*   ps3=con.prepareStatement("select avg(point) from teacher,feedbacform,alternatives,subject,class where subject.teacher_id=teacher.teacher_id and teacher.teacher_id=feedbacform.teacher_id and class.class_id=feedbacform.class_id and feedbacform.fdf_id = alternatives.fdf_id and point between 9 and 10 and teacher.teacher_id =? and subject.subject_id=? and class.class_id=?");
            ps3.setString(1, teacher_id);
            ps3.setString(2, sub_id);
            ps3.setString(3, class_id);
            rs3=ps3.executeQuery();
           
           
            if(rs3.next())
           { 
                    point3=rs3.getInt(1);
           }
           */
         //  if((point1 == null)&&(point2 == 0) ) {
           //response.sendRedirect("publish_content.jsp");
            
          // }
               
      
            
         %>
	<body>
        <header>
		<div class="jumbotron">
			<div class="container">
			
            <table>
                <tr><td style="color: Orchid"><b>Orchid</b></td><td>:<b>GOOD</b>-:</td><td>Got points between <b>1 to 5</b></td></tr>
                <tr><td style="color: deeppink"><b>Pink</b></td><td>:<b>BETTER</b>-:</td><td>Got points between<b>6 to 8</b></td></tr>
                <tr><td style="color: blue"><b>blue</b></td><td>:<b>BEST</b>-:</td><td>Got points between <b>9 to 10</b></td></tr>
            </table>
			
			</div> 
		</div> 
	</header>

        
	
<canvas id="mycanvas" width="256" height="256">
</canvas>
<div class="row">
    <div class="col-sm-12">
        <div class="form-group ">
    <center>
     <font size=10px><a href="publish_content.jsp" class="btn btn-primary">BACK</a></font>
    </center>
        </div>
    </div>
</div>
		<script>
			$(document).ready(function(){
				var ctx = $("#mycanvas").get(0).getContext("2d");
				
               
                
				//pie chart data
				//sum of values = 360
				var data = [
					{
						value: manipal,
						color: "MediumOrchid ",
						highlight: "lightskyblue",
						label: "GOOD"
					},
                                                
                                         {
						value: 4,
						color: "MediumOrchid ",
						highlight: "lightskyblue",
						label: "GOOD"
					}       

    
    ];
		
				//draw
				var piechart = new Chart(ctx).Pie(data);
				
			});
		</script>

	</body>
</html>