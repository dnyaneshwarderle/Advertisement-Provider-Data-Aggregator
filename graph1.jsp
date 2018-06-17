<%-- 
    Document   : graph1
    Created on : 14 Apr, 2018, 12:28:32 AM
    Author     : dnyaneshwar
--%>
<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html >
 <html >
<head>
<link rel="apple-touch-icon" href="https://cdn.nerolac.com/assets/images/favicons/apple-touch-icon.png"></link>
<link rel="icon" type="image/png" href="https://cdn.nerolac.com/assets/images/favicons/favicon-32x32.png" ></link>
<link rel="icon" type="image/png" href="https://cdn.nerolac.com/assets/images/favicons/favicon-16x16.png" ></link>
<link rel="manifest" href="https://cdn.nerolac.com/assets/images/favicons/manifest.json"></link>
<link rel="mask-icon" href="https://cdn.nerolac.com/assets/images/favicons/safari-pinned-tab.svg" ></link>
<script type="text/javascript" src="js/jquery-3.3.1.min.js" ></script>
<script type="text/javascript" src="js/Chart.min.js" ></script>
<script type='text/javascript'>
var OB_ADV_ID=89654;
window.onload = function()
{
setTimeout ( function() 
{
var script = document.createElement('script');
script.setAttribute('src', '//widgets.outbrain.com/obtp.js');
document.body.appendChild(script);
}, 100000);
}
</script>
<script type="text/javascript">
    var api_tab="api.newshuntads.com/tracker";
   (new Image()).src = (location.protocol == "https:" ? "https://" : "http://") + api_tab;
</script>
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-K3L76JK');</script>
<!-- End Google Tag Manager -->


