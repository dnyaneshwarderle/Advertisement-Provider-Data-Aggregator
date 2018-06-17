<%-- 
    Document   : Advertise
    Created on : 23 Mar, 2018, 12:52:19 PM
    Author     : dnyaneshwar
--%>
<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ads</title>
    </head>
    <body>
       <%
            String id = request.getParameter("chk1");
            session.setAttribute("check",id); 
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");		
            Statement statement = con.createStatement() ;
            ResultSet resultset = statement.executeQuery("select mid,a_name,status from m_content where mid='"+id+"'");
            String status = "Published";
            int id1;
            String nm="";
            if(resultset.next())
            {
   
                nm = resultset.getString("a_name");     
                id1=resultset.getInt("mid");
                PreparedStatement st = con.prepareStatement("update m_content set status=? where mid=?");
                st.setString(1,status);
                st.setInt(2, id1);
         
                int i=st.executeUpdate();
                if(i>0)
                {
                    resultset = statement.executeQuery("select m_name,Ad_request,Bilable_impression,pc_id,fill_rate from p_content where m_name='"+nm+"'");
                    if(resultset.next())
                    {
                        float comp=resultset.getFloat("Bilable_impression");
                        String name=resultset.getString("m_name");
                        comp++;
                        st = con.prepareStatement("update p_content set Bilable_impression=? where m_name=?");
                        st.setDouble(1,comp);
                        st.setString(2, name);
                        int j= st.executeUpdate();
           
                        if(j>0)
                        {
                            float Adr=resultset.getFloat("Ad_request");
                            float fr=resultset.getFloat("fill_rate");
                            fr=(comp/Adr)*100;
         
                            st = con.prepareStatement("update p_content set fill_rate=? where m_name=?");
                            st.setDouble(1,fr);
                            st.setString(2,name);
                            st.executeUpdate();
                        }
                    }
                    else
                    {
                        out.println("please select Advertise....");
                    }

                }
            }
       %>

        <style>
#submit-icon 
{
  background-image: url("images/dream11.jpeg"); /* Change url to wanted image */
  background-size: cover;
  border: none;
  width: 800px;
  height: 100px;
  cursor: pointer;
  color: transparent;
}
    </style>
    <script src="images/dream11.jpeg"></script>
       <form id="form" action="dream11.jsp" method="post">
           <input type="submit" id="submit-icon" value="test">
       </form>
<br>
<br>
<br>
          <style>
#submit-icon1 
{
  background-image: url("images/st.png"); /* Change url to wanted image */
  background-size: cover;
  border: none;
  width: 800px;
  height: 100px;
  cursor: pointer;
  color: transparent;
}
    </style>
    <script src="images/st.png"></script>
       <form id="form" action="stack.jsp" method="post">
           <input type="submit" id="submit-icon1" value="test">
       </form>

    </body>
</html>
