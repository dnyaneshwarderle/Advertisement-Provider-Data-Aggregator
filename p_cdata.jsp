<%-- 
    Document   : p_cdata
    Created on : 13 Mar, 2018, 2:01:48 PM
    Author     : dnyaneshwar
--%>



<%@ page import="java.io.*" %>

<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>

<%
    
   // String pid = request.getParameter("id");
    
  String st1=request.getParameter("st1");
   String t1=request.getParameter("t1");
    String st2=request.getParameter("st2");
   String t2=request.getParameter("t2");
   String st3=request.getParameter("st3");
   String ts3=request.getParameter("t3"); 
   // String pid= request.getParameter("id");
   
   Class.forName("com.mysql.jdbc.Driver");
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
 
// out.println("Data is successfully inserted!");
     PreparedStatement st = con.prepareStatement("insert into p_content (s_time1,time_sec1,s_time2,time_sec2,s_time3,time_sec3) VALUES (?,?,?,?,?,?)");
st.setString(1, st1);
st.setString(2, t1);
st.setString(3, st2);
st.setString(4, t2);
st.setString(5, st3);
st.setString(6, ts3);
 int i=st.executeUpdate();
    if(i>0)
    {
        %>
<script>
window.alert("Updated Successfully");
</script>
<%
     } //end of if

else
{
%>
<script>
window.alert("DB ERROR .. NOT INSERTED");
</script>
<%
   
    }
    if(i>0)
    {
    response.sendRedirect("Provider_data.jsp");
    }
   String address=null;  
        if(request.getParameter("submit")!= null)  
        {  
            address="Provider_data.jsp";  
        }  

  //java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime()); 
//java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
//st.setDate(1, sqlDate );
/* st.setString(1, pid);
 st.setString(2, date);
st.setString(3, dom);
st.setString(4, anm);
st.setString(5, afile);
st.setString(6, asize);
st.setString(7, curr);
st.setString(8, cmp);*/


%>
