<%-- 
    Document   : bill
    Created on : 26 Mar, 2018, 12:56:49 AM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*"  contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bill</title>
    <link rel="stylesheet" href="style1.css" media="all" />
  </head>
  <script>
function myFunction(divName)
{
    var printContents=document.getElementById(divName).innerHTML;
    var originalContents=document.body.innerHTML;
    document.body.innerHTML=printContents;
    window.print();
    document.body.innerHTML=originalContents; 
}
</script>
  <style>
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #e9e9e9;
}

.topnav a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #2196F3;
  color: white;
}

.topnav input[type=text] {
  float: right;
  padding: 6px;
  margin-top: 8px;
  margin-right: 16px;
  border: none;
  font-size: 17px;
}

@media screen and (max-width: 600px) {
  .topnav a, .topnav input[type=text] {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
</style>
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1300px;

  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 5s;
  animation-name: fade;
  animation-duration: 5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
  .footer {
    background-color: #f1f1f1;
    padding: 10px;
    text-align: center;
}
}
</style>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Add padding to containers */
.container {
    padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 20%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity:1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>
  <style>
      ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

  </style>
      
 <div class="topnav">
             

                 <a href="publish_content.jsp">Back </a>&nbsp&nbsp
</div>
<body>
 
          <div id="ptr">        
    <header class="clearfix">
      <div id="logo">
        <img src="images/alogo.jpg">
      </div>
      <div id="company">
        <h2 class="name">Open Ads Network</h2>
        <div>455 Foggy Heights, AZ 85004, US</div>
        <div>(602) 519-0450</div>
        <div><a href="mailto:openads@example.com">openads@example.com</a></div>
      </div>
     
    </header>
    <main>
      <div id="details" class="clearfix">
        <div id="client">
        <%
            String date=request.getParameter("demo");
             String mid= (String)session.getAttribute("chk");
             Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
            Statement statement = con.createStatement(); 
            ResultSet resultset;
             PreparedStatement   st;
            resultset = statement.executeQuery("select a_name,cmp,mid,pid from m_content where mid="+mid+" ");
             String pid="";
               if(resultset.next())
            {
                pid=resultset.getString("pid");
            }
             resultset = statement.executeQuery("select p_name,email,pid from new_provider where pid='"+pid+"'");

            
        %>
        <% while(resultset.next()){ %>
          <h2 class="name"><%= resultset.getString(1) %></h2>
        </div>
        <div id="invoice">
          <% } %>
            Date:  <div class="date" id="demo"> </div>
               <script>
         n =  new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("demo").innerHTML = y + "-" + m + "-" +d ;
</script>
        </div>
      </div>
      <table border="0" cellspacing="0" cellpadding="0">
        <thead>
          <tr>
            <th class="no">#</th>
            <th class="desc">DESCRIPTION</th>
           
            <th class="total">TOTAL</th>
          </tr>
        </thead>
  <tbody>
      <%
                resultset = statement.executeQuery("select Ads_name,pay,mpid from payment where mpid='"+mid+"'");
      %>
       <% while(resultset.next()){ %>
          <tr>
            <td class="no">01</td>
            <td class="desc"><h3>Advertise Name</h3>Creating a recognizable design solution based on the company's existing visual identity</td>
            <td class="total"><%= resultset.getString(1) %></td>
          </tr>
          <tr>
            <td class="no">02</td>
            <td class="desc"><h3>Total Payment</h3>Developing a Content Management System-based Website</td>
            <td class="total"><%= resultset.getString(2) %></td>
          </tr>
           <% }
                      resultset = statement.executeQuery("select cmp,mid from m_content where mid="+mid+" ");
           %>
            <% while(resultset.next()){ %>
          <tr>
            <td class="no">03</td>
            <td class="desc"><h3>Your Advanced</h3>Optimize the site for search engines (SEO)</td>
            <td class="total"><%= resultset.getString(1) %></td>
          </tr>
           <% }
                            resultset = statement.executeQuery("select total_pay,mpid from payment where mpid='"+mid+"'");

            %>
        </tbody>
        <tfoot>
            <% while(resultset.next()){ %>
          <tr>
           
            <td colspan="2">SUBTOTAL</td>
            <td><%= resultset.getString(1) %></td>
          </tr>
          <tr>
            
            <td colspan="2">GRAND TOTAL</td>
            <td><%= resultset.getString(1) %></td>
          </tr>
           <% }
                       String status1="paid";
                       st = con.prepareStatement("update m_content set   status1=? where mid=?");
                           //  st.setDate(1, sqlDate);
                             st.setString(1,status1);
                             st.setString(2,mid);
                             st.executeUpdate();
            
            %>
            
        </tfoot>
        
      </table>
            </div>
             <form action="on_pay.jsp" method="post">
                
            <button type="submit" class="registerbtn">Pay</button> </form>
              <input type="submit" class="registerbtn" onclick="myFunction('ptr')"  value="print">
            
             
      <div id="thanks">Thank you!</div>
      <div id="notices">
        <div>NOTICE:</div>
        <div class="notice">A finance charge of 1.5% will be made on unpaid balances after 30 days.</div>
      </div>
    </main>
    <footer>
      Invoice was created on a computer and is valid without the signature and seal.
    </footer>
     
  </body>

</html>