<script type="text/javascript" >var p1="1326";var p2="[order_Id]";var p3="[product_Id]";var p4="[cartvalue]";var p5="[flag~custom_values]";var adgConvScrpt=document.createElement("script");document.body.appendChild(adgConvScrpt);adgConvScrpt.async=true;var adgConvParam ="p1="+p1+"&p2="+p2+"&p3="+p3+"&p4="+p4+"&p5="+p5;adgConvScrpt.id="adg_conversion_pixel";adgConvScrpt.src="https://adgebra.co.in/Tracker/Conversion.js?"+adgConvParam;</script>
<title>Count Graph</title>
<link rel='canonical' href='https://nerolac.com/home-paint/home-owner.html'>
<link href="https://cdn.nerolac.com/assets/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link type="text/css" href="https://cdn.nerolac.com/assets/css/slick.css" rel="stylesheet" />
<link type="text/css" href="https://cdn.nerolac.com/assets/css/slick-theme.css" rel="stylesheet" />
<link type="text/css" href="https://cdn.nerolac.com/assets/css/owl.carousel.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.nerolac.com/assets/css/compressed_vendor.css">
<link rel="stylesheet" href="https://cdn.nerolac.com/assets/css/compressed_custom.css">
<link href="https://cdn.nerolac.com/assets/css/main.css" type="text/css" rel="stylesheet"/>
</head>
<body>

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K3L76JK"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<style>
iframe{
display:none;
</style>
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 1018824045;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>

<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:none">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/1018824045/?guid=ON%26script=0">
</div>
</noscript>

<!-- Floodlight Conversion Tracker -->
<script type="text/javascript" src="//tt.mbww.com/tt-2d87bf8c9d80ac79caa5553efc2ace391aebed8c986b665ddbbef87ad8a6f6cf.js"></script>

<script type='text/javascript'>
var OB_ADV_ID=89654;
window.onload = function() 
{
setTimeout ( function() 
{
var script = document.createElement('script');
script.setAttribute('src', '//widgets.outbrain.com/obtp.js');
document.body.appendChild(script);
}, 200000);
}
</script>

<script type="text/javascript">
if (typeof(window.APPIER_RETARGET)  == 'undefined') 
{
    (function(w, d, s, m) 
    {
        var f = d.getElementsByTagName('script')[0],
            j = d.createElement('script'),
            ns = 'APPIER_RETARGET';
        w._appierSendQueue = w._appierSendQueue || [];
        w['appierRetargetJson'] = { id: s, site: m};
        j.async = true;
        j.src = '//jscdn.appier.net/aa.js?id='+m;
        f.parentNode.insertBefore(j, f);
        !w[ns] && (w[ns] = {});
        (!w[ns].send) && (w[ns].send = function(j){
            w._appierSendQueue.push(j);
        });
    })(window, document, "VJZN", "nerolac_in");
}
window.APPIER_RETARGET.send({"t":"pv_track","action_id": "JK5TLeH9ksFaDwS","track_id":"vTOe2WrcHbzpq15","isCountReload": true,"counter": 0});
window.APPIER_RETARGET.send({"t":"pv_track","action_id": "9zYlOxza31RRnsx","track_id":"vTOe2WrcHbzpq15","isCountReload": false,"counter": 1});
</script>
<iframe src="https://desipearl.in/p.ashx?o=40%26e=58%26t=TRANSACTION_ID" height="1" width="1" frameborder="0"></iframe>
<div class="preloader loading"> 
            <span class="slice"></span> 
            <span class="slice"></span> 
            <span class="slice"></span> 
            <span class="slice"></span> 
            <span class="slice"></span> 
            <span class="slice"></span> 
</div>
<iframe src="https://desipearl.in/p.ashx?o=40&e=214&t=TRANSACTION_ID" height="1" width="1" frameborder="0"></iframe>
<iframe src="https://adgebra.co.in/Tracker/Conversion?p1=1326&p2=[order_Id]&p3=[product_Id]&p4=[cartvalue]&p5=[flag~custom_values]"width="0" heigth="0" frameborder="0"></iframe>

<img width="1" height="1" alt="" style="display:none;"src="https://adgebra.co.in/Tracker/Conversion?p1=1326&p2=[order_Id]&p3=[product_Id]&p4=[cartvalue]&p5=[flag~custom_values];p6=CACHE_BUSTER"></img>
<div class="mainOuterMostWrapper fadeIn animated"> 

<header class="container-fluid mainHeaderWrapper">


    <div class="mainHeaderContainer">
        <!--Header Top Starts-->
<div class="mainHeaderTop"> 
    <!--Logo Wrapper Starts-->
    <div class="logoWrapper"> 
            
                        
            <a href="index.jsp"><img src="images/alogo.jpg" alt="Nerolac Logo" class="img-responsive" width="186" height="55"></a>
        
             </div>
    <div class="menuWrapper"> 
        <!--Social Links Starts-->
        <ul class="socialLinks">
            <li><a href="https://www.facebook.com/" target="_blank" class="icon-facebook"></a></li>                            
                                <li><a href="https://twitter.com/" target="_blank" class="icon-twitter"></a></li>                            
                                <li><a href="https://www.instagram.com/" target="_blank" class="icon-instagram"></a></li>                            
                                <li><a href="https://www.youtube.com/" target="_blank" class="icon-youtube"></a></li>
            
            <div class="clearfix"></div>
        </ul>
<ul class="menuList">
                        <li><a href="admin.jsp">Administrator</a></li>                    
                            <li><a href="Provider.jsp">Provider</a></li>                
                 <li > <a href="logout.jsp" >Logout</a></li>
                
                 
                    <li class="hamburger" id="hamburgerBtn">
                        <a href="">
                            <span></span>
                            <span></span>
                            <span></span>
                        </a>
                    </li> 
                <div class="clearfix"></div>  
                
</ul>
            <br><br><br>
      <nav class="mainNavigation">
            <ul>
                <li class="dropdown">
               </li>
                <div class="clearfix"></div>
            </ul>
        </nav>
        <div class="clearfix"></div>
    </div>
    <div class="clearfix"></div>
</div>
        <div class="clearfix"></div>
        <div class="mainHeaderBottom"> 
           <div class="overflowMenuWrapper">
                <ul class="primarySmall" id="primarySmallMenu">

</li>
</ul>
                <nav class="subNavigation">
	
<ul>

                    <li class=""> <a href="index.jsp" >Home</a></li>
                    <li class="">  <a href="pReport.jsp">Back </a></li>
                    <li class=""> <a href="Provider_data.jsp">Import Data </a></li>                    
                    <li class="">  <a href="publish_content.jsp">Show Data</a></li>
                    <li class=""><a href="contactUs.jsp"  >Contact Us</a></li>		
                  
                <div class="clearfix"></div>
                <!--Social Icons for small devices-->
                 <ul class="socialSmall">
                                <li><a href="https://www.facebook.com/" target="_blank" class="icon-facebook"></a></li>                            
                                <li><a href="https://twitter.com/" target="_blank" class="icon-twitter"></a></li>                            
                                <li><a href="https://www.instagram.com/" target="_blank" class="icon-instagram"></a></li>                            
                                <li><a href="https://www.youtube.com/" target="_blank" class="icon-youtube"></a></li>
 </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <!--Header Bottom Ends--> 
    </div>
</header>
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
<br><br>
<section class="sectionWrapper">
    <div class="container">      
        <div class="profilePage">
            <!--form starts -->
            <section class="formWrapper">
                <div class="row">                    
                     <br><br>   
  <center>
      <section class="sectionWrapper essentialToolsWrapper">
                <h3>Open Ads Network</h3>
                <h5>Advertise Count Graph </h5>
               
            </section>
 <!--Graph start-->    
 <script>
$( document ).ready(function() 
{
    console.log( "ready!" ); 
	var mNames;
	var counts;
	$.ajax({
		  url: "graphData.jsp",
                  // type: 'POST',
		  dataType: 'json',
		  success: function( resp ) 
                  {
			mNames = resp.mNames;
			counts = resp.counts;
			var ctx = document.getElementById("bar-chart");
			new Chart(ctx, {
				type: 'bar',
				data: 
                                        {
				  labels: mNames,
				  datasets: [
					{
					  label: "Count",
					  backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850","#3cba9f"],
					  data: counts
					}
				  ]
				},
				options: {
				  legend: { display: false },
				  title: {
					display: true,
					text: 'Count of visit'
				  }
				}
			});
			
			
		  },
		  error: function( req, status, err ) {
			console.log( 'something went wrong', status, err );
		  }
	});

});

</script>

<div style="height:450px;width:800px">
	<canvas id="bar-chart" width="800" height="450"></canvas>
</div>
     </center>
  
    
 
<!--Graph End -->
      <br><br><br>
<footer>

                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-sm-6"> 
                                    
<ul class="list-unstyled footer-menu"><li> <a href=""  >ABOUT US</a></li><li> <a href=""  >CAREERS</a></li><li> <a href=""  >GET IN TOUCH</a></li>
</ul>

                                </div>
                                <div class="col-sm-6">
                                     
<ul class="list-unstyled footer-menu"><li> <a href=""  >GREEN TIPS</a></li><li> <a href=""  >OUR FINANCIALS</a></li><li> <a href="" title="Media" >MEDIA</a></li>
</ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                         <form action="" accept-charset="utf-8" id="subscribe" class="form-inline text-right" method="post"><div style="display:none">
<input type="hidden" name="params_id" value="9059720" />
<input type="hidden" name="csrf_token" value="a14d122f109ba4239efef4ae79025c45b23d2700" />
</div>  
                                <div class="form-group">
                                  <input type="email" class="form-control" name="email" id="email" placeholder="Sign up to receive emails" required="required">
                                </div>
            
                                <button type="submit" class="btn btn-anim" ><span class="icon-chevron-thin-right"></span></button>
                                <label id="email-error" class="error" for="email" style="display:none;">Please enter a valid email address.</label>
                                <label id="newsletter-thanks" class="error" style="display:none;"></label>                            
          			        </form>
                            
                            
                                
                            <ul class="list-inline social-links text-right">
                                <li>Follow us on:</li>
                                
                                <li><a href="https://www.facebook.com/" target="_blank" class="icon-facebook"></a></li>                            
                                <li><a href="https://twitter.com/" target="_blank" class="icon-twitter"></a></li>                            
                                <li><a href="https://www.instagram.com/" target="_blank" class="icon-instagram"></a></li>                            
                                <li><a href="https://www.youtube.com/" target="_blank" class="icon-youtube"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="footer-bottom">                     
                       
<ul class="list-inline"><li> <a 
                                       
            href="index.jsp"
              >Home</a></li><li> <a href="" >Privacy Policy</a></li><li> <a href="" >Terms & Conditions</a></li><li> <a href="" >Quality Policy</a></li><li> <a href="" >Site Map</a></li>
</ul>
                        <div class="clearfix visible-xs"></div>
                        <p>@2018 Open Ads Network.</p>
                        <div class="clearfix"></div>
                        <p>Design By Dnyaneshwar Derle,Sawan Londe,Humayun Inamdar</p>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </footer>
</div>
<script type="text/javascript" src="https://cdn.nerolac.com/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script type="text/javascript" src="https://use.typekit.net/nqr5ilg.js"></script>
<script type="text/javascript">
try
{
    Typekit.load({async:!0})
}
catch(e){}
</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57a659780eee3ab4"></script>
<script src="https://cdn.nerolac.com/assets/js/jquery_1.10.js"></script> 
<script src="https://cdn.nerolac.com/assets/js/bootstrap.min.js"></script> 
<script src="https://cdn.nerolac.com/assets/js/slick.js"></script>
<script src="https://cdn.nerolac.com/assets/js/pagination.js"></script> 
<script src="https://cdn.nerolac.com/assets/js/owl.carousel.js"></script> 
<script src="https://cdn.nerolac.com/assets/js/main.js"></script> 
<script type="text/javascript" src="https://cdn.nerolac.com/assets/js/plugin.js"></script>
<script type="text/javascript" src="https://cdn.nerolac.com/assets/js/custom.js"></script>
<script src="https://cdn.nerolac.com/assets/js/owl.carousel.js"></script> 
<script async defer   src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBUFZrtXPv_kTpCM82NxsXJvRS4Nvl56-k">   </script>
</body>
</html>
