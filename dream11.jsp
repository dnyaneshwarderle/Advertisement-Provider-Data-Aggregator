<%-- 
    Document   : dream11
    Created on : 11 Apr, 2018, 7:06:03 PM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">

	<link rel="shortcut icon" href="/images/dream11.ico" />

<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
 
    <meta name="title" content="Dream11 | World's no.1 Fantasy Cricket and 6th Largest Fantasy Sports Site! Create and play T20, Cricket, Football Fantasy Contests Online">
    <meta name="description" content="Dream11 - World’s #1 Fantasy Cricket & 6th Largest Fantasy Sports Site! Build your fantasy team, compete in contests, win cash prizes!">
    <meta name="keywords" content="Daily Fantasy Games, Play Fantasy Cricket, Fantasy Football, How to Play Fantasy Cricket, Fantasy Sports Online, Premier Contest, Fantasy Contest, Football challenge Friends, t20 Cricket, Live Cricket, Live Football, Indian Contest">
    <title>Dream11 - World’s #1 Fantasy Cricket & 6th Largest Fantasy Sports Site!</title>


<h2 class="loaderHide" style="text-align:center; margin:10% 0;">Loading...</h2>
<style type="text/css">
	.message-text {display: block!important;}
</style>

<!-- Nothing Goes Above This-->
<style>
.onecrore,a,abbr,acronym,address,applet,article,aside,audio,b,big,blockquote,body,canvas,caption,center,cite,code,dd,del,details,dfn,div,dl,dt,em,embed,fieldset,figcaption,figure,footer,form,h1,h2,h3,h4,h5,h6,header,hgroup,html,i,iframe,img,ins,kbd,label,legend,li,mark,menu,nav,object,ol,output,p,pre,q,ruby,s,samp,section,small,span,strike,strong,sub,summary,sup,table,tbody,td,tfoot,th,thead,time,tr,tt,u,ul,var,video{margin:0;padding:0;border:0;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}ol,ul{list-style:none}table{border-collapse:collapse;border-spacing:0}a{text-decoration:none;color:#2a4494}#mainWrapper>section .Almemb a,#mainWrapper>section .agree a{text-decoration:underline}body{font-family:arial;font-size:.75em;line-height:1.2}.flotBtn{position:absolute;bottom:15%;right:5%}label{float:left;font-size:.95em;padding:0 0 3px;width:100%}label.error,label.errorLabel{background:#e13939;border-radius:4px;display:none;color:#fff;float:left;margin:5px 0 0!important;padding:3px 5px!important;width:auto;z-index:0}input,select,textarea{border-radius:4px;background-color:#fff;border:1px solid #e8e8e8!important;box-sizing:border-box;position:relative}select,textarea{float:left}input:focus,select:focus,textarea:focus{border:1px solid #4a4a4a!important;outline:0}input.error,input.errorInput,select.error,select.errorInput,textarea.error,textarea.errorInput{border-color:red;background:#faeeee}button,input[type=button],input[type=reset],input[type=submit]{-webkit-appearance:none;cursor:pointer;border:none!important}@media only screen and (min-device-width:375px) and (max-device-width:667px) and (orientation:portrait) and (-webkit-min-device-pixel-ratio:2){body{font-size:.875em}}@media only screen and (min-device-width:414px) and (max-device-width:736px) and (device-width:414px) and (device-height:736px) and (orientation:portrait) and (-webkit-min-device-pixel-ratio:3) and (-webkit-device-pixel-ratio:3){body{font-size:.938em}}
#toast-container,.message-box{top:0;left:0;-webkit-box-orient:vertical;-webkit-box-direction:normal}.toast{border-radius:4px;margin-bottom:8px;letter-spacing:1px;padding:3% 5%}.toast:hover{box-shadow:#666 0 0 8px;cursor:pointer}#toast-container{display:-webkit-box;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;width:100%;z-index:9999;position:absolute}.message-box,.message-text{display:-webkit-box;display:-ms-flexbox;width:100%}.toast-title{font-weight:700;text-transform:uppercase}.toast-message{line-height:1.5;margin:2% 0 0}.message-box{height:90px;box-shadow:0 2px 4px 0 rgba(0,0,0,.2);position:fixed;display:flex;-ms-flex-direction:column;flex-direction:column}.message-text{font-size:14px;color:#fff;display:flex;-webkit-box-flex:1;-ms-flex-positive:1;flex-grow:1;-webkit-box-align:center;-ms-flex-align:center;align-items:center;text-align:center;line-height:1.4em;padding-top:1em;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.message-close{display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;width:100%;padding:0 8px}.message-close-button{background-color:transparent;cursor:pointer;padding:0;margin:0;height:30px;width:40px;border:0}.message-close svg{width:16px}.message--success{background:#24ba38}.message--error{background:#fc7815;color:#fff}.message--info{background:#24ba38;color:#fff}.message--warning{background:#fc7815;color:#fff}
body{background:#c51d23}.bluebg{background:url(https://cdn1.dream11.com/images/responsive/onboardingflowe/index-bg.jpg?ver=9.47) center 0 no-repeat #030b20;background-size:cover}#mainWrapper{float:left;position:relative;width:100%;z-index:1}#mainWrapper>header{float:left;text-align:center;width:100%}#mainWrapper>header .logo{width:100%}#mainWrapper>header .tagLine{color:#333;font-size:1.3em;letter-spacing:2px}#mainWrapper>.secMarTop{margin-top:4%}#mainWrapper>section{color:#333;float:left;text-align:center;width:84%;margin:0 8%;background:#fff;border-radius:4px}#mainWrapper>section p{float:left;font-size:1.2em;font-weight:700;margin:5% 0;width:100%}#mainWrapper>section .orTxt{font-size:1.1em;margin:4.5% 0}#mainWrapper>section .fbBtnMar{margin-top:3%!important}#mainWrapper>section .redFormMar{clear:both;margin-top:0;float:left;width:100%}#mainWrapper>section .txtField{float:left;margin:0 6.25% 6%;position:relative;width:87.5%}#mainWrapper>section .txtField label{float:left;font-size:.95em;padding:0 0 3px;width:100%}#mainWrapper>section .txtField input{border-radius:4px;background-color:#fff;border:1px solid #4a4a4a;box-sizing:border-box;float:left;height:38px;position:relative;padding:5%;width:100%;z-index:1}#mainWrapper>section .txtField .errorInput{border-color:red;background:#faeeee;color:#c51d23}#mainWrapper>section .txtField .errorLabel{background:#fff;border-radius:4px;display:none;color:#e13939;float:left;margin:5px 0 0;padding:3px 5px;width:auto;z-index:0}#mainWrapper>section .actBtn{float:left;margin:0 6.25% 3%;position:relative;width:87.5%}#mainWrapper>section .greenBtn{color:#fff;text-align:center;float:left;border-radius:4px;padding:4%;width:90%;background:#25ba38;font-size:1em}#mainWrapper>section .agree{margin:0 0 15px;overflow:hidden;width:100%;float:left;font-size:.9em;text-align:center;line-height: 1.4;}#mainWrapper>section .agree .chkbox{width:20px;height:20px;float:left;margin:0 10px 0 0}#mainWrapper>section .agree span{float:left;font-size:.95em;margin:4px 0 0}#mainWrapper>section .Almemb{float:left;font-size:1em;text-align:center;width:100%;margin:2% 0 4%;color:#9b9b9b}#mainWrapper>section .agree .errorLabel{background:#e13939;border-radius:4px;clear:both;color:#fff;display:none;float:left;margin:5px 0 0;padding:3px 5px;width:auto;z-index:0}.bluebg #mainWrapper>section .txtField .errorLabel{background:#e13939;color:#fff}.bluebg #mainWrapper>header{margin:0 0 6%}.loaderHide{display:none}#mainWrapper>section .noDep{color:#fff;text-align:center;font-size:1.333em;font-weight:700;margin:4% 0 0;float:left;width:100%}.onecrore{color:#f09403;font-size:.9em}.icon-1crore{background:url(https://d13ir53smqqeyp.cloudfront.net/contain/android-pro-app/rupee-icon.png) center center no-repeat;background-size:27px;width:27px;height:27px;display:inline-block;vertical-align:middle}.no-deposits{width:169px}

.socLogin { float: left; margin: 4% 0 7.5% 0; width: 100%; padding: 0 6.25%; box-sizing: border-box;}
.socLogin a { background: #3b5998; border-radius: 4px; float: left; margin: 0 0 0 0; padding: 3% 0; text-align: center; width: 48%;}
.socLogin a.fb span { background: url(https://cdn1.dream11.com/images/mobile/ico-facebook@2x.png?ver=8.34) no-repeat 0; background-size: 19%;}
.socLogin a.go span { background: url(https://cdn1.dream11.com/images/mobile/ico-google@2x.png?ver=8.34) no-repeat 0; background-size: 24%;}
.socLogin a.go { background: #dc472e; float: right;}
.socLogin a span { color: #fff; font-size: .9em; padding: 4% 0 4% 12%; text-align: right;}
</style>
</head>
<body>

    <%
    
     String id= (String)session.getAttribute("check");
   
  
   Class.forName("com.mysql.jdbc.Driver");
 Connection  con = DriverManager
		.getConnection("jdbc:mysql://localhost:3306/ad","root", "ddd10");
  Statement statement = con.createStatement();
   ResultSet resultset = statement.executeQuery("select a_name,mid from m_content where mid='"+id+"'");
          String aname = "";
 if(resultset.next()){
	  aname = resultset.getString("a_name");
}
  resultset = statement.executeQuery("select count,pc_id from p_content where m_name='"+aname+"'");
  if(resultset.next())
        {
              int pid=resultset.getInt("pc_id");
            int count=resultset.getInt("count");
            count++;
             PreparedStatement st = con.prepareStatement("update p_content set count=? where pc_id=?");
             st.setInt(1,count);
             st.setInt(2,pid);
             st.executeUpdate();
        }
        else
  {
        int pid=resultset.getInt("pc_id");
            int count=resultset.getInt("count");
            count++;
             PreparedStatement st = con.prepareStatement("update p_content set count=? where pc_id=?");
             st.setInt(1,count);
             st.setInt(2,pid);
             st.executeUpdate();
  }
    %>
<div id="mainWrapper" class="left_site_content" style="background:#c51d23;">
  <header>
    <img src="https://d13ir53smqqeyp.cloudfront.net/contain/marketing/1crore_in_winnings_new.png" class="logo d_homeLogo" />
  </header>
  <section class="secMarTop">
    <form id="SignupForm" method="POST"><input type="hidden" name="authenticity_token" value="a3801e9b2108928a6c60501a30347dd15d7923b2" />
    <p class="regTxt">REGISTER TO PLAY</p>
    <div class="socLogin"><a href="https://www.facebook.com/dialog/oauth?client_id=161319903648&scope=email,user_birthday&redirect_uri=http://www.dream11.com/tf/cricket/fbloginmobile&state=%3Futm_redirection%3DNextMatch%26utm_source%3DCricbuzzIndWebNew%26utm_medium%3Dcpc%26utm_campaign%3DCricket_CatB%26utm_content%3D20180405Ban_728x90_02" class="fb"><span>Facebook</span></a> <a href="https://accounts.google.com/o/oauth2/auth?access_type=online&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fplus.me%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.profile%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fplus.login%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fplus.profile.emails.read&response_type=code&client_id=732634656037-pm3pj90iupe0sddldu4ohb9r5u60n9gk.apps.googleusercontent.com&redirect_uri=https%3A%2F%2Fwww.dream11.com%2Ftf%2Fcricket%2Foauth2callback&state=%3Futm_redirection%3DNextMatch%26utm_source%3DCricbuzzIndWebNew%26utm_medium%3Dcpc%26utm_campaign%3DCricket_CatB%26utm_content%3D20180405Ban_728x90_02%26redirect%3Daffiliateprocess%2F1crore-in-winnings-new-social" class="go"><span>Google</span></a> </div>
    <div class="form redFormMar">
      <div class="txtField">
        <input type="email" placeholder="example@email.com" id="regEmail" name="regEmail">
        <label for="regEmail" id="regEmailErr"  generated="true" class="errorLabel">Are you sure that's a valid Email ID?</label>
      </div>
      <div class="txtField">
        <input type="password" placeholder="Min. 8 characters with 1 number/symbol" id="regPassword" name="regPassword">
        <label for="regPassword" id="regPassErr" generated="true" class="errorLabel">You gotta enter a password!</label>
      </div>
      <div class="agree">
        <p class="chkbox sel" style="display: none;">
          <input type="checkbox" id="regTC" name="regTC" checked="true">
        </p>
        By registering, I agree to Dream11’s <a href="https://www.dream11.com/tf/cricket/termsandconditions?utm_redirection=NextMatch&utm_source=CricbuzzIndWebNew&utm_medium=cpc&utm_campaign=Cricket_CatB&utm_content=20180405Ban_728x90_02" target="_blank">T&amp;C</a>
        <label for="regTC" id="regTCErr" generated="true" style="display:none" class="errorLabel">Agree to terms and conditions</label>
      </div>
      <div class="actBtn"> <a id="regUser" name="loginsubmit" class="greenBtn" href="javascript:;">CONTINUE</a> </div>
      <div>
         <img src = "https://cdn1.dream11.com/images/affiliate/no-deposits-required.png?v=15.12" alt="No Deposits Required" class="no-deposits"  />
      </div>
      <p class="Almemb mrMarg">Already have an account? <a href="https://www.dream11.com/tf/cricket/login" class="signup">Log in</a></p>
    </div>
    </form>
  </section>
</div>
<div class="right_banner">
</div>


<style>
	body{overflow: hidden;}
	.left_site_content {
	    display: inline-block;
	    width: 100% ;
	    max-width:550px;
	    left: 0;
	    top: 0;
	    background: #fff;
	    z-index: 1;
	    position: relative;
	   	height: 100vh;
	   	overflow-y: scroll;
	}
	.right_banner{position: fixed; right: 0px; top: 0px; width: 62%; height: 100%; background: url(https://d13ir53smqqeyp.cloudfront.net/contain/marketing/landing_pages/right_banner_desktop.jpg) no-repeat; background-size: cover;height: 100vh;}
	.right_banner img{width: 100%;}
	.left_mobile_box{
	    max-width: 550px;
	    width: 100%;
	    height: 100%;
	    position: absolute;
	    top: 0px;
	}

	@media (min-width: 1440px){
		.left_site_content{
			width: 38%;
			max-width: 38%;
		}
	}

	@media (max-width: 1280px){
		.right_banner{
			width: 57%;
		}
	}

	@media (max-width: 1024px){
		.left_site_content{
			width: 100%;
			max-width: 400px;
		}
	}

	@media only screen and (max-width: 768px) {
	    .left_site_content {
	        width: 100%;
	        max-width: 100%;
	    }

	    .right_banner{display:none;}
	    .footerInd{
	    	padding: 3% 0;
	    }
	}

	@media only screen and (max-width: 550px) {
	    .left_site_content {
	        width: 100%;
	        max-width: 100%;
	    }
	}

	
</style>

<!-- 
<script>
	
	$(document).ready(myfunction);
	$(window).on('resize',myfunction);

	function myfunction() {
	    $(".left_site_content, .right_banner").height($(document).height());
	}
</script> -->

<script type="text/javascript"  src="https://cdn1.dream11.com/javascripts/jquery-1.11.1.min.js?v=15.12" ></script> 
 
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-7674646-4', 'auto');
  ga('send', 'pageview');

</script>
<script>
var WLSUrl = "www.dream11.com/tf/cricket/"
$(document).ready(function() 
{
    var serviceObj = _D11.services.general.p_loginCheck;
    var attr = _D11.services.general.p_loginCheck.attributes;
    // attr.authenticity_token = $("input[name='authenticity_token']").val();
    _D11.ajaxCall(serviceObj,attr,function(msg){
        if (msg.login == true) {
            if (msg.redirection) {location.href = msg.redirection;}
            else
            _dM.redirectUrl('leagues' + location.search);
        }
        
    })
});
</script>
<div id="overlayLoader" class="loader" style='display:none;'><div class="loader-inner"><div class="ball-spin-fade-loader"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div></div></div><style type="text/css">.loader{background:rgba(0,0,0,0.7);border-radius:5px;float:left;height:100%;left:0;margin:0 10px 0 0;position:fixed;top:0;width:100%;z-index:20000}.loader-inner{background:#fff;border-radius:5px;height:100px;left:50%;margin:-50px;position:absolute;top:50%;width:100px}.loader-inner:after{content:'Loading...';bottom:8%;left:0;position:absolute;text-align:center;width:100%}.ie9 .loader-inner > div{display:none}.ie9 .loader-inner:after{bottom:43%}@keyframes ball-spin-fade-loader{50%{opacity:.3;-webkit-transform:scale(0.4);transform:scale(0.4)}100%{opacity:1;-webkit-transform:scale(1);transform:scale(1)}}.ball-spin-fade-loader{position:relative;top:28%;left:40%}.ball-spin-fade-loader > div:nth-child(1){top:25px;left:0;-webkit-animation:ball-spin-fade-loader 1s -.96s infinite linear;animation:ball-spin-fade-loader 1s -.96s infinite linear}.ball-spin-fade-loader > div:nth-child(2){top:17.04545px;left:17.04545px;-webkit-animation:ball-spin-fade-loader 1s -.84s infinite linear;animation:ball-spin-fade-loader 1s -.84s infinite linear}.ball-spin-fade-loader > div:nth-child(3){top:0;left:25px;-webkit-animation:ball-spin-fade-loader 1s -.72s infinite linear;animation:ball-spin-fade-loader 1s -.72s infinite linear}.ball-spin-fade-loader > div:nth-child(4){top:-17.04545px;left:17.04545px;-webkit-animation:ball-spin-fade-loader 1s -.6s infinite linear;animation:ball-spin-fade-loader 1s -.6s infinite linear}.ball-spin-fade-loader > div:nth-child(5){top:-25px;left:0;-webkit-animation:ball-spin-fade-loader 1s -.48s infinite linear;animation:ball-spin-fade-loader 1s -.48s infinite linear}.ball-spin-fade-loader > div:nth-child(6){top:-17.04545px;left:-17.04545px;-webkit-animation:ball-spin-fade-loader 1s -.36s infinite linear;animation:ball-spin-fade-loader 1s -.36s infinite linear}.ball-spin-fade-loader > div:nth-child(7){top:0;left:-25px;-webkit-animation:ball-spin-fade-loader 1s -.24s infinite linear;animation:ball-spin-fade-loader 1s -.24s infinite linear}.ball-spin-fade-loader > div:nth-child(8){top:17.04545px;left:-17.04545px;-webkit-animation:ball-spin-fade-loader 1s -.12s infinite linear;animation:ball-spin-fade-loader 1s -.12s infinite linear}.ball-spin-fade-loader > div{background-color:#c61d23;width:15px;height:15px;border-radius:100%;margin:2px;-webkit-animation-fill-mode:both;animation-fill-mode:both;position:absolute}</style>

<link type="text/css" rel="stylesheet" href="https://cdn1.dream11.com/stylesheets/mobile/popup/errorbox.css?v=15.12" /> 

<div style="display:none">
    <div class="genericPopup somethingError" id="errorBox">
        <div class="popupTitle">
            <span class="txtAlert d_errorTitle">ERROR</span>
            <span class="popupClose d_closePopup">X</span>
        </div>
        <div class="popupInner">
            <h4 class="d_msgBody">Something Went Wrong</h4>
            <div class="actBtn">
                <a href="javascript:;" class="blueBtn">Continue</a>
            </div>
        </div>
    </div>
</div>
<div id="orentationChangedcboxOverlay"></div>
<div class="orentationChanged">
    <h3 class="popupTitle">Orientation changed!</h3>
    <div class="popupInner">
        <div class="inRow alCtr">
            <p class="desc">The site is best viewed in the portrait mode.</p>
        </div>
    </div>
</div>
<style type="text/css">
    #orentationChangedcboxOverlay {
        background: rgba(0, 0, 0, 0.8);
        display: none;
        opacity: 0.9;
        position: fixed;
        width: 100%;
        height: 100%;
        z-index: 9999;
        top: 0px
    }

    .orentationChanged {
        background: #fff;
        border-radius: 4px;
        display: none;
        float: left;
        left: 50%;
        margin: -10% -40%;
        padding: 15px;
        position: fixed;
        top: 50%;
        text-align: center;
        width: 80%;
        z-index: 10000;
    }

    .orentationChanged .popupTitle {
        color: #c51d23;
        font-weight: bold;
        font-size: 1.2em;
        margin: 0 0 10px;
    }

    .orentationChanged p.desc {
        float: left;
        width: 100%;
    }
</style>
<Script>
    $(document).ready(function () {
        var previousOrientation = window.orientation;
        var checkOrientation = function () {
            if (window.orientation !== previousOrientation) {
                previousOrientation = window.orientation;
                if (window.orientation == 0 || window.orientation == 180) {
                    $('#orentationChangedcboxOverlay, .orentationChanged').hide();
                } else {
                    $('#orentationChangedcboxOverlay, .orentationChanged').show();
                }
            }
        }; window.addEventListener("resize", checkOrientation, true);
        window.addEventListener("orientationchange", checkOrientation, true);
    });

</Script>

    <script type="text/javascript"  src="https://cdn1.dream11.com/javascripts/mobileaffiliate/loginpage.min.js?v=15.12" ></script> 


</body>
</html>