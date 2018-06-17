<%-- 
    Document   : times
    Created on : 13 Mar, 2018, 1:59:50 PM
    Author     : dnyaneshwar
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" import="java.io.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Provider data</title>

  
  <link rel="stylesheet" href="materialize.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
  
  
<style type="text/css">
html,
body {
    height: 100%;
}
html {
    display: table;
    margin: auto;
}
body {
    background-color:white;
  //   background-image: url("images/wb.png");
    display: table-cell;
    vertical-align: middle;
}
.margin {
  margin: 0 !important;
}
</style>
   <style>
h {background-color: powderblue;}

p    {color: red;}
body {
  // background-image: url("images/wb.png");
}

</style>
</head>

<body background="images/wb.png" class="blue">


 <div id="login-page" class="row">
    <div class="col s12 z-depth-6 card-panel">
      <form class="login-form" method="post" action="p_data.jsp">
        <div class="row">
          <div class="input-field col s12 center">
            <img src="images/alogo.jpg" alt="" class="responsive-img valign profile-image-login" width="800">
            <p class="center login-form-text"><i><b>Import Provider Data</b></i></p>
          </div>
        </div>
          
<a href="publish_content.jsp">Publish Contents</a>


        <div class="row margin">
            <script>
  $(document).ready(function() {
    $("#datepicker").datepicker();
  });
  </script>
             <script>
         n =  new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("demo").innerHTML = y + "-" + m + "-" +d ;
</script>
 
        <table cellspacing="5" cellpadding="3">	
				
                                    
                                       <tr><td><b>Start Time1:</b></td><td> <input type="text" placeholder="Enter First Start time" name="st1" required></td></tr>
                                         <tr><td><b>Time1(sec):</b></td><td> <input type="text" placeholder="Enter Time in sec" name="t1" required></td></tr>
                                          <tr><td><b>Start Time2:</b></td><td> <input type="text" placeholder="Enter second time" name="st2" required></td></tr>
                                           <tr><td><b>Time2(sec):</b></td><td> <input type="text" placeholder="Enter Time in sec" name="t2" required></td></tr>
                                            <tr><td><b>Start Time3:</b></td><td> <input type="text" placeholder="Enter Third time" name="st3" required></td></tr>
                                             <tr><td><b>Time3(sec):</b></td><td> <input type="text" placeholder="Enter Time in sec" name="t3" required></td></tr>
                                              
					<tr><td></td><td><input type="submit" name="submit" value="Submit"/>
					
					<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
					</table>
      </form>
    </div>
  </div>


  <center>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- Post Page - Responsive -->
<ins class="adsbygoogle"
     style="display:inline-block;width:300px;height:250px"
     data-ad-client="ca-pub-5104998679826243"
     data-ad-slot="3470684978"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</center>

 
 <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!--materialize js-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.1/js/materialize.min.js"></script>



  <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-27820211-3', 'auto');
  ga('send', 'pageview');

</script><script src="//load.sumome.com/" data-sumo-site-id="1cf2c3d548b156a57050bff06ee37284c67d0884b086bebd8e957ca1c34e99a1" async="async"></script>


   <footer class="page-footer">
          <div class="footer-copyright">
            <div class="container">
            © 2018 Open Ads Network
         
            </div>
          </div>
  </footer>

</body>

</html>
