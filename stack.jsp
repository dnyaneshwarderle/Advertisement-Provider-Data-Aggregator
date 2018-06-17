<%-- 
    Document   : Stack
    Created on : 11 Apr, 2018, 6:53:19 PM
    Author     : dnyaneshwar
--%>

<%@ page import="java.io.*" import=" java.util.Date" import="java.text.SimpleDateFormat" import="java.util.ArrayList" %>
<%@ page import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

    <head>

        <title>Stack Overflow - Where Developers Learn, Share, &amp; Build Careers</title>
        <link rel="shortcut icon" href="https://cdn.sstatic.net/Sites/stackoverflow/img/favicon.ico?v=4f32ecc8f43d">
        <link rel="apple-touch-icon image_src" href="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon.png?v=c78bd457575a">
        <link rel="search" type="application/opensearchdescription+xml" title="Stack Overflow" href="/opensearch.xml">
        <meta name="description" content="Stack Overflow is the largest, most trusted online community for developers to learn, share​ ​their programming ​knowledge, and build their careers."/>


        <meta property="og:type" content="website"/>
        <meta property="og:url" content="https://stackoverflow.com/"/>
        <meta property="og:image" itemprop="image primaryImageOfPage" content="https://cdn.sstatic.net/Sites/stackoverflow/img/apple-touch-icon@2.png?v=73d79a89bded" />
        <meta name="twitter:card" content="summary"/>
        <meta name="twitter:domain" content="stackoverflow.com"/>
        <meta name="twitter:title" property="og:title" itemprop="title name" content="Stack Overflow - Where Developers Learn, Share, &amp; Build Careers" />
        <meta name="twitter:description" property="og:description" itemprop="description" content="Stack Overflow | The World’s Largest Online Community for Developers" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://cdn.sstatic.net/Js/stub.en.js?v=2a0ddd854c91"></script>
    
    <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Shared/stacks.css?v=bb810ef78683">
        <link rel="stylesheet" type="text/css" href="https://cdn.sstatic.net/Sites/stackoverflow/primary.css?v=ec9c7a89f898">
    
    <link rel="alternate" type="application/atom+xml" title="Feed of recent questions" href="/feeds">
    
        
        
        
        
             
        
                <script>
        StackExchange.init({"locale":"en","serverTime":1523466269,"routeName":"Home/Index","stackAuthUrl":"https://stackauth.com","networkMetaHostname":"meta.stackexchange.com","site":{"name":"Stack Overflow","description":"Q&A for professional and enthusiast programmers","isNoticesTabEnabled":true,"enableNewTagCreationWarning":true,"insertSpaceAfterNameTabCompletion":false,"id":1,"childUrl":"https://meta.stackoverflow.com","enableSocialMediaInSharePopup":true,"protocol":"https"},"user":{"fkey":"a913535b3a982898eaaa0dc8ef634f9f5b1ccb75b2cc62f5221d95691c5adde9","tid":"c8698699-cb28-fb07-8c4b-b505089a6945","rep":0,"isAnonymous":true,"isAnonymousNetworkWide":true},"events":{"postType":{"question":1},"postEditionSection":{"title":1,"body":2,"tags":3}},"story":{"minCompleteBodyLength":75,"likedTagsMaxLength":300,"dislikedTagsMaxLength":300},"jobPreferences":{"maxNumDeveloperRoles":2,"maxNumIndustries":4}}, {"site":{"allowImageUploads":true,"commentHighlightingWithCSS":true,"enableUserHovercards":true,"styleCode":true,"enableImgurHttps":true,"forceHttpsImages":true},"userMessaging":{},"comments":{},"userProfile":{"openGraphAPIKey":"58740831ad23540e00c58987"},"tags":{},"accounts":{"currentPasswordRequiredForChangingStackIdPassword":true},"flags":{"allowRetractingFlags":true},"snippets":{"snippetsEnabled":true,"renderDomain":"stacksnippets.net"},"paths":{},"markdown":{"asteriskIntraWordEmphasis":true},"monitoring":{"clientTimingsAbsoluteTimeout":30000,"clientTimingsDebounceTimeout":1000},"slack":{"sidebarAdDismissCookie":"slack-sidebar-ad"}});
        StackExchange.using.setCacheBreakers({"js/prettify-full.en.js":"2220f913ecd1","js/moderator.en.js":"d350b664ddb3","js/full-anon.en.js":"9782078f2082","js/full.en.js":"0d46133605d6","js/wmd.en.js":"b5bcae14746f","js/third-party/jquery.autocomplete.min.js":"bdb258e949a8","js/third-party/jquery.autocomplete.min.en.js":"","js/mobile.en.js":"594bc042015d","js/help.en.js":"a1c2d4ed1321","js/tageditor.en.js":"e5fc53e87967","js/tageditornew.en.js":"42e8fc79c723","js/inline-tag-editing.en.js":"e7aa31e8eba1","js/revisions.en.js":"a7ac7cb26f15","js/review.en.js":"751969b06e22","js/tagsuggestions.en.js":"78eee7c19ab2","js/post-validation.en.js":"003dcdf02311","js/explore-qlist.en.js":"726bf7958c2a","js/events.en.js":"ab25be884456","js/keyboard-shortcuts.en.js":"eb29af4ceb58","js/external-editor.en.js":"c9c1a87bb87f","js/adops.en.js":"22a9bd59b1e9","js/external-editor.en.js":"c9c1a87bb87f","js/snippet-javascript.en.js":"6596eb95a324","js/snippet-javascript-codemirror.en.js":"d65ee4bf167e"});
        StackExchange.using("gps", function() {
             StackExchange.gps.init(true);
        });
    </script>
    <noscript id="noscript-css"><style>body,.top-bar{margin-top:1.9em}</style></noscript>
    </head>
    <body class="home-page new-topbar">
        <script async src="https://js-sec.indexww.com/ht/p/185901-159836282584097.js"></script>

    <div id="notify-container"></div>
    <div id="custom-header"></div>

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


<header class="top-bar js-top-bar _fixed">
    <div class="-container">
        <div class="-main">
                                <a href="https://stackoverflow.com" class="-logo js-gps-track"
                        data-gps-track="top_nav.click({is_current:true, location:1, destination:8})">
                        <span class="-img">Stack Overflow</span>
                    </a>


                <nav class="navigation" role="navigation" aria-label="site navigation">
                    <ol class="-list">
        <li class="-item">
            <a id="nav-questions" href="/questions" class="-link js-gps-track"
               data-gps-track="top_nav.click({is_current:false, location:1, destination:1})">Questions</a>
        </li>
        <li class="-item">
            <a id="nav-jobs" href="/jobs?med=site-ui&amp;ref=jobs-tab" class="-link js-gps-track"
               data-gps-track="top_nav.click({is_current:false, location:1, destination:6})">Developer Jobs</a>
        </li>
        <li class="-item">
            <a id="nav-tags" href="/tags" class="-link js-gps-track"
               data-gps-track="top_nav.click({is_current:false, location:1, destination:2})">Tags</a>
        </li>
        <li class="-item">
            <a id="nav-users" href="/users" class="-link js-gps-track"
               data-gps-track="top_nav.click({is_current:false, location:1, destination:3})">Users</a>
        </li>
                    </ol>
                </nav>

        </div>

            <form id="search" action="/search" method="get" class="searchbar" autocomplete="off" role="search">
                    <input name="q" type="text" placeholder="Search…" value="" tabindex="1" autocomplete="off" maxlength="240" class="f-input js-search-field" />
                    <button type="submit" aria-label="Search..." class="btn-topbar-primary js-search-submit"><svg aria-hidden="true" class="svg-icon iconSearch" width="18" height="18" viewBox="0 0 18 18"><path d="M12.86 11.32L18 16.5 16.5 18l-5.18-5.14v-.35a7 7 0 1 1 1.19-1.19h.35zM7 12A5 5 0 1 0 7 2a5 5 0 0 0 0 10z"/></svg></button>
            </form>

        


    

<div class="-actions">
    <nav class="secondary-nav">
        <div class="-dialog-container js-topbar-dialog-corral">


    <div class="topbar-dialog siteSwitcher-dialog dno">
        <div class="header">
            <h3><a href="https://stackoverflow.com">current community</a>
            </h3>
        </div>
        <div class="modal-content current-site-container">
            <ul class="current-site">
                    <li>
                            <div class="related-links">
            <a href="https://stackoverflow.com/help" class="js-gps-track"     data-gps-track="site_switcher.click({ item_type:14 })"
>help</a>
                    <a href="https://chat.stackoverflow.com" class="js-gps-track"     data-gps-track="site_switcher.click({ item_type:6 })"
>chat</a>
            </div>
    <a href="https://stackoverflow.com"
       class="current-site-link site-link js-gps-track"
       data-id="1"
       data-gps-track="site_switcher.click({ item_type:3 })">
        <div class="favicon favicon-stackoverflow site-icon" title="Stack Overflow"></div>
        Stack Overflow
    </a>

                    </li>
                    <li class="related-site">
                            <div class="L-shaped-icon-container">
        <span class="L-shaped-icon"></span>
    </div>

                            <a href="https://meta.stackoverflow.com"
       class="site-link js-gps-track"
       data-id="552"
       data-gps-track="site.switch({ target_site:552, item_type:3 }),site_switcher.click({ item_type:4 })">
        <div class="favicon favicon-stackoverflowmeta site-icon" title="Meta Stack Overflow"></div>
        Meta Stack Overflow
    </a>

                    </li>
            </ul>
        </div>

        <div class="header" id="your-communities-header">
            <h3>
your communities            </h3>

        </div>
        <div class="modal-content" id="your-communities-section">

                <div class="call-to-login">
<a href="https://stackoverflow.com/users/signup?ssrc=site_switcher&amp;returnurl=%2fusers%2fstory%2fcurrent" class="login-link js-gps-track"     data-gps-track="site_switcher.click({ item_type:10 })"
>Sign up</a> or <a href="https://stackoverflow.com/users/login?ssrc=site_switcher&amp;returnurl=https%3a%2f%2fstackoverflow.com%2f" class="login-link js-gps-track"     data-gps-track="site_switcher.click({ item_type:11 })"
>log in</a> to customize your list.
                </div>
        </div>

        <div class="header">
            <h3><a href="https://stackexchange.com/sites">more stack exchange communities</a>
            </h3>
            <a href="https://stackoverflow.blog" class="fr">company blog</a>
        </div>
        <div class="modal-content">
                <div class="child-content"></div>
        </div>        
    </div>
                <div class="topbar-dialog help-dialog js-help-dialog dno">
        <div class="modal-content">
            <ul>
                                    <li>
                        <a href="/tour" class="js-gps-track" data-gps-track="help_popup.click({ item_type:1 })">
                            Tour
                            <span class="item-summary">
                                Start here for a quick overview of the site
                            </span>
                        </a>
                    </li>
                <li>
                    <a href="/help" class="js-gps-track" data-gps-track="help_popup.click({ item_type:4 })">
                        Help Center
                        <span class="item-summary">
                            Detailed answers to any questions you might have
                        </span>
                    </a>
                </li>
                        <li>
                            <a href="https://meta.stackoverflow.com" class="js-gps-track" data-gps-track="help_popup.click({ item_type:2 })">
                                Meta
                                <span class="item-summary">
                                    Discuss the workings and policies of this site
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://stackoverflow.com/company/about" class="js-gps-track" data-gps-track="help_popup.click({ item_type:6 })">
                                About Us
                                <span class="item-summary">
                                    Learn more about Stack Overflow the company
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.stackoverflowbusiness.com/?ref=topbar_help" class="js-gps-track" data-gps-track="help_popup.click({ item_type:7 })">
                                Business
                                <span class="item-summary">
                                    Learn more about hiring developers or posting ads with us
                                </span>
                            </a>
                        </li>
            </ul>
        </div>
    </div>
        </div>
        <ol class="-list">
    <li class="-item">
        <a href="https://stackexchange.com/users/?tab=inbox" class="-link js-inbox-button" title="Recent inbox messages">
            <svg aria-hidden="true" class="svg-icon iconInbox" width="20" height="18" viewBox="0 0 20 18"><path d="M15.19 1H4.63c-.85 0-1.6.54-1.85 1.35L0 10.79V15c0 1.1.9 2 2 2h16a2 2 0 0 0 2-2v-4.21l-2.87-8.44A2 2 0 0 0 15.19 1zm-.28 10l-2 2h-6l-2-2H1.96L4.4 3.68A1 1 0 0 1 5.35 3h9.12a1 1 0 0 1 .95.68L17.86 11h-2.95z"/></svg>
            <span class="indicator-badge js-unread-count _important" style="display: none;"></span>
        </a>
    </li>
    <li class="-item">
        <a href="https://stackexchange.com/users/?tab=reputation" class="-link js-achievements-button" title="Recent achievements: reputation, badges, and privileges earned" data-unread-class="_highlighted-positive">
            <svg aria-hidden="true" class="svg-icon iconAchievements" width="18" height="18" viewBox="0 0 18 18"><path d="M15 2V1H3v1H0v4c0 1.6 1.4 3 3 3v1c.4 1.5 3 2.6 5 3v2H5s-1 1.5-1 2h10c0-.4-1-2-1-2h-3v-2c2-.4 4.6-1.5 5-3V9c1.6-.2 3-1.4 3-3V2h-3zM3 7c-.5 0-1-.5-1-1V4h1v3zm8.4 2.5L9 8 6.6 9.4l1-2.7L5 5h3l1-2.7L10 5h2.8l-2.3 1.8 1 2.7h-.1zM16 6c0 .5-.5 1-1 1V4h1v2z"/></svg>
            <span class="indicator-badge js-unread-count _positive" style="display: none;"></span>
        </a>
    </li>

    <li class="-item"><a href="#" class="-link js-help-button" title="Help Center and other resources">
        <svg aria-hidden="true" class="svg-icon iconHelp" width="18" height="18" viewBox="0 0 18 18"><path d="M9 1a8 8 0 1 0 0 16A8 8 0 0 0 9 1zm.81 12.13c-.02.71-.55 1.15-1.24 1.13-.66-.02-1.17-.49-1.15-1.2.02-.72.56-1.18 1.22-1.16.7.03 1.2.51 1.17 1.23zM11.77 8a5.8 5.8 0 0 1-1.02.91l-.53.37c-.26.2-.42.43-.5.69a4 4 0 0 0-.09.75c0 .05-.03.16-.18.16H7.88c-.16 0-.18-.1-.18-.15.03-.66.12-1.21.4-1.66a5.29 5.29 0 0 1 1.43-1.22c.16-.12.28-.25.38-.39a1.34 1.34 0 0 0 .02-1.71c-.24-.31-.51-.46-1.03-.46-.51 0-.8.26-1.02.6-.21.33-.18.73-.18 1.1H5.75c0-1.38.35-2.25 1.1-2.76.52-.35 1.17-.5 1.93-.5 1 0 1.79.18 2.49.71.64.5.98 1.18.98 2.12 0 .57-.2 1.05-.48 1.44z"/></svg>
    </a></li>

    <li class="-item">
        <a href="https://stackexchange.com" class="-link js-site-switcher-button js-gps-track" data-gps-track="site_switcher.show" title="A list of all 173 Stack Exchange sites">
            <svg aria-hidden="true" class="svg-icon iconStackExchange" width="18" height="18" viewBox="0 0 18 18"><path d="M1 13c0 1.1.9 2 2 2h8v3l3-3h1a2 2 0 0 0 2-2v-2H1v2zM15 1H3a2 2 0 0 0-2 2v2h16V3a2 2 0 0 0-2-2zM1 6h16v4H1V6z"/></svg>
        </a>
    </li>
        </ol>
    </nav>
            <div class="-ctas">
                        <a href="https://stackoverflow.com/users/login?ssrc=head&returnurl=https%3a%2f%2fstackoverflow.com%2f" class="login-link btn-clear" rel="nofollow">Log In</a>
                        <a href="https://stackoverflow.com/users/signup?ssrc=head&returnurl=%2fusers%2fstory%2fcurrent" class="login-link btn-topbar-primary" rel="nofollow" data-ga="[&quot;Sign Up&quot;,&quot;Sign Up Navigation&quot;,&quot;Header&quot;,null,null]">Sign Up</a>

            </div>
</div>

    </div>
</header>

    <script>
        StackExchange.ready(function() { StackExchange.topbar.init(); });
        StackExchange.scrollPadding.setPaddingTop(60, 10);     </script>



    <div class="container _full ">
        


        <div id="content" class="snippet-hidden">


            





<div class="s-hero" data-campaign-name="hi">
    <div class="-container g-row jc-sp-between ai-center">
        <div class="g-col6">
            <h1 class="-title">Learn, Share, Build</h1>
            <p class="-paragraph">Each month, over 50 million developers come to Stack Overflow to learn, share their knowledge, and build their careers.</p>
            <p class="-paragraph">Join the world’s largest developer community.</p>
        </div>
        
        <div class="s-signup _hero g-col5">

            <div id="openid-buttons" class="-social">
                    <div class="major-provider btn _block _medium _google" data-provider='google' data-oauthserver='https://accounts.google.com/o/oauth2/auth' data-oauthversion='2.0'
                         data-ga="[&quot;Sign Up&quot;,&quot;Sign Up Started - Google&quot;,&quot;Home Page Hero&quot;,null,null]">
<svg aria-hidden="true" class="svg-icon native iconGoogle" width="18" height="18" viewBox="0 0 18 18"><g><path d="M16.51 8H8.98v3h4.3c-.18 1-.74 1.48-1.6 2.04v2.01h2.6a7.8 7.8 0 0 0 2.38-5.88c0-.57-.05-.66-.15-1.18z" fill="#4285F4"/><path d="M8.98 17c2.16 0 3.97-.72 5.3-1.94l-2.6-2a4.8 4.8 0 0 1-7.18-2.54H1.83v2.07A8 8 0 0 0 8.98 17z" fill="#34A853"/><path d="M4.5 10.52a4.8 4.8 0 0 1 0-3.04V5.41H1.83a8 8 0 0 0 0 7.18l2.67-2.07z" fill="#FBBC05"/><path d="M8.98 4.18c1.17 0 2.23.4 3.06 1.2l2.3-2.3A8 8 0 0 0 1.83 5.4L4.5 7.49a4.77 4.77 0 0 1 4.48-3.3z" fill="#EA4335"/></g></svg>                                                Google
                    </div>
                    <div class="major-provider btn _block _medium _facebook" data-provider='facebook' data-oauthserver='https://www.facebook.com/v2.0/dialog/oauth' data-oauthversion='2.0'
                         data-ga="[&quot;Sign Up&quot;,&quot;Sign Up Started - Facebook&quot;,&quot;Home Page Hero&quot;,null,null]">
                        <svg aria-hidden="true" class="svg-icon iconFacebook" width="18" height="18" viewBox="0 0 18 18"><path d="M1.88 1C1.4 1 1 1.4 1 1.88v14.24c0 .48.4.88.88.88h7.67v-6.2H7.46V8.4h2.09V6.61c0-2.07 1.26-3.2 3.1-3.2.88 0 1.64.07 1.87.1v2.16h-1.29c-1 0-1.19.48-1.19 1.18V8.4h2.39l-.31 2.42h-2.08V17h4.08c.48 0 .88-.4.88-.88V1.88c0-.48-.4-.88-.88-.88H1.88z" fill="#3C5A96"/></svg>                        Facebook
                    </div>
                            </div>


            <small class="-divider text-centered">or</small>

            <form id="login-form" action="/users/signup?ssrc=hero&returnurl=%2fusers%2fstory%2fcurrent" method="POST" data-ga="[&quot;Sign Up&quot;,&quot;Sign Up Started - Email&quot;,&quot;Home Page Hero&quot;,null,null]">
        
                <input type="hidden" name="fkey" value="a913535b3a982898eaaa0dc8ef634f9f5b1ccb75b2cc62f5221d95691c5adde9">

                <input type="hidden" name="ssrc" value="" />

                <input type="hidden" id="oauth_version" name="oauth_version" />
                <input type="hidden" id="oauth_server" name="oauth_server" />

                    <div id="se-login-fields">

                        <input type="hidden" name="legalLinksShown" value="1" />

                        <div class="input-group">
                            <div class="g-row">
                                <label for="display-name" class="g-col -fill">Display name</label>
                                <div class="g-col">
                                    <input id="display-name" name="inline-display-name" type="text" class="f-input" placeholder="J. Doe" data-error-my="right top" data-error-at="left center">
                                </div>
                            </div>
                        </div>

                        <div class="input-group">
                            <div class="g-row">
                                <label for="email" class="g-col -fill">Email address</label>
                                <div class="g-col">
                                    <input id="email" name="inline-email" type="email" maxlength="100" class="f-input" placeholder="you@example.com" data-error-my="right top" data-error-at="left center">
                                </div>
                            </div>
                        </div>

                        <div class="input-group">
                            <div class="g-row">
                                <label for="password" class="g-col -fill">Password</label>
                                <div class="g-col">
                                    <input id="password" name="inline-password" type="password" class="js-inline-signup f-input" placeholder="********" data-error-my="right top" data-error-at="left center">
                                </div>
                            </div>
                        </div>

                        <div class="button-group g-row ai-center jc-sp-between">
                            <input id="submit-button" name="submit-button" class="btn-outlined -white _medium _block" type="button" value="Sign Up">

                            <small class="g-col -policy js-terms">By registering, you agree to the <a href='https://stackexchange.com/legal/privacy-policy' name='privacy' target='_blank' class='-link'>privacy policy</a> and <a href='https://stackexchange.com/legal/terms-of-service' name='tos' target='_blank' class='-link'>terms of service</a>.</small>
                        </div>
                    </div>
            </form>
            <script>
                StackExchange.ready(function () {
                    StackExchange.InlineAuth.init();
                })
            </script>
        </div>

    </div>
</div><script>
    StackExchange.ready(function () {

        StackExchange.Hero.init("hi", "a");

        var location = 0;
        if ($("body").hasClass("questions-page")) {
            location = 7;
        } else if ($("body").hasClass("question-page")) {
            location = 7;
        } else if ($("body").hasClass("faq-page")) {
            location = 5;
        } else if ($("body").hasClass("home-page")) {
            location = 6;
        }

        $('#tell-me-more').click(function () {
            StackExchange.using("gps", function () {
                StackExchange.gps.track("hero.action", { hero_action_type: 'cta', location: location }, true);
            });
        });

        $('.js-dismissable-hero #close').click(function () {
            StackExchange.using("gps", function () {
                StackExchange.gps.track("hero.action", { hero_action_type: "minimize", location: location }, true);
              });

            StackExchange.Hero.dismiss();

            $.ajax({
                url: "/hero-mini",
                success: function (data) {
                    $(".js-dismissable-hero").fadeOut("fast", function () {
                        $(".js-dismissable-hero").replaceWith(data);
                        $("#herobox-mini").fadeIn("fast");
                    });
                }
            });
            return false;
        });
    });
</script>            <div class="s-hero _small _darken">
                <div class="-container">
                    <b>Stack Overflow Business Solutions:</b> Looking to understand, engage, or hire developers? <a href="https://www.stackoverflowbusiness.com/?utm_source=so-homepage&utm_medium=referral&utm_campaign=brand-activation&utm_term=sotob2b-hero-learn-more" class="-link">Learn more &raquo;</a>
                </div>
            </div>
    <script>
        StackExchange.using("gps", function () {
            StackExchange.gps.track("hero.show", { hero_type: "heroinlinesignup", location: 6 }, true);
        });
    </script>
<div class="inner-content">
<div id="mainbar">

        <div class="subheader">
            <h1 id="h-top-questions">
                    Top Questions
            </h1>

<div id="tabs">
        <a class="youarehere " href="?tab=interesting" data-nav-xhref="" title="Questions that may be of interest to you based on your history and tag preference" data-value="interesting" data-shortcut="">
            interesting</a>
        <a href="?tab=featured" data-nav-xhref="" title="Questions with an active bounty" data-value="featured" data-shortcut="B">
<span class="bounty-indicator-tab">353</span>            featured</a>
        <a href="?tab=hot" data-nav-xhref="" title="Questions with the most views, answers, and votes over the last few days" data-value="hot" data-shortcut="H">
            hot</a>
        <a href="?tab=week" data-nav-xhref="" title="Questions with the most views, answers, and votes this week" data-value="week" data-shortcut="W">
            week</a>
        <a href="?tab=month" data-nav-xhref="" title="Questions with the most views, answers, and votes this month" data-value="month" data-shortcut="M">
            month</a>
    </div>
        </div>
<div id="qlist-wrapper">
    <div id="question-mini-list">
        <div>
        
<div class="question-summary narrow"
     id="question-summary-49780195">
    <div onclick="window.location.href='/questions/49780195/image-processing-with-numpy-arrays'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="1 answer">1</span></div>
            <div>answer</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="8 views">8</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780195/image-processing-with-numpy-arrays" class="question-hyperlink">Image processing with numpy arrays</a></h3>
        <div class="tags t-image t-pillow">
            <a href="/questions/tagged/image" class="post-tag" title="show questions tagged &#39;image&#39;" rel="tag">image</a> <a href="/questions/tagged/pillow" class="post-tag" title="show questions tagged &#39;pillow&#39;" rel="tag">pillow</a> 
        </div>
        <div class="started">
            <a href="/questions/49780195/image-processing-with-numpy-arrays/?lastactivity" class="started-link">answered <span title="2018-04-11 17:04:03Z" class="relativetime">20 secs ago</span></a>
            <a href="/users/2487730/zipzit">zipzit</a> <span class="reputation-score" title="reputation score " dir="ltr">1,786</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780807">
    <div onclick="window.location.href='/questions/49780807/manage-environments-with-an-angular-app-in-nginx'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="1 view">1</span></div>
            <div>view</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780807/manage-environments-with-an-angular-app-in-nginx" class="question-hyperlink">Manage environments with an Angular app in Nginx</a></h3>
        <div class="tags t-angular t-docker t-nginx t-environment-variables">
            <a href="/questions/tagged/angular" class="post-tag" title="show questions tagged &#39;angular&#39;" rel="tag">angular</a> <a href="/questions/tagged/docker" class="post-tag" title="show questions tagged &#39;docker&#39;" rel="tag">docker</a> <a href="/questions/tagged/nginx" class="post-tag" title="show questions tagged &#39;nginx&#39;" rel="tag">nginx</a> <a href="/questions/tagged/environment-variables" class="post-tag" title="show questions tagged &#39;environment-variables&#39;" rel="tag">environment-variables</a> 
        </div>
        <div class="started">
            <a href="/questions/49780807/manage-environments-with-an-angular-app-in-nginx" class="started-link">asked <span title="2018-04-11 17:03:59Z" class="relativetime">24 secs ago</span></a>
            <a href="/users/2492508/norticus">NorTicUs</a> <span class="reputation-score" title="reputation score " dir="ltr">333</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49778641">
    <div onclick="window.location.href='/questions/49778641/setting-variable-bar-widths-in-r-barplot'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="1 answer">1</span></div>
            <div>answer</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="27 views">27</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49778641/setting-variable-bar-widths-in-r-barplot" class="question-hyperlink">Setting variable bar widths in R barplot</a></h3>
        <div class="tags t-r t-width t-bar-chart">
            <a href="/questions/tagged/r" class="post-tag" title="show questions tagged &#39;r&#39;" rel="tag">r</a> <a href="/questions/tagged/width" class="post-tag" title="show questions tagged &#39;width&#39;" rel="tag">width</a> <a href="/questions/tagged/bar-chart" class="post-tag" title="show questions tagged &#39;bar-chart&#39;" rel="tag">bar-chart</a> 
        </div>
        <div class="started">
            <a href="/questions/49778641/setting-variable-bar-widths-in-r-barplot/?lastactivity" class="started-link">modified <span title="2018-04-11 17:03:58Z" class="relativetime">24 secs ago</span></a>
            <a href="/users/9631272/katie">Katie</a> <span class="reputation-score" title="reputation score " dir="ltr">6</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780806">
    <div onclick="window.location.href='/questions/49780806/ways-of-transferring-data-through-http'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780806/ways-of-transferring-data-through-http" class="question-hyperlink">Ways of transferring data through HTTP?</a></h3>
        <div class="tags t-web-services">
            <a href="/questions/tagged/web-services" class="post-tag" title="show questions tagged &#39;web-services&#39;" rel="tag">web-services</a> 
        </div>
        <div class="started">
            <a href="/questions/49780806/ways-of-transferring-data-through-http" class="started-link">asked <span title="2018-04-11 17:03:57Z" class="relativetime">26 secs ago</span></a>
            <a href="/users/9631896/idk">idk -</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780805">
    <div onclick="window.location.href='/questions/49780805/grammar-from-a-language'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780805/grammar-from-a-language" class="question-hyperlink">Grammar from a language</a></h3>
        <div class="tags t-programming-languages t-context-free-grammar t-formal-languages t-context-sensitive-grammar t-chomsky-hierarchy">
            <a href="/questions/tagged/programming-languages" class="post-tag" title="show questions tagged &#39;programming-languages&#39;" rel="tag">programming-languages</a> <a href="/questions/tagged/context-free-grammar" class="post-tag" title="show questions tagged &#39;context-free-grammar&#39;" rel="tag">context-free-grammar</a> <a href="/questions/tagged/formal-languages" class="post-tag" title="show questions tagged &#39;formal-languages&#39;" rel="tag">formal-languages</a> <a href="/questions/tagged/context-sensitive-grammar" class="post-tag" title="show questions tagged &#39;context-sensitive-grammar&#39;" rel="tag">context-sensitive-grammar</a> <a href="/questions/tagged/chomsky-hierarchy" class="post-tag" title="show questions tagged &#39;chomsky-hierarchy&#39;" rel="tag">chomsky-hierarchy</a> 
        </div>
        <div class="started">
            <a href="/questions/49780805/grammar-from-a-language" class="started-link">asked <span title="2018-04-11 17:03:55Z" class="relativetime">28 secs ago</span></a>
            <a href="/users/8013975/jox">Jox</a> <span class="reputation-score" title="reputation score " dir="ltr">16</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780804">
    <div onclick="window.location.href='/questions/49780804/accessible-table-of-contents'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780804/accessible-table-of-contents" class="question-hyperlink">Accessible Table of Contents</a></h3>
        <div class="tags t-accessibility t-toc">
            <a href="/questions/tagged/accessibility" class="post-tag" title="show questions tagged &#39;accessibility&#39;" rel="tag">accessibility</a> <a href="/questions/tagged/toc" class="post-tag" title="show questions tagged &#39;toc&#39;" rel="tag">toc</a> 
        </div>
        <div class="started">
            <a href="/questions/49780804/accessible-table-of-contents" class="started-link">asked <span title="2018-04-11 17:03:52Z" class="relativetime">30 secs ago</span></a>
            <a href="/users/9631883/geetha">Geetha</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780802">
    <div onclick="window.location.href='/questions/49780802/where-to-upload-js-file-which-can-be-refer-in-jsfiddle-like-cdn-but-for-free'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780802/where-to-upload-js-file-which-can-be-refer-in-jsfiddle-like-cdn-but-for-free" class="question-hyperlink">Where to upload JS file which can be refer in Jsfiddle like CDN but for free</a></h3>
        <div class="tags t-javascript t-jsfiddle">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/jsfiddle" class="post-tag" title="show questions tagged &#39;jsfiddle&#39;" rel="tag">jsfiddle</a> 
        </div>
        <div class="started">
            <a href="/questions/49780802/where-to-upload-js-file-which-can-be-refer-in-jsfiddle-like-cdn-but-for-free" class="started-link">asked <span title="2018-04-11 17:03:48Z" class="relativetime">35 secs ago</span></a>
            <a href="/users/2857556/alpesh-jikadra">Alpesh Jikadra</a> <span class="reputation-score" title="reputation score " dir="ltr">744</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-48724215">
    <div onclick="window.location.href='/questions/48724215/javascript-avoiding-duplicate-notifications'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="1 answer">1</span></div>
            <div>answer</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="22 views">22</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/48724215/javascript-avoiding-duplicate-notifications" class="question-hyperlink">JavaScript: Avoiding duplicate Notifications</a></h3>
        <div class="tags t-javascript t-notifications">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/notifications" class="post-tag" title="show questions tagged &#39;notifications&#39;" rel="tag">notifications</a> 
        </div>
        <div class="started">
            <a href="/questions/48724215/javascript-avoiding-duplicate-notifications/?lastactivity" class="started-link">answered <span title="2018-04-11 17:03:44Z" class="relativetime">38 secs ago</span></a>
            <a href="/users/5937428/amflare">amflare</a> <span class="reputation-score" title="reputation score " dir="ltr">2,194</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780800">
    <div onclick="window.location.href='/questions/49780800/sending-integer-with-intent-android-studio'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780800/sending-integer-with-intent-android-studio" class="question-hyperlink">Sending integer with intent (android studio)</a></h3>
        <div class="tags t-android t-android-intent">
            <a href="/questions/tagged/android" class="post-tag" title="show questions tagged &#39;android&#39;" rel="tag"><img src="//i.stack.imgur.com/tKsDb.png" height="16" width="18" alt="" class="sponsor-tag-img">android</a> <a href="/questions/tagged/android-intent" class="post-tag" title="show questions tagged &#39;android-intent&#39;" rel="tag">android-intent</a> 
        </div>
        <div class="started">
            <a href="/questions/49780800/sending-integer-with-intent-android-studio" class="started-link">asked <span title="2018-04-11 17:03:44Z" class="relativetime">38 secs ago</span></a>
            <a href="/users/9289723/alper-g%c3%b6ktepe">Alper G&#246;ktepe</a> <span class="reputation-score" title="reputation score " dir="ltr">18</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780799">
    <div onclick="window.location.href='/questions/49780799/for-ptabpanel-show-indicator-when-there-are-multiple-tabs-which-can-be-scrolle'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780799/for-ptabpanel-show-indicator-when-there-are-multiple-tabs-which-can-be-scrolle" class="question-hyperlink">For ptabpanel - Show indicator when there are multiple tabs which can be scrolled to - in Primeng</a></h3>
        <div class="tags t-angular t-primeng t-tabpanel t-tabview">
            <a href="/questions/tagged/angular" class="post-tag" title="show questions tagged &#39;angular&#39;" rel="tag">angular</a> <a href="/questions/tagged/primeng" class="post-tag" title="show questions tagged &#39;primeng&#39;" rel="tag">primeng</a> <a href="/questions/tagged/tabpanel" class="post-tag" title="show questions tagged &#39;tabpanel&#39;" rel="tag">tabpanel</a> <a href="/questions/tagged/tabview" class="post-tag" title="show questions tagged &#39;tabview&#39;" rel="tag">tabview</a> 
        </div>
        <div class="started">
            <a href="/questions/49780799/for-ptabpanel-show-indicator-when-there-are-multiple-tabs-which-can-be-scrolle" class="started-link">asked <span title="2018-04-11 17:03:38Z" class="relativetime">44 secs ago</span></a>
            <a href="/users/9301449/maurya">Maurya</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780667">
    <div onclick="window.location.href='/questions/49780667/github-changes-requested-label-stay-after-i-answered-all-the-code-review-questi'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780667/github-changes-requested-label-stay-after-i-answered-all-the-code-review-questi" class="question-hyperlink">GitHub: Changes requested label stay after I answered all the code review questions</a></h3>
        <div class="tags t-github">
            <a href="/questions/tagged/github" class="post-tag" title="show questions tagged &#39;github&#39;" rel="tag">github</a> 
        </div>
        <div class="started">
            <a href="/questions/49780667/github-changes-requested-label-stay-after-i-answered-all-the-code-review-questi" class="started-link">modified <span title="2018-04-11 17:03:36Z" class="relativetime">46 secs ago</span></a>
            <a href="/users/3485434/eliyahu">Eliyahu</a> <span class="reputation-score" title="reputation score " dir="ltr">1,480</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780781">
    <div onclick="window.location.href='/questions/49780781/python-3-6-input-function'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="6 views">6</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780781/python-3-6-input-function" class="question-hyperlink">Python 3.6 input function</a></h3>
        <div class="tags t-python t-python-3&#251;x">
            <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/python-3.x" class="post-tag" title="show questions tagged &#39;python-3.x&#39;" rel="tag">python-3.x</a> 
        </div>
        <div class="started">
            <a href="/questions/49780781/python-3-6-input-function" class="started-link">modified <span title="2018-04-11 17:03:16Z" class="relativetime">1 min ago</span></a>
            <a href="/users/1222951/aran-fey">Aran-Fey</a> <span class="reputation-score" title="reputation score 15,848" dir="ltr">15.8k</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49778871">
    <div onclick="window.location.href='/questions/49778871/slider-full-html-css'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="19 views">19</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49778871/slider-full-html-css" class="question-hyperlink">Slider full html css</a></h3>
        <div class="tags t-html t-css t-screen t-responsive t-slide">
            <a href="/questions/tagged/html" class="post-tag" title="show questions tagged &#39;html&#39;" rel="tag">html</a> <a href="/questions/tagged/css" class="post-tag" title="show questions tagged &#39;css&#39;" rel="tag">css</a> <a href="/questions/tagged/screen" class="post-tag" title="show questions tagged &#39;screen&#39;" rel="tag">screen</a> <a href="/questions/tagged/responsive" class="post-tag" title="show questions tagged &#39;responsive&#39;" rel="tag">responsive</a> <a href="/questions/tagged/slide" class="post-tag" title="show questions tagged &#39;slide&#39;" rel="tag">slide</a> 
        </div>
        <div class="started">
            <a href="/questions/49778871/slider-full-html-css" class="started-link">modified <span title="2018-04-11 17:03:09Z" class="relativetime">1 min ago</span></a>
            <a href="/users/4099355/henrybrown0">HenryBrown0</a> <span class="reputation-score" title="reputation score " dir="ltr">32</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780793">
    <div onclick="window.location.href='/questions/49780793/pop-up-menu-segue'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780793/pop-up-menu-segue" class="question-hyperlink">Pop Up Menu Segue</a></h3>
        <div class="tags t-ios t-swift t-xcode t-menu t-segue">
            <a href="/questions/tagged/ios" class="post-tag" title="show questions tagged &#39;ios&#39;" rel="tag">ios</a> <a href="/questions/tagged/swift" class="post-tag" title="show questions tagged &#39;swift&#39;" rel="tag">swift</a> <a href="/questions/tagged/xcode" class="post-tag" title="show questions tagged &#39;xcode&#39;" rel="tag">xcode</a> <a href="/questions/tagged/menu" class="post-tag" title="show questions tagged &#39;menu&#39;" rel="tag">menu</a> <a href="/questions/tagged/segue" class="post-tag" title="show questions tagged &#39;segue&#39;" rel="tag">segue</a> 
        </div>
        <div class="started">
            <a href="/questions/49780793/pop-up-menu-segue" class="started-link">asked <span title="2018-04-11 17:02:57Z" class="relativetime">1 min ago</span></a>
            <a href="/users/9620161/jwjbadger">jwjbadger</a> <span class="reputation-score" title="reputation score " dir="ltr">9</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780792">
    <div onclick="window.location.href='/questions/49780792/pycharm-error-highlighting'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780792/pycharm-error-highlighting" class="question-hyperlink">PyCharm - error highlighting?</a></h3>
        <div class="tags t-pycharm">
            <a href="/questions/tagged/pycharm" class="post-tag" title="show questions tagged &#39;pycharm&#39;" rel="tag"><img src="//i.stack.imgur.com/3LrNf.png" height="16" width="18" alt="" class="sponsor-tag-img">pycharm</a> 
        </div>
        <div class="started">
            <a href="/questions/49780792/pycharm-error-highlighting" class="started-link">asked <span title="2018-04-11 17:02:53Z" class="relativetime">1 min ago</span></a>
            <a href="/users/722950/craig">Craig</a> <span class="reputation-score" title="reputation score " dir="ltr">469</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780790">
    <div onclick="window.location.href='/questions/49780790/materialize-initialize-all-items-with-class'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780790/materialize-initialize-all-items-with-class" class="question-hyperlink">Materialize initialize all items with class</a></h3>
        <div class="tags t-javascript t-html t-materialize">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/html" class="post-tag" title="show questions tagged &#39;html&#39;" rel="tag">html</a> <a href="/questions/tagged/materialize" class="post-tag" title="show questions tagged &#39;materialize&#39;" rel="tag">materialize</a> 
        </div>
        <div class="started">
            <a href="/questions/49780790/materialize-initialize-all-items-with-class" class="started-link">asked <span title="2018-04-11 17:02:50Z" class="relativetime">1 min ago</span></a>
            <a href="/users/4837049/felix">Felix</a> <span class="reputation-score" title="reputation score " dir="ltr">18</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780789">
    <div onclick="window.location.href='/questions/49780789/implementation-logic-of-datatable-rowkey-attribute'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780789/implementation-logic-of-datatable-rowkey-attribute" class="question-hyperlink">Implementation logic of datatable rowkey attribute</a></h3>
        <div class="tags t-primefaces t-jsf-2&#251;2">
            <a href="/questions/tagged/primefaces" class="post-tag" title="show questions tagged &#39;primefaces&#39;" rel="tag">primefaces</a> <a href="/questions/tagged/jsf-2.2" class="post-tag" title="show questions tagged &#39;jsf-2.2&#39;" rel="tag">jsf-2.2</a> 
        </div>
        <div class="started">
            <a href="/questions/49780789/implementation-logic-of-datatable-rowkey-attribute" class="started-link">asked <span title="2018-04-11 17:02:49Z" class="relativetime">1 min ago</span></a>
            <a href="/users/5410853/raj-kumar">Raj Kumar</a> <span class="reputation-score" title="reputation score " dir="ltr">35</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780787">
    <div onclick="window.location.href='/questions/49780787/i-have-dataframe-as-below-and-want-to-add-remarks-based-on-the-column-values-usi'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780787/i-have-dataframe-as-below-and-want-to-add-remarks-based-on-the-column-values-usi" class="question-hyperlink">I have dataFrame as below and want to add remarks based on the column values using Scala</a></h3>
        <div class="tags t-scala t-apache-spark">
            <a href="/questions/tagged/scala" class="post-tag" title="show questions tagged &#39;scala&#39;" rel="tag">scala</a> <a href="/questions/tagged/apache-spark" class="post-tag" title="show questions tagged &#39;apache-spark&#39;" rel="tag">apache-spark</a> 
        </div>
        <div class="started">
            <a href="/questions/49780787/i-have-dataframe-as-below-and-want-to-add-remarks-based-on-the-column-values-usi" class="started-link">asked <span title="2018-04-11 17:02:43Z" class="relativetime">1 min ago</span></a>
            <a href="/users/6059250/chandra">Chandra</a> <span class="reputation-score" title="reputation score " dir="ltr">30</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780786">
    <div onclick="window.location.href='/questions/49780786/rotate-an-object-like-orbitcontrols-but-only-the-object-itself'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780786/rotate-an-object-like-orbitcontrols-but-only-the-object-itself" class="question-hyperlink">Rotate an object like OrbitControls but only the object itself</a></h3>
        <div class="tags t-three&#251;js">
            <a href="/questions/tagged/three.js" class="post-tag" title="show questions tagged &#39;three.js&#39;" rel="tag">three.js</a> 
        </div>
        <div class="started">
            <a href="/questions/49780786/rotate-an-object-like-orbitcontrols-but-only-the-object-itself" class="started-link">asked <span title="2018-04-11 17:02:43Z" class="relativetime">1 min ago</span></a>
            <a href="/users/1150681/starfs">Starfs</a> <span class="reputation-score" title="reputation score " dir="ltr">172</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780785">
    <div onclick="window.location.href='/questions/49780785/non-chief-worker-is-throwing-exception-when-i-explicitly-ask-supervisor-to-save'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780785/non-chief-worker-is-throwing-exception-when-i-explicitly-ask-supervisor-to-save" class="question-hyperlink">Non chief worker is throwing exception when I explicitly ask Supervisor to save checkpoint and summaries</a></h3>
        <div class="tags t-tensorflow">
            <a href="/questions/tagged/tensorflow" class="post-tag" title="show questions tagged &#39;tensorflow&#39;" rel="tag">tensorflow</a> 
        </div>
        <div class="started">
            <a href="/questions/49780785/non-chief-worker-is-throwing-exception-when-i-explicitly-ask-supervisor-to-save" class="started-link">asked <span title="2018-04-11 17:02:39Z" class="relativetime">1 min ago</span></a>
            <a href="/users/8115835/rndpavan">rndpavan</a> <span class="reputation-score" title="reputation score " dir="ltr">11</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780780">
    <div onclick="window.location.href='/questions/49780780/how-does-work-a-rpc-call'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780780/how-does-work-a-rpc-call" class="question-hyperlink">How does work a RPC call?</a></h3>
        <div class="tags t-azure-service-fabric t-rpc">
            <a href="/questions/tagged/azure-service-fabric" class="post-tag" title="show questions tagged &#39;azure-service-fabric&#39;" rel="tag">azure-service-fabric</a> <a href="/questions/tagged/rpc" class="post-tag" title="show questions tagged &#39;rpc&#39;" rel="tag">rpc</a> 
        </div>
        <div class="started">
            <a href="/questions/49780780/how-does-work-a-rpc-call" class="started-link">asked <span title="2018-04-11 17:02:30Z" class="relativetime">1 min ago</span></a>
            <a href="/users/5903479/novac">novac</a> <span class="reputation-score" title="reputation score " dir="ltr">83</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780782">
    <div onclick="window.location.href='/questions/49780782/generate-html-form-from-xsd'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780782/generate-html-form-from-xsd" class="question-hyperlink">Generate Html form from xsd</a></h3>
        <div class="tags t-html t-json t-angular t-forms t-tibco-business-works">
            <a href="/questions/tagged/html" class="post-tag" title="show questions tagged &#39;html&#39;" rel="tag">html</a> <a href="/questions/tagged/json" class="post-tag" title="show questions tagged &#39;json&#39;" rel="tag">json</a> <a href="/questions/tagged/angular" class="post-tag" title="show questions tagged &#39;angular&#39;" rel="tag">angular</a> <a href="/questions/tagged/forms" class="post-tag" title="show questions tagged &#39;forms&#39;" rel="tag">forms</a> <a href="/questions/tagged/tibco-business-works" class="post-tag" title="show questions tagged &#39;tibco-business-works&#39;" rel="tag">tibco-business-works</a> 
        </div>
        <div class="started">
            <a href="/questions/49780782/generate-html-form-from-xsd" class="started-link">asked <span title="2018-04-11 17:02:22Z" class="relativetime">2 mins ago</span></a>
            <a href="/users/7850931/hejer-majerda">Hejer Majerda</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780778">
    <div onclick="window.location.href='/questions/49780778/is-it-required-to-check-the-runtime-permission-write-external-storage-when-downl'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780778/is-it-required-to-check-the-runtime-permission-write-external-storage-when-downl" class="question-hyperlink">Is it required to check the runtime permission WRITE_EXTERNAL_STORAGE when downloading a file with the DownloadManager?</a></h3>
        <div class="tags t-android t-android-permissions t-android-download-manager">
            <a href="/questions/tagged/android" class="post-tag" title="show questions tagged &#39;android&#39;" rel="tag"><img src="//i.stack.imgur.com/tKsDb.png" height="16" width="18" alt="" class="sponsor-tag-img">android</a> <a href="/questions/tagged/android-permissions" class="post-tag" title="show questions tagged &#39;android-permissions&#39;" rel="tag">android-permissions</a> <a href="/questions/tagged/android-download-manager" class="post-tag" title="show questions tagged &#39;android-download-manager&#39;" rel="tag">android-download-manager</a> 
        </div>
        <div class="started">
            <a href="/questions/49780778/is-it-required-to-check-the-runtime-permission-write-external-storage-when-downl" class="started-link">asked <span title="2018-04-11 17:02:17Z" class="relativetime">2 mins ago</span></a>
            <a href="/users/431668/giordano">Giordano</a> <span class="reputation-score" title="reputation score " dir="ltr">803</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780261">
    <div onclick="window.location.href='/questions/49780261/css-apply-type-selector-to-another-element'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="2 votes">2</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="20 views">20</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780261/css-apply-type-selector-to-another-element" class="question-hyperlink">CSS apply type selector to another element</a></h3>
        <div class="tags t-html t-css t-css-selectors">
            <a href="/questions/tagged/html" class="post-tag" title="show questions tagged &#39;html&#39;" rel="tag">html</a> <a href="/questions/tagged/css" class="post-tag" title="show questions tagged &#39;css&#39;" rel="tag">css</a> <a href="/questions/tagged/css-selectors" class="post-tag" title="show questions tagged &#39;css-selectors&#39;" rel="tag">css-selectors</a> 
        </div>
        <div class="started">
            <a href="/questions/49780261/css-apply-type-selector-to-another-element" class="started-link">modified <span title="2018-04-11 17:02:01Z" class="relativetime">2 mins ago</span></a>
            <a href="/users/2157272/niehm">Niehm</a> <span class="reputation-score" title="reputation score " dir="ltr">51</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780772">
    <div onclick="window.location.href='/questions/49780772/how-handle-correctly-delete-action'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780772/how-handle-correctly-delete-action" class="question-hyperlink">How handle correctly delete action?</a></h3>
        <div class="tags t-reactjs t-redux t-react-redux t-redux-thunk">
            <a href="/questions/tagged/reactjs" class="post-tag" title="show questions tagged &#39;reactjs&#39;" rel="tag">reactjs</a> <a href="/questions/tagged/redux" class="post-tag" title="show questions tagged &#39;redux&#39;" rel="tag">redux</a> <a href="/questions/tagged/react-redux" class="post-tag" title="show questions tagged &#39;react-redux&#39;" rel="tag">react-redux</a> <a href="/questions/tagged/redux-thunk" class="post-tag" title="show questions tagged &#39;redux-thunk&#39;" rel="tag">redux-thunk</a> 
        </div>
        <div class="started">
            <a href="/questions/49780772/how-handle-correctly-delete-action" class="started-link">asked <span title="2018-04-11 17:01:53Z" class="relativetime">2 mins ago</span></a>
            <a href="/users/9378147/bogdan">Bogdan</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780771">
    <div onclick="window.location.href='/questions/49780771/rotating-an-image-in-opencv-without-the-black-box-and-without-cropping'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="5 views">5</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780771/rotating-an-image-in-opencv-without-the-black-box-and-without-cropping" class="question-hyperlink">Rotating an image in openCV without the black box and without cropping</a></h3>
        <div class="tags t-python t-opencv">
            <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/opencv" class="post-tag" title="show questions tagged &#39;opencv&#39;" rel="tag">opencv</a> 
        </div>
        <div class="started">
            <a href="/questions/49780771/rotating-an-image-in-opencv-without-the-black-box-and-without-cropping" class="started-link">asked <span title="2018-04-11 17:01:51Z" class="relativetime">2 mins ago</span></a>
            <a href="/users/9619561/touchthefishy">TouchTheFishy</a> <span class="reputation-score" title="reputation score " dir="ltr">6</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780770">
    <div onclick="window.location.href='/questions/49780770/getting-rotation-c-sdl'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780770/getting-rotation-c-sdl" class="question-hyperlink">Getting rotation C/SDL</a></h3>
        <div class="tags t-c t-position t-sdl t-angle">
            <a href="/questions/tagged/c" class="post-tag" title="show questions tagged &#39;c&#39;" rel="tag">c</a> <a href="/questions/tagged/position" class="post-tag" title="show questions tagged &#39;position&#39;" rel="tag">position</a> <a href="/questions/tagged/sdl" class="post-tag" title="show questions tagged &#39;sdl&#39;" rel="tag">sdl</a> <a href="/questions/tagged/angle" class="post-tag" title="show questions tagged &#39;angle&#39;" rel="tag">angle</a> 
        </div>
        <div class="started">
            <a href="/questions/49780770/getting-rotation-c-sdl" class="started-link">asked <span title="2018-04-11 17:01:45Z" class="relativetime">2 mins ago</span></a>
            <a href="/users/7520070/omarito">Omarito</a> <span class="reputation-score" title="reputation score " dir="ltr">6</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780765">
    <div onclick="window.location.href='/questions/49780765/quick-way-to-count-number-of-match-of-a-given-character-between-all-pairwise'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780765/quick-way-to-count-number-of-match-of-a-given-character-between-all-pairwise" class="question-hyperlink">Quick way to count number of match of a given character between all pairwise</a></h3>
        <div class="tags t-r t-hamming-distance t-stringdist">
            <a href="/questions/tagged/r" class="post-tag" title="show questions tagged &#39;r&#39;" rel="tag">r</a> <a href="/questions/tagged/hamming-distance" class="post-tag" title="show questions tagged &#39;hamming-distance&#39;" rel="tag">hamming-distance</a> <a href="/questions/tagged/stringdist" class="post-tag" title="show questions tagged &#39;stringdist&#39;" rel="tag">stringdist</a> 
        </div>
        <div class="started">
            <a href="/questions/49780765/quick-way-to-count-number-of-match-of-a-given-character-between-all-pairwise" class="started-link">asked <span title="2018-04-11 17:01:28Z" class="relativetime">2 mins ago</span></a>
            <a href="/users/1319577/celacanto">celacanto</a> <span class="reputation-score" title="reputation score " dir="ltr">63</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780758">
    <div onclick="window.location.href='/questions/49780758/how-to-use-msbuild-to-automate-culture-specific-satellite-assemblies-with-visual'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780758/how-to-use-msbuild-to-automate-culture-specific-satellite-assemblies-with-visual" class="question-hyperlink">How to use MSBUILD to automate culture-specific satellite assemblies with Visual Studio 2017</a></h3>
        <div class="tags t-&#251;net t-msbuild t-localization t-visual-studio-2017 t-satellite-assembly">
            <a href="/questions/tagged/.net" class="post-tag" title="show questions tagged &#39;.net&#39;" rel="tag">.net</a> <a href="/questions/tagged/msbuild" class="post-tag" title="show questions tagged &#39;msbuild&#39;" rel="tag">msbuild</a> <a href="/questions/tagged/localization" class="post-tag" title="show questions tagged &#39;localization&#39;" rel="tag">localization</a> <a href="/questions/tagged/visual-studio-2017" class="post-tag" title="show questions tagged &#39;visual-studio-2017&#39;" rel="tag">visual-studio-2017</a> <a href="/questions/tagged/satellite-assembly" class="post-tag" title="show questions tagged &#39;satellite-assembly&#39;" rel="tag">satellite-assembly</a> 
        </div>
        <div class="started">
            <a href="/questions/49780758/how-to-use-msbuild-to-automate-culture-specific-satellite-assemblies-with-visual" class="started-link">asked <span title="2018-04-11 17:01:08Z" class="relativetime">3 mins ago</span></a>
            <a href="/users/622149/spurgeon">spurgeon</a> <span class="reputation-score" title="reputation score " dir="ltr">537</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780754">
    <div onclick="window.location.href='/questions/49780754/using-yargs-inside-gulp'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780754/using-yargs-inside-gulp" class="question-hyperlink">Using Yargs inside Gulp</a></h3>
        <div class="tags t-gulp t-yargs">
            <a href="/questions/tagged/gulp" class="post-tag" title="show questions tagged &#39;gulp&#39;" rel="tag">gulp</a> <a href="/questions/tagged/yargs" class="post-tag" title="show questions tagged &#39;yargs&#39;" rel="tag">yargs</a> 
        </div>
        <div class="started">
            <a href="/questions/49780754/using-yargs-inside-gulp" class="started-link">asked <span title="2018-04-11 17:00:54Z" class="relativetime">3 mins ago</span></a>
            <a href="/users/2768098/lucbug">Lucbug</a> <span class="reputation-score" title="reputation score " dir="ltr">158</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780746">
    <div onclick="window.location.href='/questions/49780746/refresh-google-api-access-token-with-expo-sdk'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780746/refresh-google-api-access-token-with-expo-sdk" class="question-hyperlink">Refresh Google API access token with Expo SDK?</a></h3>
        <div class="tags t-javascript t-react-native t-fetch t-google-oauth2 t-expo">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/react-native" class="post-tag" title="show questions tagged &#39;react-native&#39;" rel="tag">react-native</a> <a href="/questions/tagged/fetch" class="post-tag" title="show questions tagged &#39;fetch&#39;" rel="tag">fetch</a> <a href="/questions/tagged/google-oauth2" class="post-tag" title="show questions tagged &#39;google-oauth2&#39;" rel="tag">google-oauth2</a> <a href="/questions/tagged/expo" class="post-tag" title="show questions tagged &#39;expo&#39;" rel="tag">expo</a> 
        </div>
        <div class="started">
            <a href="/questions/49780746/refresh-google-api-access-token-with-expo-sdk" class="started-link">asked <span title="2018-04-11 17:00:24Z" class="relativetime">3 mins ago</span></a>
            <a href="/users/4303914/ljmocic">ljmocic</a> <span class="reputation-score" title="reputation score " dir="ltr">33</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780745">
    <div onclick="window.location.href='/questions/49780745/app-debug-apk-does-not-exist-on-disk-error-while-installing-apk'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780745/app-debug-apk-does-not-exist-on-disk-error-while-installing-apk" class="question-hyperlink">app-debug.apk does not exist on disk. Error while Installing APK</a></h3>
        <div class="tags t-android t-apk">
            <a href="/questions/tagged/android" class="post-tag" title="show questions tagged &#39;android&#39;" rel="tag"><img src="//i.stack.imgur.com/tKsDb.png" height="16" width="18" alt="" class="sponsor-tag-img">android</a> <a href="/questions/tagged/apk" class="post-tag" title="show questions tagged &#39;apk&#39;" rel="tag">apk</a> 
        </div>
        <div class="started">
            <a href="/questions/49780745/app-debug-apk-does-not-exist-on-disk-error-while-installing-apk" class="started-link">asked <span title="2018-04-11 17:00:21Z" class="relativetime">4 mins ago</span></a>
            <a href="/users/9568443/andrea">Andrea </a> <span class="reputation-score" title="reputation score " dir="ltr">13</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780744">
    <div onclick="window.location.href='/questions/49780744/jdbc-map-hierarchy-data-self-referencing'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780744/jdbc-map-hierarchy-data-self-referencing" class="question-hyperlink">Jdbc Map Hierarchy Data Self Referencing</a></h3>
        <div class="tags t-jdbc t-spring-jdbc">
            <a href="/questions/tagged/jdbc" class="post-tag" title="show questions tagged &#39;jdbc&#39;" rel="tag">jdbc</a> <a href="/questions/tagged/spring-jdbc" class="post-tag" title="show questions tagged &#39;spring-jdbc&#39;" rel="tag">spring-jdbc</a> 
        </div>
        <div class="started">
            <a href="/questions/49780744/jdbc-map-hierarchy-data-self-referencing" class="started-link">asked <span title="2018-04-11 17:00:18Z" class="relativetime">4 mins ago</span></a>
            <a href="/users/2272004/greyfox">greyfox</a> <span class="reputation-score" title="reputation score " dir="ltr">2,101</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780743">
    <div onclick="window.location.href='/questions/49780743/laravel-passport-oauth-routes-work-but-not-api'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780743/laravel-passport-oauth-routes-work-but-not-api" class="question-hyperlink">Laravel Passport /oauth routes work but not /api</a></h3>
        <div class="tags t-php t-laravel t-vue&#251;js t-oauth-2&#251;0 t-laravel-passport">
            <a href="/questions/tagged/php" class="post-tag" title="show questions tagged &#39;php&#39;" rel="tag">php</a> <a href="/questions/tagged/laravel" class="post-tag" title="show questions tagged &#39;laravel&#39;" rel="tag">laravel</a> <a href="/questions/tagged/vue.js" class="post-tag" title="show questions tagged &#39;vue.js&#39;" rel="tag">vue.js</a> <a href="/questions/tagged/oauth-2.0" class="post-tag" title="show questions tagged &#39;oauth-2.0&#39;" rel="tag">oauth-2.0</a> <a href="/questions/tagged/laravel-passport" class="post-tag" title="show questions tagged &#39;laravel-passport&#39;" rel="tag">laravel-passport</a> 
        </div>
        <div class="started">
            <a href="/questions/49780743/laravel-passport-oauth-routes-work-but-not-api" class="started-link">asked <span title="2018-04-11 17:00:14Z" class="relativetime">4 mins ago</span></a>
            <a href="/users/7410951/micha%c5%82">Michał</a> <span class="reputation-score" title="reputation score " dir="ltr">127</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780694">
    <div onclick="window.location.href='/questions/49780694/cx-oracle-connect-to-oracle-connection-manager'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="5 views">5</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780694/cx-oracle-connect-to-oracle-connection-manager" class="question-hyperlink">cx_Oracle connect to Oracle Connection Manager</a></h3>
        <div class="tags t-python t-cx-oracle">
            <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/cx-oracle" class="post-tag" title="show questions tagged &#39;cx-oracle&#39;" rel="tag">cx-oracle</a> 
        </div>
        <div class="started">
            <a href="/questions/49780694/cx-oracle-connect-to-oracle-connection-manager" class="started-link">modified <span title="2018-04-11 17:00:02Z" class="relativetime">4 mins ago</span></a>
            <a href="/users/7616839/boo">boo</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780741">
    <div onclick="window.location.href='/questions/49780741/specify-project-references-based-on-build-configuration-in-xamarin-visual-studio'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780741/specify-project-references-based-on-build-configuration-in-xamarin-visual-studio" class="question-hyperlink">Specify Project References Based On Build Configuration in Xamarin-Visual Studio (VSTS + App Center)</a></h3>
        <div class="tags t-visual-studio t-xamarin t-vsts t-buildconfiguration t-visual-studio-app-center">
            <a href="/questions/tagged/visual-studio" class="post-tag" title="show questions tagged &#39;visual-studio&#39;" rel="tag">visual-studio</a> <a href="/questions/tagged/xamarin" class="post-tag" title="show questions tagged &#39;xamarin&#39;" rel="tag">xamarin</a> <a href="/questions/tagged/vsts" class="post-tag" title="show questions tagged &#39;vsts&#39;" rel="tag"><img src="//i.stack.imgur.com/e4oT6.png" height="16" width="18" alt="" class="sponsor-tag-img">vsts</a> <a href="/questions/tagged/buildconfiguration" class="post-tag" title="show questions tagged &#39;buildconfiguration&#39;" rel="tag">buildconfiguration</a> <a href="/questions/tagged/visual-studio-app-center" class="post-tag" title="show questions tagged &#39;visual-studio-app-center&#39;" rel="tag">visual-studio-app-center</a> 
        </div>
        <div class="started">
            <a href="/questions/49780741/specify-project-references-based-on-build-configuration-in-xamarin-visual-studio" class="started-link">asked <span title="2018-04-11 17:00:00Z" class="relativetime">4 mins ago</span></a>
            <a href="/users/958941/stezpet">StezPet</a> <span class="reputation-score" title="reputation score " dir="ltr">1,107</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780737">
    <div onclick="window.location.href='/questions/49780737/codel-in-low-latency-networks'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780737/codel-in-low-latency-networks" class="question-hyperlink">CoDel in low latency networks</a></h3>
        <div class="tags t-network-programming t-latency t-low-latency">
            <a href="/questions/tagged/network-programming" class="post-tag" title="show questions tagged &#39;network-programming&#39;" rel="tag">network-programming</a> <a href="/questions/tagged/latency" class="post-tag" title="show questions tagged &#39;latency&#39;" rel="tag">latency</a> <a href="/questions/tagged/low-latency" class="post-tag" title="show questions tagged &#39;low-latency&#39;" rel="tag">low-latency</a> 
        </div>
        <div class="started">
            <a href="/questions/49780737/codel-in-low-latency-networks" class="started-link">asked <span title="2018-04-11 16:59:52Z" class="relativetime">4 mins ago</span></a>
            <a href="/users/4679661/juhist">juhist</a> <span class="reputation-score" title="reputation score " dir="ltr">2,991</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49776292">
    <div onclick="window.location.href='/questions/49776292/why-is-this-not-casting-to-long'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="-1 votes">-1</span></div>
            <div>votes</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="1 answer">1</span></div>
            <div>answer</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="61 views">61</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49776292/why-is-this-not-casting-to-long" class="question-hyperlink">Why is this not casting to long</a></h3>
        <div class="tags t-java t-casting">
            <a href="/questions/tagged/java" class="post-tag" title="show questions tagged &#39;java&#39;" rel="tag">java</a> <a href="/questions/tagged/casting" class="post-tag" title="show questions tagged &#39;casting&#39;" rel="tag">casting</a> 
        </div>
        <div class="started">
            <a href="/questions/49776292/why-is-this-not-casting-to-long/?lastactivity" class="started-link">modified <span title="2018-04-11 16:59:32Z" class="relativetime">4 mins ago</span></a>
            <a href="/users/5772882/ole-v-v">Ole V.V.</a> <span class="reputation-score" title="reputation score 15,753" dir="ltr">15.8k</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-48852903">
    <div onclick="window.location.href='/questions/48852903/implement-arcade-button-aiy-by-google-in-pushtotalk-py'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="54 views">54</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/48852903/implement-arcade-button-aiy-by-google-in-pushtotalk-py" class="question-hyperlink">implement arcade button (aiy by Google) in pushtotalk.py</a></h3>
        <div class="tags t-google-assistant-sdk t-google-aiy">
            <a href="/questions/tagged/google-assistant-sdk" class="post-tag" title="show questions tagged &#39;google-assistant-sdk&#39;" rel="tag"><img src="//i.stack.imgur.com/lHPR7.png" height="16" width="18" alt="" class="sponsor-tag-img">google-assistant-sdk</a> <a href="/questions/tagged/google-aiy" class="post-tag" title="show questions tagged &#39;google-aiy&#39;" rel="tag">google-aiy</a> 
        </div>
        <div class="started">
            <a href="/questions/48852903/implement-arcade-button-aiy-by-google-in-pushtotalk-py" class="started-link">modified <span title="2018-04-11 16:59:29Z" class="relativetime">4 mins ago</span></a>
            <a href="/users/4215429/katie-hurley">Katie Hurley</a> <span class="reputation-score" title="reputation score " dir="ltr">175</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780731">
    <div onclick="window.location.href='/questions/49780731/how-does-drf-handle-serialize-manytomany-fields'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="6 views">6</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780731/how-does-drf-handle-serialize-manytomany-fields" class="question-hyperlink">How does drf handle serialize manytomany fields</a></h3>
        <div class="tags t-django t-python-3&#251;x t-django-rest-framework">
            <a href="/questions/tagged/django" class="post-tag" title="show questions tagged &#39;django&#39;" rel="tag">django</a> <a href="/questions/tagged/python-3.x" class="post-tag" title="show questions tagged &#39;python-3.x&#39;" rel="tag">python-3.x</a> <a href="/questions/tagged/django-rest-framework" class="post-tag" title="show questions tagged &#39;django-rest-framework&#39;" rel="tag">django-rest-framework</a> 
        </div>
        <div class="started">
            <a href="/questions/49780731/how-does-drf-handle-serialize-manytomany-fields" class="started-link">asked <span title="2018-04-11 16:59:20Z" class="relativetime">5 mins ago</span></a>
            <a href="/users/7851361/phamj88">phamj88</a> <span class="reputation-score" title="reputation score " dir="ltr">13</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780727">
    <div onclick="window.location.href='/questions/49780727/copying-text-from-the-anaconda-prompt-on-windows'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780727/copying-text-from-the-anaconda-prompt-on-windows" class="question-hyperlink">Copying text from the Anaconda Prompt on Windows</a></h3>
        <div class="tags t-anaconda t-jupyter-lab">
            <a href="/questions/tagged/anaconda" class="post-tag" title="show questions tagged &#39;anaconda&#39;" rel="tag">anaconda</a> <a href="/questions/tagged/jupyter-lab" class="post-tag" title="show questions tagged &#39;jupyter-lab&#39;" rel="tag">jupyter-lab</a> 
        </div>
        <div class="started">
            <a href="/questions/49780727/copying-text-from-the-anaconda-prompt-on-windows" class="started-link">asked <span title="2018-04-11 16:59:08Z" class="relativetime">5 mins ago</span></a>
            <a href="/users/7740870/aras">Aras</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780230">
    <div onclick="window.location.href='/questions/49780230/how-can-i-keep-blank-before-any-data-is-entered'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="2 answers">2</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="13 views">13</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780230/how-can-i-keep-blank-before-any-data-is-entered" class="question-hyperlink">How can I keep blank before any data is entered?</a></h3>
        <div class="tags t-excel t-excel-formula">
            <a href="/questions/tagged/excel" class="post-tag" title="show questions tagged &#39;excel&#39;" rel="tag">excel</a> <a href="/questions/tagged/excel-formula" class="post-tag" title="show questions tagged &#39;excel-formula&#39;" rel="tag">excel-formula</a> 
        </div>
        <div class="started">
            <a href="/questions/49780230/how-can-i-keep-blank-before-any-data-is-entered/?lastactivity" class="started-link">modified <span title="2018-04-11 16:59:01Z" class="relativetime">5 mins ago</span></a>
            <a href="/users/2200487/ernesthm">ernesthm</a> <span class="reputation-score" title="reputation score " dir="ltr">3</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780722">
    <div onclick="window.location.href='/questions/49780722/systemverilog-interface-nested-interface-vs-modport'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780722/systemverilog-interface-nested-interface-vs-modport" class="question-hyperlink">Systemverilog interface - nested interface vs modport</a></h3>
        <div class="tags t-system-verilog">
            <a href="/questions/tagged/system-verilog" class="post-tag" title="show questions tagged &#39;system-verilog&#39;" rel="tag">system-verilog</a> 
        </div>
        <div class="started">
            <a href="/questions/49780722/systemverilog-interface-nested-interface-vs-modport" class="started-link">asked <span title="2018-04-11 16:58:46Z" class="relativetime">5 mins ago</span></a>
            <a href="/users/832745/nachum">nachum</a> <span class="reputation-score" title="reputation score " dir="ltr">163</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-25772170">
    <div onclick="window.location.href='/questions/25772170/nouislider-update-range-on-demand'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="6 votes">6</span></div>
            <div>votes</div>
        </div>
        <div class="status answered-accepted" title="one of the answers was accepted as the correct answer">
            <div class="mini-counts"><span title="3 answers">3</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts warm"><span title="7510 views">8k</span></div>
            <div class="warm">views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/25772170/nouislider-update-range-on-demand" class="question-hyperlink">NoUIslider - Update range on demand</a></h3>
        <div class="tags t-javascript t-jquery t-uislider t-nouislider">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/jquery" class="post-tag" title="show questions tagged &#39;jquery&#39;" rel="tag">jquery</a> <a href="/questions/tagged/uislider" class="post-tag" title="show questions tagged &#39;uislider&#39;" rel="tag">uislider</a> <a href="/questions/tagged/nouislider" class="post-tag" title="show questions tagged &#39;nouislider&#39;" rel="tag">nouislider</a> 
        </div>
        <div class="started">
            <a href="/questions/25772170/nouislider-update-range-on-demand/?lastactivity" class="started-link">modified <span title="2018-04-11 16:58:37Z" class="relativetime">5 mins ago</span></a>
            <a href="/users/775265/lg102">Lg102</a> <span class="reputation-score" title="reputation score " dir="ltr">2,490</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780197">
    <div onclick="window.location.href='/questions/49780197/convert-spark-dataframe-map-column-to-json'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780197/convert-spark-dataframe-map-column-to-json" class="question-hyperlink">Convert spark dataframe map column to json</a></h3>
        <div class="tags t-spark-dataframe t-json4s">
            <a href="/questions/tagged/spark-dataframe" class="post-tag" title="show questions tagged &#39;spark-dataframe&#39;" rel="tag">spark-dataframe</a> <a href="/questions/tagged/json4s" class="post-tag" title="show questions tagged &#39;json4s&#39;" rel="tag">json4s</a> 
        </div>
        <div class="started">
            <a href="/questions/49780197/convert-spark-dataframe-map-column-to-json" class="started-link">modified <span title="2018-04-11 16:58:34Z" class="relativetime">5 mins ago</span></a>
            <a href="/users/9505185/monika">Monika</a> <span class="reputation-score" title="reputation score " dir="ltr">31</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780717">
    <div onclick="window.location.href='/questions/49780717/bcp-export-xml-sql-server-encoding'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="5 views">5</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780717/bcp-export-xml-sql-server-encoding" class="question-hyperlink">BCP EXPORT XML SQL SERVER - ENCODING</a></h3>
        <div class="tags t-sql t-xml t-encoding t-bcp">
            <a href="/questions/tagged/sql" class="post-tag" title="show questions tagged &#39;sql&#39;" rel="tag">sql</a> <a href="/questions/tagged/xml" class="post-tag" title="show questions tagged &#39;xml&#39;" rel="tag">xml</a> <a href="/questions/tagged/encoding" class="post-tag" title="show questions tagged &#39;encoding&#39;" rel="tag">encoding</a> <a href="/questions/tagged/bcp" class="post-tag" title="show questions tagged &#39;bcp&#39;" rel="tag">bcp</a> 
        </div>
        <div class="started">
            <a href="/questions/49780717/bcp-export-xml-sql-server-encoding" class="started-link">asked <span title="2018-04-11 16:58:29Z" class="relativetime">5 mins ago</span></a>
            <a href="/users/6486507/silvino-marques">Silvino Marques</a> <span class="reputation-score" title="reputation score " dir="ltr">9</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780716">
    <div onclick="window.location.href='/questions/49780716/how-to-extend-the-htmlbuilder-class-in-laravel-4'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780716/how-to-extend-the-htmlbuilder-class-in-laravel-4" class="question-hyperlink">How to extend the HtmlBuilder class in laravel 4?</a></h3>
        <div class="tags t-laravel-4">
            <a href="/questions/tagged/laravel-4" class="post-tag" title="show questions tagged &#39;laravel-4&#39;" rel="tag">laravel-4</a> 
        </div>
        <div class="started">
            <a href="/questions/49780716/how-to-extend-the-htmlbuilder-class-in-laravel-4" class="started-link">asked <span title="2018-04-11 16:58:26Z" class="relativetime">5 mins ago</span></a>
            <a href="/users/5729075/budiantoip">budiantoip</a> <span class="reputation-score" title="reputation score " dir="ltr">498</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780715">
    <div onclick="window.location.href='/questions/49780715/suppress-key-bing-with-keypressevent'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780715/suppress-key-bing-with-keypressevent" class="question-hyperlink">Suppress Key &ldquo;Bing&rdquo; with KeyPressEvent?</a></h3>
        <div class="tags t-c&#241; t-keypress t-keydown">
            <a href="/questions/tagged/c%23" class="post-tag" title="show questions tagged &#39;c#&#39;" rel="tag">c#</a> <a href="/questions/tagged/keypress" class="post-tag" title="show questions tagged &#39;keypress&#39;" rel="tag">keypress</a> <a href="/questions/tagged/keydown" class="post-tag" title="show questions tagged &#39;keydown&#39;" rel="tag">keydown</a> 
        </div>
        <div class="started">
            <a href="/questions/49780715/suppress-key-bing-with-keypressevent" class="started-link">asked <span title="2018-04-11 16:58:24Z" class="relativetime">5 mins ago</span></a>
            <a href="/users/1057547/dognose">dognose</a> <span class="reputation-score" title="reputation score 14,392" dir="ltr">14.4k</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780652">
    <div onclick="window.location.href='/questions/49780652/either-renameto-or-delete-not-working'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="13 views">13</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780652/either-renameto-or-delete-not-working" class="question-hyperlink">Either renameTo or delete() not working</a></h3>
        <div class="tags t-java t-file t-java-io">
            <a href="/questions/tagged/java" class="post-tag" title="show questions tagged &#39;java&#39;" rel="tag">java</a> <a href="/questions/tagged/file" class="post-tag" title="show questions tagged &#39;file&#39;" rel="tag">file</a> <a href="/questions/tagged/java-io" class="post-tag" title="show questions tagged &#39;java-io&#39;" rel="tag">java-io</a> 
        </div>
        <div class="started">
            <a href="/questions/49780652/either-renameto-or-delete-not-working" class="started-link">modified <span title="2018-04-11 16:58:20Z" class="relativetime">6 mins ago</span></a>
            <a href="/users/418556/andrew-thompson">Andrew Thompson</a> <span class="reputation-score" title="reputation score 148,996" dir="ltr">149k</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780708">
    <div onclick="window.location.href='/questions/49780708/codeigniter-2-2-6-is-showing-404-page-not-found'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780708/codeigniter-2-2-6-is-showing-404-page-not-found" class="question-hyperlink">Codeigniter 2.2.6 is showing 404 Page Not Found</a></h3>
        <div class="tags t-php t-&#251;htaccess t-codeigniter t-codeigniter-2">
            <a href="/questions/tagged/php" class="post-tag" title="show questions tagged &#39;php&#39;" rel="tag">php</a> <a href="/questions/tagged/.htaccess" class="post-tag" title="show questions tagged &#39;.htaccess&#39;" rel="tag">.htaccess</a> <a href="/questions/tagged/codeigniter" class="post-tag" title="show questions tagged &#39;codeigniter&#39;" rel="tag">codeigniter</a> <a href="/questions/tagged/codeigniter-2" class="post-tag" title="show questions tagged &#39;codeigniter-2&#39;" rel="tag">codeigniter-2</a> 
        </div>
        <div class="started">
            <a href="/questions/49780708/codeigniter-2-2-6-is-showing-404-page-not-found" class="started-link">asked <span title="2018-04-11 16:57:58Z" class="relativetime">6 mins ago</span></a>
            <a href="/users/6119009/fernando-urban">Fernando Urban</a> <span class="reputation-score" title="reputation score " dir="ltr">307</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780707">
    <div onclick="window.location.href='/questions/49780707/poplating-an-editorfor-based-on-a-ddl-selection-without-a-postback-in-mvc'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780707/poplating-an-editorfor-based-on-a-ddl-selection-without-a-postback-in-mvc" class="question-hyperlink">Poplating an EditorFor based on a DDL selection without a postback in MVC</a></h3>
        <div class="tags t-c&#241; t-model-view-controller">
            <a href="/questions/tagged/c%23" class="post-tag" title="show questions tagged &#39;c#&#39;" rel="tag">c#</a> <a href="/questions/tagged/model-view-controller" class="post-tag" title="show questions tagged &#39;model-view-controller&#39;" rel="tag">model-view-controller</a> 
        </div>
        <div class="started">
            <a href="/questions/49780707/poplating-an-editorfor-based-on-a-ddl-selection-without-a-postback-in-mvc" class="started-link">asked <span title="2018-04-11 16:57:51Z" class="relativetime">6 mins ago</span></a>
            <a href="/users/8796902/borges">Borges</a> <span class="reputation-score" title="reputation score " dir="ltr">13</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780704">
    <div onclick="window.location.href='/questions/49780704/symfony-appextension-not-loaded'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780704/symfony-appextension-not-loaded" class="question-hyperlink">Symfony AppExtension not loaded</a></h3>
        <div class="tags t-php t-symfony t-symfony4">
            <a href="/questions/tagged/php" class="post-tag" title="show questions tagged &#39;php&#39;" rel="tag">php</a> <a href="/questions/tagged/symfony" class="post-tag" title="show questions tagged &#39;symfony&#39;" rel="tag">symfony</a> <a href="/questions/tagged/symfony4" class="post-tag" title="show questions tagged &#39;symfony4&#39;" rel="tag">symfony4</a> 
        </div>
        <div class="started">
            <a href="/questions/49780704/symfony-appextension-not-loaded" class="started-link">asked <span title="2018-04-11 16:57:43Z" class="relativetime">6 mins ago</span></a>
            <a href="/users/6144818/cnmicha">cnmicha</a> <span class="reputation-score" title="reputation score " dir="ltr">32</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49765545">
    <div onclick="window.location.href='/questions/49765545/how-do-i-debug-critical-javascript-errors-syntax-script1002-in-visual-studio-o'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="1 answer">1</span></div>
            <div>answer</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="35 views">35</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49765545/how-do-i-debug-critical-javascript-errors-syntax-script1002-in-visual-studio-o" class="question-hyperlink">How do I debug critical JavaScript errors (syntax/SCRIPT1002) in Visual Studio or IE11?</a></h3>
        <div class="tags t-javascript t-visual-studio t-visual-studio-2017 t-internet-explorer-11">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/visual-studio" class="post-tag" title="show questions tagged &#39;visual-studio&#39;" rel="tag">visual-studio</a> <a href="/questions/tagged/visual-studio-2017" class="post-tag" title="show questions tagged &#39;visual-studio-2017&#39;" rel="tag">visual-studio-2017</a> <a href="/questions/tagged/internet-explorer-11" class="post-tag" title="show questions tagged &#39;internet-explorer-11&#39;" rel="tag">internet-explorer-11</a> 
        </div>
        <div class="started">
            <a href="/questions/49765545/how-do-i-debug-critical-javascript-errors-syntax-script1002-in-visual-studio-o/?lastactivity" class="started-link">modified <span title="2018-04-11 16:57:25Z" class="relativetime">6 mins ago</span></a>
            <a href="/users/1473075/petter-h%c3%a4ggholm">Petter H&#228;ggholm</a> <span class="reputation-score" title="reputation score " dir="ltr">56</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49779493">
    <div onclick="window.location.href='/questions/49779493/how-can-i-assign-a-class-to-an-element-depending-on-which-radio-button-is-select'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="-1 votes">-1</span></div>
            <div>votes</div>
        </div>
        <div class="status answered-accepted" title="one of the answers was accepted as the correct answer">
            <div class="mini-counts"><span title="2 answers">2</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="29 views">29</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49779493/how-can-i-assign-a-class-to-an-element-depending-on-which-radio-button-is-select" class="question-hyperlink">How can I assign a class to an element depending on which radio button is selected?</a></h3>
        <div class="tags t-javascript t-html">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/html" class="post-tag" title="show questions tagged &#39;html&#39;" rel="tag">html</a> 
        </div>
        <div class="started">
            <a href="/questions/49779493/how-can-i-assign-a-class-to-an-element-depending-on-which-radio-button-is-select/?lastactivity" class="started-link">modified <span title="2018-04-11 16:57:23Z" class="relativetime">6 mins ago</span></a>
            <a href="/users/1819684/gforce301">gforce301</a> <span class="reputation-score" title="reputation score " dir="ltr">1,494</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780700">
    <div onclick="window.location.href='/questions/49780700/validation-depending-on-two-inputs-using-availity-reactstrap-validation'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780700/validation-depending-on-two-inputs-using-availity-reactstrap-validation" class="question-hyperlink">Validation depending on two inputs using availity-reactstrap-validation</a></h3>
        <div class="tags t-reactjs t-jhipster">
            <a href="/questions/tagged/reactjs" class="post-tag" title="show questions tagged &#39;reactjs&#39;" rel="tag">reactjs</a> <a href="/questions/tagged/jhipster" class="post-tag" title="show questions tagged &#39;jhipster&#39;" rel="tag">jhipster</a> 
        </div>
        <div class="started">
            <a href="/questions/49780700/validation-depending-on-two-inputs-using-availity-reactstrap-validation" class="started-link">asked <span title="2018-04-11 16:57:23Z" class="relativetime">6 mins ago</span></a>
            <a href="/users/2299428/hirro">hirro</a> <span class="reputation-score" title="reputation score " dir="ltr">354</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780698">
    <div onclick="window.location.href='/questions/49780698/spreading-values-across-lists-in-bins'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="2 votes">2</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="13 views">13</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780698/spreading-values-across-lists-in-bins" class="question-hyperlink">Spreading values across lists in bins</a></h3>
        <div class="tags t-python t-python-3&#251;x t-python-2&#251;7">
            <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/python-3.x" class="post-tag" title="show questions tagged &#39;python-3.x&#39;" rel="tag">python-3.x</a> <a href="/questions/tagged/python-2.7" class="post-tag" title="show questions tagged &#39;python-2.7&#39;" rel="tag">python-2.7</a> 
        </div>
        <div class="started">
            <a href="/questions/49780698/spreading-values-across-lists-in-bins" class="started-link">asked <span title="2018-04-11 16:57:17Z" class="relativetime">7 mins ago</span></a>
            <a href="/users/7908852/arsenal88">arsenal88</a> <span class="reputation-score" title="reputation score " dir="ltr">184</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780696">
    <div onclick="window.location.href='/questions/49780696/variables-to-edit-for-parabolic-curve'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780696/variables-to-edit-for-parabolic-curve" class="question-hyperlink">variables to edit for parabolic -/+ curve</a></h3>
        <div class="tags t-variables t-curves">
            <a href="/questions/tagged/variables" class="post-tag" title="show questions tagged &#39;variables&#39;" rel="tag">variables</a> <a href="/questions/tagged/curves" class="post-tag" title="show questions tagged &#39;curves&#39;" rel="tag">curves</a> 
        </div>
        <div class="started">
            <a href="/questions/49780696/variables-to-edit-for-parabolic-curve" class="started-link">asked <span title="2018-04-11 16:57:12Z" class="relativetime">7 mins ago</span></a>
            <a href="/users/2109038/confused">Confused</a> <span class="reputation-score" title="reputation score " dir="ltr">3,034</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49765222">
    <div onclick="window.location.href='/questions/49765222/c-ceil-in-stooge-sort-not-working'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="1 answer">1</span></div>
            <div>answer</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="31 views">31</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49765222/c-ceil-in-stooge-sort-not-working" class="question-hyperlink">c++ ceil() in stooge sort not working</a></h3>
        <div class="tags t-c&#231;&#231; t-sorting t-ceil">
            <a href="/questions/tagged/c%2b%2b" class="post-tag" title="show questions tagged &#39;c++&#39;" rel="tag">c++</a> <a href="/questions/tagged/sorting" class="post-tag" title="show questions tagged &#39;sorting&#39;" rel="tag">sorting</a> <a href="/questions/tagged/ceil" class="post-tag" title="show questions tagged &#39;ceil&#39;" rel="tag">ceil</a> 
        </div>
        <div class="started">
            <a href="/questions/49765222/c-ceil-in-stooge-sort-not-working/?lastactivity" class="started-link">modified <span title="2018-04-11 16:57:01Z" class="relativetime">7 mins ago</span></a>
            <a href="/users/9125195/sid-s">Sid S</a> <span class="reputation-score" title="reputation score " dir="ltr">2,013</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780688">
    <div onclick="window.location.href='/questions/49780688/db2-as400-ibm-iseries-tiggers-on-file-change'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780688/db2-as400-ibm-iseries-tiggers-on-file-change" class="question-hyperlink">DB2 AS400/IBM ISeries Tiggers/On File Change</a></h3>
        <div class="tags t-db2 t-oledb t-ibm-midrange">
            <a href="/questions/tagged/db2" class="post-tag" title="show questions tagged &#39;db2&#39;" rel="tag">db2</a> <a href="/questions/tagged/oledb" class="post-tag" title="show questions tagged &#39;oledb&#39;" rel="tag">oledb</a> <a href="/questions/tagged/ibm-midrange" class="post-tag" title="show questions tagged &#39;ibm-midrange&#39;" rel="tag">ibm-midrange</a> 
        </div>
        <div class="started">
            <a href="/questions/49780688/db2-as400-ibm-iseries-tiggers-on-file-change" class="started-link">asked <span title="2018-04-11 16:56:56Z" class="relativetime">7 mins ago</span></a>
            <a href="/users/3059575/ya-wang">Ya Wang</a> <span class="reputation-score" title="reputation score " dir="ltr">1,063</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49755019">
    <div onclick="window.location.href='/questions/49755019/are-rdf-and-rdfs-two-separate-documents'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="2 answers">2</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="30 views">30</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49755019/are-rdf-and-rdfs-two-separate-documents" class="question-hyperlink">Are RDF and RDFS two separate documents?</a></h3>
        <div class="tags t-rdf t-rdfs">
            <a href="/questions/tagged/rdf" class="post-tag" title="show questions tagged &#39;rdf&#39;" rel="tag">rdf</a> <a href="/questions/tagged/rdfs" class="post-tag" title="show questions tagged &#39;rdfs&#39;" rel="tag">rdfs</a> 
        </div>
        <div class="started">
            <a href="/questions/49755019/are-rdf-and-rdfs-two-separate-documents/?lastactivity" class="started-link">answered <span title="2018-04-11 16:56:52Z" class="relativetime">7 mins ago</span></a>
            <a href="/users/1281433/joshua-taylor">Joshua Taylor</a> <span class="reputation-score" title="reputation score 70,968" dir="ltr">71k</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-45921692">
    <div onclick="window.location.href='/questions/45921692/sapui5-responsive-form-more-than-one-column-in-one-row'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="2 answers">2</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="267 views">267</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/45921692/sapui5-responsive-form-more-than-one-column-in-one-row" class="question-hyperlink">SAPUI5 - responsive form - more than one column in one row</a></h3>
        <div class="tags t-sapui5">
            <a href="/questions/tagged/sapui5" class="post-tag" title="show questions tagged &#39;sapui5&#39;" rel="tag">sapui5</a> 
        </div>
        <div class="started">
            <a href="/questions/45921692/sapui5-responsive-form-more-than-one-column-in-one-row/?lastactivity" class="started-link">answered <span title="2018-04-11 16:56:48Z" class="relativetime">7 mins ago</span></a>
            <a href="/users/2007643/gaunt">Gaunt</a> <span class="reputation-score" title="reputation score " dir="ltr">186</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780680">
    <div onclick="window.location.href='/questions/49780680/rundeck-http-error-500-when-logging-in-as-admin'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780680/rundeck-http-error-500-when-logging-in-as-admin" class="question-hyperlink">Rundeck: http error 500: when logging in as admin</a></h3>
        <div class="tags t-properties t-ldap t-config t-rundeck t-j-security-check">
            <a href="/questions/tagged/properties" class="post-tag" title="show questions tagged &#39;properties&#39;" rel="tag">properties</a> <a href="/questions/tagged/ldap" class="post-tag" title="show questions tagged &#39;ldap&#39;" rel="tag">ldap</a> <a href="/questions/tagged/config" class="post-tag" title="show questions tagged &#39;config&#39;" rel="tag">config</a> <a href="/questions/tagged/rundeck" class="post-tag" title="show questions tagged &#39;rundeck&#39;" rel="tag">rundeck</a> <a href="/questions/tagged/j-security-check" class="post-tag" title="show questions tagged &#39;j-security-check&#39;" rel="tag">j-security-check</a> 
        </div>
        <div class="started">
            <a href="/questions/49780680/rundeck-http-error-500-when-logging-in-as-admin" class="started-link">asked <span title="2018-04-11 16:56:33Z" class="relativetime">7 mins ago</span></a>
            <a href="/users/9631824/user9631824">user9631824</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780676">
    <div onclick="window.location.href='/questions/49780676/grafana-combine-three-single-stats-into-another-single-stat'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780676/grafana-combine-three-single-stats-into-another-single-stat" class="question-hyperlink">Grafana - Combine three single stats into another single stat</a></h3>
        <div class="tags t-influxdb t-grafana">
            <a href="/questions/tagged/influxdb" class="post-tag" title="show questions tagged &#39;influxdb&#39;" rel="tag">influxdb</a> <a href="/questions/tagged/grafana" class="post-tag" title="show questions tagged &#39;grafana&#39;" rel="tag">grafana</a> 
        </div>
        <div class="started">
            <a href="/questions/49780676/grafana-combine-three-single-stats-into-another-single-stat" class="started-link">asked <span title="2018-04-11 16:56:15Z" class="relativetime">8 mins ago</span></a>
            <a href="/users/2653384/busturdust">Busturdust</a> <span class="reputation-score" title="reputation score " dir="ltr">1,196</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780671">
    <div onclick="window.location.href='/questions/49780671/react-native-async-await-do-not-work-strange-behavior'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="7 views">7</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780671/react-native-async-await-do-not-work-strange-behavior" class="question-hyperlink">React native async/await do not work, strange behavior</a></h3>
        <div class="tags t-javascript t-reactjs t-react-native t-async-await t-fetch">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/reactjs" class="post-tag" title="show questions tagged &#39;reactjs&#39;" rel="tag">reactjs</a> <a href="/questions/tagged/react-native" class="post-tag" title="show questions tagged &#39;react-native&#39;" rel="tag">react-native</a> <a href="/questions/tagged/async-await" class="post-tag" title="show questions tagged &#39;async-await&#39;" rel="tag">async-await</a> <a href="/questions/tagged/fetch" class="post-tag" title="show questions tagged &#39;fetch&#39;" rel="tag">fetch</a> 
        </div>
        <div class="started">
            <a href="/questions/49780671/react-native-async-await-do-not-work-strange-behavior" class="started-link">asked <span title="2018-04-11 16:56:07Z" class="relativetime">8 mins ago</span></a>
            <a href="/users/1593893/angel">angel</a> <span class="reputation-score" title="reputation score " dir="ltr">93</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780668">
    <div onclick="window.location.href='/questions/49780668/syntax-error-on-const-level-messages-when-trying-to-run-meteor-application'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780668/syntax-error-on-const-level-messages-when-trying-to-run-meteor-application" class="question-hyperlink">Syntax error on const {LEVEL,MESSAGES} when trying to run meteor application</a></h3>
        <div class="tags t-javascript t-node&#251;js t-meteor">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/node.js" class="post-tag" title="show questions tagged &#39;node.js&#39;" rel="tag">node.js</a> <a href="/questions/tagged/meteor" class="post-tag" title="show questions tagged &#39;meteor&#39;" rel="tag">meteor</a> 
        </div>
        <div class="started">
            <a href="/questions/49780668/syntax-error-on-const-level-messages-when-trying-to-run-meteor-application" class="started-link">asked <span title="2018-04-11 16:56:01Z" class="relativetime">8 mins ago</span></a>
            <a href="/users/1245240/robert-h">Robert H</a> <span class="reputation-score" title="reputation score " dir="ltr">7,225</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780662">
    <div onclick="window.location.href='/questions/49780662/yii2-basic-application-page-load-testing-with-apache-jmeter-freezes-server'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780662/yii2-basic-application-page-load-testing-with-apache-jmeter-freezes-server" class="question-hyperlink">Yii2 basic application page - load testing with apache jmeter freezes server</a></h3>
        <div class="tags t-windows t-apache t-performance t-yii2 t-jmeter">
            <a href="/questions/tagged/windows" class="post-tag" title="show questions tagged &#39;windows&#39;" rel="tag">windows</a> <a href="/questions/tagged/apache" class="post-tag" title="show questions tagged &#39;apache&#39;" rel="tag">apache</a> <a href="/questions/tagged/performance" class="post-tag" title="show questions tagged &#39;performance&#39;" rel="tag">performance</a> <a href="/questions/tagged/yii2" class="post-tag" title="show questions tagged &#39;yii2&#39;" rel="tag">yii2</a> <a href="/questions/tagged/jmeter" class="post-tag" title="show questions tagged &#39;jmeter&#39;" rel="tag">jmeter</a> 
        </div>
        <div class="started">
            <a href="/questions/49780662/yii2-basic-application-page-load-testing-with-apache-jmeter-freezes-server" class="started-link">asked <span title="2018-04-11 16:55:50Z" class="relativetime">8 mins ago</span></a>
            <a href="/users/3393837/arjun">arjun</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780660">
    <div onclick="window.location.href='/questions/49780660/codeigniter-404-not-found-nginx'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780660/codeigniter-404-not-found-nginx" class="question-hyperlink">codeigniter 404 not found nginx</a></h3>
        <div class="tags t-codeigniter t-nginx">
            <a href="/questions/tagged/codeigniter" class="post-tag" title="show questions tagged &#39;codeigniter&#39;" rel="tag">codeigniter</a> <a href="/questions/tagged/nginx" class="post-tag" title="show questions tagged &#39;nginx&#39;" rel="tag">nginx</a> 
        </div>
        <div class="started">
            <a href="/questions/49780660/codeigniter-404-not-found-nginx" class="started-link">asked <span title="2018-04-11 16:55:45Z" class="relativetime">8 mins ago</span></a>
            <a href="/users/5845689/deepak-shinde">Deepak Shinde</a> <span class="reputation-score" title="reputation score " dir="ltr">41</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780656">
    <div onclick="window.location.href='/questions/49780656/how-to-redirect-a-react-component-on-set-timeout'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="4 views">4</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780656/how-to-redirect-a-react-component-on-set-timeout" class="question-hyperlink">how to redirect a react component on set timeout</a></h3>
        <div class="tags t-javascript t-reactjs t-react-router t-settimeout">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/reactjs" class="post-tag" title="show questions tagged &#39;reactjs&#39;" rel="tag">reactjs</a> <a href="/questions/tagged/react-router" class="post-tag" title="show questions tagged &#39;react-router&#39;" rel="tag">react-router</a> <a href="/questions/tagged/settimeout" class="post-tag" title="show questions tagged &#39;settimeout&#39;" rel="tag">settimeout</a> 
        </div>
        <div class="started">
            <a href="/questions/49780656/how-to-redirect-a-react-component-on-set-timeout" class="started-link">asked <span title="2018-04-11 16:55:38Z" class="relativetime">8 mins ago</span></a>
            <a href="/users/8076132/jdip88">jdip88</a> <span class="reputation-score" title="reputation score " dir="ltr">33</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780654">
    <div onclick="window.location.href='/questions/49780654/spring-security-cas-backup-login-page-in-case-of-cas-failure'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780654/spring-security-cas-backup-login-page-in-case-of-cas-failure" class="question-hyperlink">Spring Security &amp; CAS - Backup login page in case of CAS failure?</a></h3>
        <div class="tags t-spring t-spring-security t-single-sign-on t-cas">
            <a href="/questions/tagged/spring" class="post-tag" title="show questions tagged &#39;spring&#39;" rel="tag">spring</a> <a href="/questions/tagged/spring-security" class="post-tag" title="show questions tagged &#39;spring-security&#39;" rel="tag">spring-security</a> <a href="/questions/tagged/single-sign-on" class="post-tag" title="show questions tagged &#39;single-sign-on&#39;" rel="tag">single-sign-on</a> <a href="/questions/tagged/cas" class="post-tag" title="show questions tagged &#39;cas&#39;" rel="tag">cas</a> 
        </div>
        <div class="started">
            <a href="/questions/49780654/spring-security-cas-backup-login-page-in-case-of-cas-failure" class="started-link">asked <span title="2018-04-11 16:55:35Z" class="relativetime">8 mins ago</span></a>
            <a href="/users/1825770/user1825770">user1825770</a> <span class="reputation-score" title="reputation score " dir="ltr">87</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780651">
    <div onclick="window.location.href='/questions/49780651/the-app-could-not-be-located'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780651/the-app-could-not-be-located" class="question-hyperlink">The app could not be located</a></h3>
        <div class="tags t-unity3d t-crashlytics">
            <a href="/questions/tagged/unity3d" class="post-tag" title="show questions tagged &#39;unity3d&#39;" rel="tag">unity3d</a> <a href="/questions/tagged/crashlytics" class="post-tag" title="show questions tagged &#39;crashlytics&#39;" rel="tag">crashlytics</a> 
        </div>
        <div class="started">
            <a href="/questions/49780651/the-app-could-not-be-located" class="started-link">asked <span title="2018-04-11 16:55:24Z" class="relativetime">8 mins ago</span></a>
            <a href="/users/7781328/shamanimal">Shamanimal</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780644">
    <div onclick="window.location.href='/questions/49780644/vcs-project-import-not-working-on-android-studio'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780644/vcs-project-import-not-working-on-android-studio" class="question-hyperlink">VCS project import not working on Android Studio</a></h3>
        <div class="tags t-android t-git t-android-studio t-version-control t-bitbucket">
            <a href="/questions/tagged/android" class="post-tag" title="show questions tagged &#39;android&#39;" rel="tag"><img src="//i.stack.imgur.com/tKsDb.png" height="16" width="18" alt="" class="sponsor-tag-img">android</a> <a href="/questions/tagged/git" class="post-tag" title="show questions tagged &#39;git&#39;" rel="tag">git</a> <a href="/questions/tagged/android-studio" class="post-tag" title="show questions tagged &#39;android-studio&#39;" rel="tag"><img src="//i.stack.imgur.com/xqoqk.png" height="16" width="18" alt="" class="sponsor-tag-img">android-studio</a> <a href="/questions/tagged/version-control" class="post-tag" title="show questions tagged &#39;version-control&#39;" rel="tag">version-control</a> <a href="/questions/tagged/bitbucket" class="post-tag" title="show questions tagged &#39;bitbucket&#39;" rel="tag">bitbucket</a> 
        </div>
        <div class="started">
            <a href="/questions/49780644/vcs-project-import-not-working-on-android-studio" class="started-link">asked <span title="2018-04-11 16:55:00Z" class="relativetime">9 mins ago</span></a>
            <a href="/users/1320643/omar-hesham">Omar Hesham</a> <span class="reputation-score" title="reputation score " dir="ltr">52</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780639">
    <div onclick="window.location.href='/questions/49780639/should-latest-event-version-be-queried-in-event-sourcing'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780639/should-latest-event-version-be-queried-in-event-sourcing" class="question-hyperlink">should latest event version be queried in event sourcing?</a></h3>
        <div class="tags t-domain-driven-design t-cqrs t-event-sourcing t-event-store t-event-stream">
            <a href="/questions/tagged/domain-driven-design" class="post-tag" title="show questions tagged &#39;domain-driven-design&#39;" rel="tag">domain-driven-design</a> <a href="/questions/tagged/cqrs" class="post-tag" title="show questions tagged &#39;cqrs&#39;" rel="tag">cqrs</a> <a href="/questions/tagged/event-sourcing" class="post-tag" title="show questions tagged &#39;event-sourcing&#39;" rel="tag">event-sourcing</a> <a href="/questions/tagged/event-store" class="post-tag" title="show questions tagged &#39;event-store&#39;" rel="tag">event-store</a> <a href="/questions/tagged/event-stream" class="post-tag" title="show questions tagged &#39;event-stream&#39;" rel="tag">event-stream</a> 
        </div>
        <div class="started">
            <a href="/questions/49780639/should-latest-event-version-be-queried-in-event-sourcing" class="started-link">asked <span title="2018-04-11 16:54:52Z" class="relativetime">9 mins ago</span></a>
            <a href="/users/2924454/shm">SHM</a> <span class="reputation-score" title="reputation score " dir="ltr">977</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780633">
    <div onclick="window.location.href='/questions/49780633/how-to-decrypt-using-crypto-js-with-typescript'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780633/how-to-decrypt-using-crypto-js-with-typescript" class="question-hyperlink">How to decrypt using crypto-js with typescript?</a></h3>
        <div class="tags t-javascript t-typescript t-encryption">
            <a href="/questions/tagged/javascript" class="post-tag" title="show questions tagged &#39;javascript&#39;" rel="tag">javascript</a> <a href="/questions/tagged/typescript" class="post-tag" title="show questions tagged &#39;typescript&#39;" rel="tag">typescript</a> <a href="/questions/tagged/encryption" class="post-tag" title="show questions tagged &#39;encryption&#39;" rel="tag">encryption</a> 
        </div>
        <div class="started">
            <a href="/questions/49780633/how-to-decrypt-using-crypto-js-with-typescript" class="started-link">asked <span title="2018-04-11 16:54:31Z" class="relativetime">9 mins ago</span></a>
            <a href="/users/6014098/hussain">hussain</a> <span class="reputation-score" title="reputation score " dir="ltr">955</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780631">
    <div onclick="window.location.href='/questions/49780631/mulesoft-dataweave-create-tree-of-unrestricted-depth'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780631/mulesoft-dataweave-create-tree-of-unrestricted-depth" class="question-hyperlink">MuleSoft DataWeave Create Tree of Unrestricted Depth</a></h3>
        <div class="tags t-dataweave">
            <a href="/questions/tagged/dataweave" class="post-tag" title="show questions tagged &#39;dataweave&#39;" rel="tag">dataweave</a> 
        </div>
        <div class="started">
            <a href="/questions/49780631/mulesoft-dataweave-create-tree-of-unrestricted-depth" class="started-link">asked <span title="2018-04-11 16:54:28Z" class="relativetime">9 mins ago</span></a>
            <a href="/users/1298506/adam">Adam</a> <span class="reputation-score" title="reputation score " dir="ltr">697</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780616">
    <div onclick="window.location.href='/questions/49780616/get-limesurvey-not-selected-multiple-choice-answers-with-n-using-api-remote-co'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780616/get-limesurvey-not-selected-multiple-choice-answers-with-n-using-api-remote-co" class="question-hyperlink">Get LimeSurvey not selected multiple choice answers with &ldquo;N&rdquo; using API Remote Control</a></h3>
        <div class="tags t-api t-limesurvey">
            <a href="/questions/tagged/api" class="post-tag" title="show questions tagged &#39;api&#39;" rel="tag">api</a> <a href="/questions/tagged/limesurvey" class="post-tag" title="show questions tagged &#39;limesurvey&#39;" rel="tag">limesurvey</a> 
        </div>
        <div class="started">
            <a href="/questions/49780616/get-limesurvey-not-selected-multiple-choice-answers-with-n-using-api-remote-co" class="started-link">asked <span title="2018-04-11 16:53:46Z" class="relativetime">10 mins ago</span></a>
            <a href="/users/2584772/caco">Caco</a> <span class="reputation-score" title="reputation score " dir="ltr">523</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780604">
    <div onclick="window.location.href='/questions/49780604/why-does-gradle-systematically-rebuilds-project-after-a-successful-build'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780604/why-does-gradle-systematically-rebuilds-project-after-a-successful-build" class="question-hyperlink">Why does gradle systematically rebuilds project after a successful build?</a></h3>
        <div class="tags t-android-studio t-android-gradle">
            <a href="/questions/tagged/android-studio" class="post-tag" title="show questions tagged &#39;android-studio&#39;" rel="tag"><img src="//i.stack.imgur.com/xqoqk.png" height="16" width="18" alt="" class="sponsor-tag-img">android-studio</a> <a href="/questions/tagged/android-gradle" class="post-tag" title="show questions tagged &#39;android-gradle&#39;" rel="tag">android-gradle</a> 
        </div>
        <div class="started">
            <a href="/questions/49780604/why-does-gradle-systematically-rebuilds-project-after-a-successful-build" class="started-link">asked <span title="2018-04-11 16:53:14Z" class="relativetime">11 mins ago</span></a>
            <a href="/users/2068732/matdev">matdev</a> <span class="reputation-score" title="reputation score " dir="ltr">522</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780602">
    <div onclick="window.location.href='/questions/49780602/jenkins-pipeline-parallel-phased-error-build-kill-another-build-that-is-already'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780602/jenkins-pipeline-parallel-phased-error-build-kill-another-build-that-is-already" class="question-hyperlink">Jenkins pipeline parallel phased error build kill another build that is already running</a></h3>
        <div class="tags t-jenkins-pipeline">
            <a href="/questions/tagged/jenkins-pipeline" class="post-tag" title="show questions tagged &#39;jenkins-pipeline&#39;" rel="tag">jenkins-pipeline</a> 
        </div>
        <div class="started">
            <a href="/questions/49780602/jenkins-pipeline-parallel-phased-error-build-kill-another-build-that-is-already" class="started-link">asked <span title="2018-04-11 16:53:06Z" class="relativetime">11 mins ago</span></a>
            <a href="/users/5718268/premgang">premgang</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780594">
    <div onclick="window.location.href='/questions/49780594/soap-classmap-extending-objects-wcf'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780594/soap-classmap-extending-objects-wcf" class="question-hyperlink">SOAP ClassMap extending objects (WCF)</a></h3>
        <div class="tags t-php t-soap t-wsdl t-soap-client t-wcf-client">
            <a href="/questions/tagged/php" class="post-tag" title="show questions tagged &#39;php&#39;" rel="tag">php</a> <a href="/questions/tagged/soap" class="post-tag" title="show questions tagged &#39;soap&#39;" rel="tag">soap</a> <a href="/questions/tagged/wsdl" class="post-tag" title="show questions tagged &#39;wsdl&#39;" rel="tag">wsdl</a> <a href="/questions/tagged/soap-client" class="post-tag" title="show questions tagged &#39;soap-client&#39;" rel="tag">soap-client</a> <a href="/questions/tagged/wcf-client" class="post-tag" title="show questions tagged &#39;wcf-client&#39;" rel="tag">wcf-client</a> 
        </div>
        <div class="started">
            <a href="/questions/49780594/soap-classmap-extending-objects-wcf" class="started-link">asked <span title="2018-04-11 16:52:33Z" class="relativetime">11 mins ago</span></a>
            <a href="/users/587731/adrian-modliszewski">Adrian Modliszewski</a> <span class="reputation-score" title="reputation score " dir="ltr">614</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780584">
    <div onclick="window.location.href='/questions/49780584/fxplug-communicate-between-mainthread-and-customwindow'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="3 views">3</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780584/fxplug-communicate-between-mainthread-and-customwindow" class="question-hyperlink">FxPlug communicate between mainThread and CustomWindow</a></h3>
        <div class="tags t-objective-c t-macos">
            <a href="/questions/tagged/objective-c" class="post-tag" title="show questions tagged &#39;objective-c&#39;" rel="tag">objective-c</a> <a href="/questions/tagged/macos" class="post-tag" title="show questions tagged &#39;macos&#39;" rel="tag">macos</a> 
        </div>
        <div class="started">
            <a href="/questions/49780584/fxplug-communicate-between-mainthread-and-customwindow" class="started-link">asked <span title="2018-04-11 16:51:58Z" class="relativetime">12 mins ago</span></a>
            <a href="/users/3388292/kien-nguyen">Kien Nguyen</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780580">
    <div onclick="window.location.href='/questions/49780580/django-validate-a-python-dictionary-via-dictfield'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="2 votes">2</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="8 views">8</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780580/django-validate-a-python-dictionary-via-dictfield" class="question-hyperlink">Django validate a python dictionary via DictField</a></h3>
        <div class="tags t-python t-django-rest-framework t-django-serializer">
            <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/django-rest-framework" class="post-tag" title="show questions tagged &#39;django-rest-framework&#39;" rel="tag">django-rest-framework</a> <a href="/questions/tagged/django-serializer" class="post-tag" title="show questions tagged &#39;django-serializer&#39;" rel="tag">django-serializer</a> 
        </div>
        <div class="started">
            <a href="/questions/49780580/django-validate-a-python-dictionary-via-dictfield" class="started-link">asked <span title="2018-04-11 16:51:43Z" class="relativetime">12 mins ago</span></a>
            <a href="/users/1355634/math">math</a> <span class="reputation-score" title="reputation score " dir="ltr">496</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780574">
    <div onclick="window.location.href='/questions/49780574/aspnet-security-openidconnect-server-invalid-token-when-update-net-core-proje'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780574/aspnet-security-openidconnect-server-invalid-token-when-update-net-core-proje" class="question-hyperlink">AspNet.Security.OpenIdConnect.Server - invalid token when update .net core project</a></h3>
        <div class="tags t-aspnet-contrib">
            <a href="/questions/tagged/aspnet-contrib" class="post-tag" title="show questions tagged &#39;aspnet-contrib&#39;" rel="tag">aspnet-contrib</a> 
        </div>
        <div class="started">
            <a href="/questions/49780574/aspnet-security-openidconnect-server-invalid-token-when-update-net-core-proje" class="started-link">asked <span title="2018-04-11 16:51:27Z" class="relativetime">12 mins ago</span></a>
            <a href="/users/4218264/eduardo-tolino">Eduardo Tolino</a> <span class="reputation-score" title="reputation score " dir="ltr">81</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780559">
    <div onclick="window.location.href='/questions/49780559/htmlunitdriver-error-java-lang-noclassdeffounderror-com-gargoylesoftware-htmlu'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780559/htmlunitdriver-error-java-lang-noclassdeffounderror-com-gargoylesoftware-htmlu" class="question-hyperlink">HtmlUnitDriver Error: java.lang.NoClassDefFoundError: com/gargoylesoftware/htmlunit/WebWindowListener</a></h3>
        <div class="tags t-selenium-webdriver t-htmlunit t-htmlunit-driver">
            <a href="/questions/tagged/selenium-webdriver" class="post-tag" title="show questions tagged &#39;selenium-webdriver&#39;" rel="tag">selenium-webdriver</a> <a href="/questions/tagged/htmlunit" class="post-tag" title="show questions tagged &#39;htmlunit&#39;" rel="tag">htmlunit</a> <a href="/questions/tagged/htmlunit-driver" class="post-tag" title="show questions tagged &#39;htmlunit-driver&#39;" rel="tag">htmlunit-driver</a> 
        </div>
        <div class="started">
            <a href="/questions/49780559/htmlunitdriver-error-java-lang-noclassdeffounderror-com-gargoylesoftware-htmlu" class="started-link">asked <span title="2018-04-11 16:50:30Z" class="relativetime">13 mins ago</span></a>
            <a href="/users/9397995/kakashi-sensei">Kakashi - Sensei</a> <span class="reputation-score" title="reputation score " dir="ltr">16</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780315">
    <div onclick="window.location.href='/questions/49780315/firestore-perform-compound-query-event-modified-not-intercepted'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="8 views">8</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780315/firestore-perform-compound-query-event-modified-not-intercepted" class="question-hyperlink">Firestore perform compound query, event &ldquo;MODIFIED&rdquo; not intercepted</a></h3>
        <div class="tags t-android t-database t-firebase t-firebase-database t-google-cloud-firestore">
            <a href="/questions/tagged/android" class="post-tag" title="show questions tagged &#39;android&#39;" rel="tag"><img src="//i.stack.imgur.com/tKsDb.png" height="16" width="18" alt="" class="sponsor-tag-img">android</a> <a href="/questions/tagged/database" class="post-tag" title="show questions tagged &#39;database&#39;" rel="tag">database</a> <a href="/questions/tagged/firebase" class="post-tag" title="show questions tagged &#39;firebase&#39;" rel="tag"><img src="//i.stack.imgur.com/5d55j.png" height="16" width="18" alt="" class="sponsor-tag-img">firebase</a> <a href="/questions/tagged/firebase-database" class="post-tag" title="show questions tagged &#39;firebase-database&#39;" rel="tag">firebase-database</a> <a href="/questions/tagged/google-cloud-firestore" class="post-tag" title="show questions tagged &#39;google-cloud-firestore&#39;" rel="tag">google-cloud-firestore</a> 
        </div>
        <div class="started">
            <a href="/questions/49780315/firestore-perform-compound-query-event-modified-not-intercepted" class="started-link">modified <span title="2018-04-11 16:50:29Z" class="relativetime">13 mins ago</span></a>
            <a href="/users/8029596/bbgg2017">bbgg2017</a> <span class="reputation-score" title="reputation score " dir="ltr">6</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780552">
    <div onclick="window.location.href='/questions/49780552/git-show-successively-older-versions-of-a-file'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="12 views">12</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780552/git-show-successively-older-versions-of-a-file" class="question-hyperlink">git show successively older versions of a file</a></h3>
        <div class="tags t-git">
            <a href="/questions/tagged/git" class="post-tag" title="show questions tagged &#39;git&#39;" rel="tag">git</a> 
        </div>
        <div class="started">
            <a href="/questions/49780552/git-show-successively-older-versions-of-a-file" class="started-link">asked <span title="2018-04-11 16:49:49Z" class="relativetime">14 mins ago</span></a>
            <a href="/users/340947/steven-lu">Steven Lu</a> <span class="reputation-score" title="reputation score 17,172" dir="ltr">17.2k</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780520">
    <div onclick="window.location.href='/questions/49780520/pika-how-to-handle-the-nonetypes-exception-when-start-consume'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="0 votes">0</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="2 views">2</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780520/pika-how-to-handle-the-nonetypes-exception-when-start-consume" class="question-hyperlink">Pika - How to handle the NoneTypes exception when start consume</a></h3>
        <div class="tags t-rabbitmq t-python-pika">
            <a href="/questions/tagged/rabbitmq" class="post-tag" title="show questions tagged &#39;rabbitmq&#39;" rel="tag">rabbitmq</a> <a href="/questions/tagged/python-pika" class="post-tag" title="show questions tagged &#39;python-pika&#39;" rel="tag">python-pika</a> 
        </div>
        <div class="started">
            <a href="/questions/49780520/pika-how-to-handle-the-nonetypes-exception-when-start-consume" class="started-link">asked <span title="2018-04-11 16:47:42Z" class="relativetime">16 mins ago</span></a>
            <a href="/users/3205195/tang-quoc-tuan">Tang Quoc Tuan</a> <span class="reputation-score" title="reputation score " dir="ltr">1</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780449">
    <div onclick="window.location.href='/questions/49780449/remove-outer-border-contours-from-plot'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="8 views">8</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780449/remove-outer-border-contours-from-plot" class="question-hyperlink">Remove outer/border contours from plot</a></h3>
        <div class="tags t-python t-matplotlib">
            <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/matplotlib" class="post-tag" title="show questions tagged &#39;matplotlib&#39;" rel="tag">matplotlib</a> 
        </div>
        <div class="started">
            <a href="/questions/49780449/remove-outer-border-contours-from-plot" class="started-link">modified <span title="2018-04-11 16:44:23Z" class="relativetime">19 mins ago</span></a>
            <a href="/users/2193020/hnefatl">hnefatl</a> <span class="reputation-score" title="reputation score " dir="ltr">3,807</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780370">
    <div onclick="window.location.href='/questions/49780370/is-z-le-as-defined-in-the-standard-library-proof-irrelevant'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="7 views">7</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780370/is-z-le-as-defined-in-the-standard-library-proof-irrelevant" class="question-hyperlink">Is Z.le as defined in the standard library proof irrelevant?</a></h3>
        <div class="tags t-coq">
            <a href="/questions/tagged/coq" class="post-tag" title="show questions tagged &#39;coq&#39;" rel="tag">coq</a> 
        </div>
        <div class="started">
            <a href="/questions/49780370/is-z-le-as-defined-in-the-standard-library-proof-irrelevant" class="started-link">asked <span title="2018-04-11 16:38:03Z" class="relativetime">26 mins ago</span></a>
            <a href="/users/9631527/tlon">tlon</a> <span class="reputation-score" title="reputation score " dir="ltr">6</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780357">
    <div onclick="window.location.href='/questions/49780357/cannot-install-codereview-with-pip'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="9 views">9</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780357/cannot-install-codereview-with-pip" class="question-hyperlink">Cannot install CodeReview with pip</a></h3>
        <div class="tags t-python t-pip t-code-review">
            <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/pip" class="post-tag" title="show questions tagged &#39;pip&#39;" rel="tag">pip</a> <a href="/questions/tagged/code-review" class="post-tag" title="show questions tagged &#39;code-review&#39;" rel="tag">code-review</a> 
        </div>
        <div class="started">
            <a href="/questions/49780357/cannot-install-codereview-with-pip" class="started-link">asked <span title="2018-04-11 16:37:23Z" class="relativetime">26 mins ago</span></a>
            <a href="/users/4847453/tessnim">Tessnim</a> <span class="reputation-score" title="reputation score " dir="ltr">105</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49780273">
    <div onclick="window.location.href='/questions/49780273/ansible-playbook-win-copy-cant-find-source-file-when-running-through-a-tower-t'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="5 views">5</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49780273/ansible-playbook-win-copy-cant-find-source-file-when-running-through-a-tower-t" class="question-hyperlink">Ansible playbook: win_copy can&#39;t find source file when running through a Tower template</a></h3>
        <div class="tags t-ansible t-ansible-tower">
            <a href="/questions/tagged/ansible" class="post-tag" title="show questions tagged &#39;ansible&#39;" rel="tag">ansible</a> <a href="/questions/tagged/ansible-tower" class="post-tag" title="show questions tagged &#39;ansible-tower&#39;" rel="tag">ansible-tower</a> 
        </div>
        <div class="started">
            <a href="/questions/49780273/ansible-playbook-win-copy-cant-find-source-file-when-running-through-a-tower-t" class="started-link">asked <span title="2018-04-11 16:31:33Z" class="relativetime">32 mins ago</span></a>
            <a href="/users/9631675/valentinos-economides">Valentinos Economides</a> <span class="reputation-score" title="reputation score " dir="ltr">6</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49779853">
    <div onclick="window.location.href='/questions/49779853/extract-only-body-text-from-arxiv-articles-formatted-as-tex'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="1 vote">1</span></div>
            <div>vote</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="7 views">7</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49779853/extract-only-body-text-from-arxiv-articles-formatted-as-tex" class="question-hyperlink">Extract only body text from arXiv articles formatted as .tex</a></h3>
        <div class="tags t-python t-nlp t-latex t-extract t-tex">
            <a href="/questions/tagged/python" class="post-tag" title="show questions tagged &#39;python&#39;" rel="tag">python</a> <a href="/questions/tagged/nlp" class="post-tag" title="show questions tagged &#39;nlp&#39;" rel="tag">nlp</a> <a href="/questions/tagged/latex" class="post-tag" title="show questions tagged &#39;latex&#39;" rel="tag">latex</a> <a href="/questions/tagged/extract" class="post-tag" title="show questions tagged &#39;extract&#39;" rel="tag">extract</a> <a href="/questions/tagged/tex" class="post-tag" title="show questions tagged &#39;tex&#39;" rel="tag">tex</a> 
        </div>
        <div class="started">
            <a href="/questions/49779853/extract-only-body-text-from-arxiv-articles-formatted-as-tex" class="started-link">modified <span title="2018-04-11 16:27:01Z" class="relativetime">37 mins ago</span></a>
            <a href="/users/4237080/briennakh">briennakh</a> <span class="reputation-score" title="reputation score " dir="ltr">367</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49775676">
    <div onclick="window.location.href='/questions/49775676/gulp-watch-tmp-permission-denied'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="2 votes">2</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="10 views">10</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49775676/gulp-watch-tmp-permission-denied" class="question-hyperlink">Gulp watch /tmp permission denied</a></h3>
        <div class="tags t-gulp t-archlinux t-gulp-watch">
            <a href="/questions/tagged/gulp" class="post-tag" title="show questions tagged &#39;gulp&#39;" rel="tag">gulp</a> <a href="/questions/tagged/archlinux" class="post-tag" title="show questions tagged &#39;archlinux&#39;" rel="tag">archlinux</a> <a href="/questions/tagged/gulp-watch" class="post-tag" title="show questions tagged &#39;gulp-watch&#39;" rel="tag">gulp-watch</a> 
        </div>
        <div class="started">
            <a href="/questions/49775676/gulp-watch-tmp-permission-denied" class="started-link">modified <span title="2018-04-11 16:16:16Z" class="relativetime">48 mins ago</span></a>
            <a href="/users/4627980/dloeda">dloeda</a> <span class="reputation-score" title="reputation score " dir="ltr">1,121</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49779057">
    <div onclick="window.location.href='/questions/49779057/retrieve-multiple-date-from-freebase-using-references'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="3 votes">3</span></div>
            <div>votes</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="1 answer">1</span></div>
            <div>answer</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="17 views">17</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49779057/retrieve-multiple-date-from-freebase-using-references" class="question-hyperlink">retrieve multiple date from freebase using references</a></h3>
        <div class="tags t-java t-android t-firebase">
            <a href="/questions/tagged/java" class="post-tag" title="show questions tagged &#39;java&#39;" rel="tag">java</a> <a href="/questions/tagged/android" class="post-tag" title="show questions tagged &#39;android&#39;" rel="tag"><img src="//i.stack.imgur.com/tKsDb.png" height="16" width="18" alt="" class="sponsor-tag-img">android</a> <a href="/questions/tagged/firebase" class="post-tag" title="show questions tagged &#39;firebase&#39;" rel="tag"><img src="//i.stack.imgur.com/5d55j.png" height="16" width="18" alt="" class="sponsor-tag-img">firebase</a> 
        </div>
        <div class="started">
            <a href="/questions/49779057/retrieve-multiple-date-from-freebase-using-references/?lastactivity" class="started-link">answered <span title="2018-04-11 16:03:43Z" class="relativetime">1 hour ago</span></a>
            <a href="/users/7765139/levi-albuquerque">Levi Albuquerque</a> <span class="reputation-score" title="reputation score " dir="ltr">2,591</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49776494">
    <div onclick="window.location.href='/questions/49776494/a-rule-represent-only-azure-ips-for-azure-firewall'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="3 votes">3</span></div>
            <div>votes</div>
        </div>
        <div class="status answered">
            <div class="mini-counts"><span title="1 answer">1</span></div>
            <div>answer</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="15 views">15</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49776494/a-rule-represent-only-azure-ips-for-azure-firewall" class="question-hyperlink">A rule represent ONLY Azure IPs for Azure firewall</a></h3>
        <div class="tags t-azure t-firewall">
            <a href="/questions/tagged/azure" class="post-tag" title="show questions tagged &#39;azure&#39;" rel="tag"><img src="//i.stack.imgur.com/GXwX9.png" height="16" width="18" alt="" class="sponsor-tag-img">azure</a> <a href="/questions/tagged/firewall" class="post-tag" title="show questions tagged &#39;firewall&#39;" rel="tag">firewall</a> 
        </div>
        <div class="started">
            <a href="/questions/49776494/a-rule-represent-only-azure-ips-for-azure-firewall/?lastactivity" class="started-link">answered <span title="2018-04-11 16:02:09Z" class="relativetime">1 hour ago</span></a>
            <a href="/users/5261180/harry">Harry</a> <span class="reputation-score" title="reputation score " dir="ltr">20</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49779471">
    <div onclick="window.location.href='/questions/49779471/create-match-tree-structures-with-and-without-common-root-nodes-in-neo4j'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="2 votes">2</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="10 views">10</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49779471/create-match-tree-structures-with-and-without-common-root-nodes-in-neo4j" class="question-hyperlink">create/match tree structures with and without common root nodes in neo4j</a></h3>
        <div class="tags t-neo4j t-tree t-cypher">
            <a href="/questions/tagged/neo4j" class="post-tag" title="show questions tagged &#39;neo4j&#39;" rel="tag">neo4j</a> <a href="/questions/tagged/tree" class="post-tag" title="show questions tagged &#39;tree&#39;" rel="tag">tree</a> <a href="/questions/tagged/cypher" class="post-tag" title="show questions tagged &#39;cypher&#39;" rel="tag">cypher</a> 
        </div>
        <div class="started">
            <a href="/questions/49779471/create-match-tree-structures-with-and-without-common-root-nodes-in-neo4j" class="started-link">asked <span title="2018-04-11 15:50:52Z" class="relativetime">1 hour ago</span></a>
            <a href="/users/3822450/jopek">jopek</a> <span class="reputation-score" title="reputation score " dir="ltr">11</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49779331">
    <div onclick="window.location.href='/questions/49779331/firebase-crashlytics-using-custom-exception-handler-to-restart-the-app'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="3 votes">3</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="16 views">16</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49779331/firebase-crashlytics-using-custom-exception-handler-to-restart-the-app" class="question-hyperlink">Firebase Crashlytics using Custom Exception Handler to restart the App</a></h3>
        <div class="tags t-java t-android t-firebase t-crashlytics t-crashlytics-android">
            <a href="/questions/tagged/java" class="post-tag" title="show questions tagged &#39;java&#39;" rel="tag">java</a> <a href="/questions/tagged/android" class="post-tag" title="show questions tagged &#39;android&#39;" rel="tag"><img src="//i.stack.imgur.com/tKsDb.png" height="16" width="18" alt="" class="sponsor-tag-img">android</a> <a href="/questions/tagged/firebase" class="post-tag" title="show questions tagged &#39;firebase&#39;" rel="tag"><img src="//i.stack.imgur.com/5d55j.png" height="16" width="18" alt="" class="sponsor-tag-img">firebase</a> <a href="/questions/tagged/crashlytics" class="post-tag" title="show questions tagged &#39;crashlytics&#39;" rel="tag">crashlytics</a> <a href="/questions/tagged/crashlytics-android" class="post-tag" title="show questions tagged &#39;crashlytics-android&#39;" rel="tag">crashlytics-android</a> 
        </div>
        <div class="started">
            <a href="/questions/49779331/firebase-crashlytics-using-custom-exception-handler-to-restart-the-app" class="started-link">asked <span title="2018-04-11 15:44:38Z" class="relativetime">1 hour ago</span></a>
            <a href="/users/5153345/marcello-galhardo">Marcello Galhardo</a> <span class="reputation-score" title="reputation score " dir="ltr">445</span>
        </div>
    </div>
</div>

<div class="question-summary narrow"
     id="question-summary-49778125">
    <div onclick="window.location.href='/questions/49778125/combining-a-map-and-a-xy-ggplot-chart-in-r'" class="cp">
        <div class="votes">
            <div class="mini-counts"><span title="5 votes">5</span></div>
            <div>votes</div>
        </div>
        <div class="status unanswered">
            <div class="mini-counts"><span title="0 answers">0</span></div>
            <div>answers</div>
        </div>
        <div class="views">
            <div class="mini-counts"><span title="36 views">36</span></div>
            <div>views</div>
        </div>
    </div>
    <div class="summary">
        
        
        <h3><a href="/questions/49778125/combining-a-map-and-a-xy-ggplot-chart-in-r" class="question-hyperlink">Combining a map and a XY ggplot chart in R</a></h3>
        <div class="tags t-r t-ggplot2 t-ggpubr">
            <a href="/questions/tagged/r" class="post-tag" title="show questions tagged &#39;r&#39;" rel="tag">r</a> <a href="/questions/tagged/ggplot2" class="post-tag" title="show questions tagged &#39;ggplot2&#39;" rel="tag">ggplot2</a> <a href="/questions/tagged/ggpubr" class="post-tag" title="show questions tagged &#39;ggpubr&#39;" rel="tag">ggpubr</a> 
        </div>
        <div class="started">
            <a href="/questions/49778125/combining-a-map-and-a-xy-ggplot-chart-in-r" class="started-link">asked <span title="2018-04-11 14:45:44Z" class="relativetime">2 hours ago</span></a>
            <a href="/users/3751263/antecessor">antecessor</a> <span class="reputation-score" title="reputation score " dir="ltr">164</span>
        </div>
    </div>
</div>

        </div>
    </div>
</div>
    <br class="cbt"/>
    <h2 class="bottom-notice" data-loc="2">Looking for more? Browse the <a href="/questions">complete list of questions</a>, or <a href="/tags">popular tags</a>. Help us answer <a href="/unanswered">unanswered questions</a>.</h2>
<script>
    StackExchange.ready(function() { StackExchange.question.initShareLinks(); });
</script>
</div>
    <div id="sidebar">
        
<div class="aside-cta" role="navigation" aria-label="ask new question">
        <a href="/questions/ask" class="btn-outlined" >Ask Question</a>
</div>

        

        
        <div id="dfp-tsb" class="everyonelovesstackoverflow"></div>
            <div id="hireme"></div>
<script>;try{(function(a){function b(a){return document.getElementById(a)}function c(a){return a='string'==typeof a?b(a):a,!!a&&'none'===getComputedStyle(a).display}function d(a){return!c(a)}function e(a){return!!a}function f(a){var b=a.style;b.height=b.maxHeight=b.minHeight='auto',b.display='none',[].forEach.call(a.children,f)}function g(){try{return!new Function('return async()=>{};')}catch(a){return!0}}function h(){'function'==typeof clc.load?clc.load():q.push(function(a){return a.load()})}function i(){if(p.allowed&&new RegExp(p.allowed).test(location.hostname)&&!c('hireme')){var a=p.wv;if(document.hidden&&a){var b=function(){document.hidden||(i(),document.removeEventListener('visibilitychange',b))};return void document.addEventListener('visibilitychange',b)}p.al&&h();var d=g()?p.lib.replace(/(\.min)?\.js(\?v=[0-9a-fA-F]+)?$/,'.ie$1.js$2'):p.lib,e=document.createElement('script');e.async=!0,e.src=d,document.body.appendChild(e)}}function j(){return Object.keys(u.ids)}function k(a){var b=u.ids[a],c=u.slots[b];'function'==typeof c&&(c=c(a));return{path:'/'+r+'/'+t+'/'+b+'/'+s,sizes:c,zone:b}}function l(){var a=document.createElement('div');a.className='adsbox',a.id='clc-abd',a.style.position='absolute',a.style.pointerEvents='none',a.innerHTML='&nbsp;',document.body.appendChild(a)}function m(a){var b=a.serviceName,c=a.slot,d=a.lineItemId;try{var e=c.getSlotElementId(),g=[];e||g.push('id=0');var h=document.getElementById(e);if(!e||h?h.hasAttribute('data-clc-stalled')&&g.push('st=1'):g.push('el=0'),0!==g.length)return void v(g.join('&'));-1===p.dh.indexOf(d)?h.setAttribute('data-clc-prefilled','true'):f(h),h.setAttribute('data-clc-ready','true')}catch(a){var i=document.querySelector('#dfp-tsb, #dfp-isb, #clc-tsb');i&&i.setAttribute('data-clc-ready','true'),v('e=1')}}function n(a,b){'dfp-isb'===a&&b.setTargeting('Sidebar',['Inline']),'dfp-tsb'===a&&b.setTargeting('Sidebar',['Right']);var c=k(a),d=c.path,e=c.sizes,f=c.zone,g=googletag.defineSlot(d,e,a);(clc.collapse_leaderboards||'tag-sponsorship'===f||'sb'===f)&&g.setCollapseEmptyDiv(!0,!0),g.addService(b),!1}function o(a){return function(){l();var b=googletag.pubads();b.enableSingleRequest(),b.addEventListener('slotRenderEnded',m),!dfp_targeting||Object.keys(dfp_targeting).forEach(function(a){b.setTargeting(a,dfp_targeting[a])}),a.forEach(function(a){return n(a,b)}),googletag.enableServices(),a.forEach(function(a){googletag.display(a)})}}var p=function(a){for(var b=[],c=1;c<arguments.length;c++)b[c-1]=arguments[c];for(var d,e=0,f=b;e<f.length;e++)for(var g in d=f[e],d)a[g]=d[g];return a}({"lib":"https://cdn.sstatic.net/clc/clc.min.js?v=068ea1243358","style":"https://cdn.sstatic.net/clc/styles/clc.min.css?v=8a0a093a431f","u":"https://clc.stackoverflow.com/markup.js","wa":true,"kt":2000,"tto":true,"h":"clc.stackoverflow.com","allowed":"^(((talent\\.)?stackoverflow)|(blog\\.codinghorror)|(serverfault|askubuntu)|([^\\.]+\\.stackexchange))\\.com$","wv":true,"al":false,"dh":[4385506061,4386578282,4386579572]},a.options||{}),q=a.cmd||[],r='248424177',s=/^\/tags\//.test(location.pathname)||/^\/questions\/tagged\//.test(location.pathname)?'tag-pages':'question-pages',t=location.hostname;var u={slots:{lb:[[728,90]],mlb:[[728,90]],sb:function(a){return'dfp-tsb'===a?[[300,250],[300,600]]:[[300,250]]},"tag-sponsorship":[[730,135]],"mobile/lb":[[320,50]]},ids:{"dfp-tlb":'lb',"dfp-mlb":'mlb',"dfp-tsb":'sb',"dfp-isb":'sb',"dfp-tag":'tag-sponsorship',"dfp-m-tlb":'mobile/lb',"clc-tlb":'lb',"clc-mlb":'mlb',"clc-tsb":'sb'}},v=function(a){new Image().src='https://'+p.h+'/stalled.gif?'+a};i(),a.autoload=h,a.cmd=q,a.options=p,a.loadDisplayAds=function(a){a=a&&0<a.length?a:j();var g=a.map(b).filter(e).filter(function(a){return /^\s*$/.test(a.innerHTML)}).filter(d).map(function(a){return a.id});if(a.map(b).filter(e).filter(c).forEach(f),0!==g.length){googletag='undefined'==typeof googletag?{}:googletag,googletag.cmd=googletag.cmd||[],googletag.cmd.push(o(g));var h=document.createElement('script');h.async=!0,h.src='https://www.googletagservices.com/tag/js/gpt.js',document.body.appendChild(h)}}})(this.clc=this.clc||{})}catch(a){window.console.error(a)}</script>            <script>
                window.clc_request='AnDDuUnOn9UIAAAAAAAAAAACAAAAAQAAAAAAAAAAAAw9qFAFUAGkRbE';                    clc.autoload();
                var dfp_targeting={Registered:['false']};                                    clc.loadDisplayAds();

            </script>
        
<div id="hot-network-questions" class="module tex2jax_ignore">
    <h4>
        <a href="https://stackexchange.com/questions?tab=hot"
           class="js-gps-track" 
           data-gps-track="posts_hot_network.click({ item_type:1, location:8 })">
            Hot Network Questions
        </a>
    </h4>
    <ul>
            <li >
                <div class="favicon favicon-codegolf" title="Programming Puzzles &amp; Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/161757/print-the-previous-answer" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:200 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Print the Previous Answer!
                </a>

            </li>
            <li >
                <div class="favicon favicon-retrocomputing" title="Retrocomputing Stack Exchange"></div><a href="https://retrocomputing.stackexchange.com/questions/6194/why-was-unix-never-backported-to-the-pdp-7" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:648 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Why was UNIX never backported to the PDP-7?
                </a>

            </li>
            <li >
                <div class="favicon favicon-codegolf" title="Programming Puzzles &amp; Code Golf Stack Exchange"></div><a href="https://codegolf.stackexchange.com/questions/161875/digit-occurrences" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:200 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Digit Occurrences
                </a>

            </li>
            <li >
                <div class="favicon favicon-unix" title="Unix &amp; Linux Stack Exchange"></div><a href="https://unix.stackexchange.com/questions/437002/single-quote-in-awk" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:106 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Single quote in awk
                </a>

            </li>
            <li >
                <div class="favicon favicon-softwareengineering" title="Software Engineering Stack Exchange"></div><a href="https://softwareengineering.stackexchange.com/questions/369154/why-do-we-need-so-many-classes-in-design-patterns" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:131 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Why do we need so many classes in design patterns
                </a>

            </li>
            <li >
                <div class="favicon favicon-sqa" title="Software Quality Assurance &amp; Testing Stack Exchange"></div><a href="https://sqa.stackexchange.com/questions/33024/why-should-a-software-qa-engineer-need-to-learn-javascript" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:244 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Why should a software QA engineer need to learn JavaScript?
                </a>

            </li>
            <li >
                <div class="favicon favicon-academia" title="Academia Stack Exchange"></div><a href="https://academia.stackexchange.com/questions/107825/should-i-prepare-new-homework-exercises-each-year" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:415 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Should I prepare new homework exercises each year?
                </a>

            </li>
            <li >
                <div class="favicon favicon-photo" title="Photography Stack Exchange"></div><a href="https://photo.stackexchange.com/questions/97910/what-can-i-do-to-get-models-to-take-my-small-camera-more-seriously" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:61 }); posts_hot_network.click({ item_type:2, location:8 })">
                    What can I do to get models to take my small camera more seriously?
                </a>

            </li>
            <li >
                <div class="favicon favicon-rpg" title="Role-playing Games Stack Exchange"></div><a href="https://rpg.stackexchange.com/questions/120305/what-are-strategies-to-roleplay-through-a-saving-throw-my-gm-must-make" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:122 }); posts_hot_network.click({ item_type:2, location:8 })">
                    What are strategies to roleplay through a saving throw my GM must make?
                </a>

            </li>
            <li >
                <div class="favicon favicon-writing" title="Writing Stack Exchange"></div><a href="https://writing.stackexchange.com/questions/34918/can-a-writer-joke-with-the-reader-without-breaking-the-fourth-wall" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:166 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Can a writer joke with the reader without breaking the fourth wall?
                </a>

            </li>
            <li >
                <div class="favicon favicon-superuser" title="Super User"></div><a href="https://superuser.com/questions/1312846/how-does-onboard-wi-fi-get-presented-to-the-os-desktop-motherboard" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:3 }); posts_hot_network.click({ item_type:2, location:8 })">
                    How does onboard Wi-Fi get presented to the OS? Desktop Motherboard
                </a>

            </li>
            <li >
                <div class="favicon favicon-interpersonal" title="Interpersonal Skills Stack Exchange"></div><a href="https://interpersonal.stackexchange.com/questions/13064/how-can-i-be-more-persuasive-when-assuring-people-that-i-am-perfectly-fine-and-h" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:680 }); posts_hot_network.click({ item_type:2, location:8 })">
                    How can I be more persuasive when assuring people that I am perfectly fine and healthy?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-photo" title="Photography Stack Exchange"></div><a href="https://photo.stackexchange.com/questions/97940/im-using-canon-800d-in-manual-mode-aperture-is-22-shutter-speed-is-4000-and-i" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:61 }); posts_hot_network.click({ item_type:2, location:8 })">
                    I&#39;m using canon 800D in manual mode. Aperture is 22, shutter speed is 4000 and iso is 100 but exposure meter doesn&#39;t show any value, why?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-movies" title="Movies &amp; TV Stack Exchange"></div><a href="https://movies.stackexchange.com/questions/87958/why-was-bruces-silence-referred-to-as-a-walt-disney" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:367 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Why was Bruce&#39;s silence referred to as a &quot;Walt Disney&quot;?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-math" title="Mathematics Stack Exchange"></div><a href="https://math.stackexchange.com/questions/2732103/for-compass-and-straightedge-problems-are-you-allowed-to-use-the-compass-as-a-r" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:69 }); posts_hot_network.click({ item_type:2, location:8 })">
                    For compass and straightedge problems, are you allowed to use the compass as a ruler?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-politics" title="Politics Stack Exchange"></div><a href="https://politics.stackexchange.com/questions/30223/why-doesn-t-the-irs-just-send-me-a-bill-for-the-taxes-i-owe-based-on-the-info-th" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:475 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Why doesn’t the IRS just send me a bill for the taxes I owe based on the info they already have?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/109184/what-is-the-viability-of-trains-on-planets-covered-in-water" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:579 }); posts_hot_network.click({ item_type:2, location:8 })">
                    What is the viability of trains on planets covered in water?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-unix" title="Unix &amp; Linux Stack Exchange"></div><a href="https://unix.stackexchange.com/questions/436978/why-is-the-json-from-heredoc-is-not-parsable" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:106 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Why is the json from heredoc is not parsable?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/109122/would-being-hollow-solve-the-weight-problem-of-giant-swords" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:579 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Would being hollow solve the weight problem of giant swords?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-worldbuilding" title="Worldbuilding Stack Exchange"></div><a href="https://worldbuilding.stackexchange.com/questions/109016/how-to-build-a-trap-to-last-the-ages" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:579 }); posts_hot_network.click({ item_type:2, location:8 })">
                    How to build a trap to last the ages?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-history" title="History Stack Exchange"></div><a href="https://history.stackexchange.com/questions/45612/why-do-the-pyramids-show-less-erosion-than-the-sphinx" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:324 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Why do the pyramids show less erosion than the Sphinx?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-academia" title="Academia Stack Exchange"></div><a href="https://academia.stackexchange.com/questions/107919/does-writing-matter-a-lot-in-research" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:415 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Does writing matter a lot in research?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-salesforce" title="Salesforce Stack Exchange"></div><a href="https://salesforce.stackexchange.com/questions/214501/trying-to-upsert-product2-method-not-allowed" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:459 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Trying to upsert product2 - Method not allowed?
                </a>

            </li>
            <li class="dno js-hidden">
                <div class="favicon favicon-stackoverflow" title="Stack Overflow"></div><a href="https://stackoverflow.com/questions/49772395/find-distribution-of-consecutive-zeros" class="js-gps-track" data-gps-track="site.switch({ item_type:8, target_site:1 }); posts_hot_network.click({ item_type:2, location:8 })">
                    Find distribution of consecutive zeros
                </a>

            </li>
    </ul>

        <a href="#" 
           class="show-more js-show-more js-gps-track" 
           data-gps-track="posts_hot_network.click({ item_type:3, location:8 })">
            more hot questions
        </a>
</div>
        

<div id="feed-link">
    <a href="/feeds" title="the 30 most recent questions">
        <svg aria-hidden="true" class="svg-icon fc-orange-400 iconRss" width="18" height="18" viewBox="0 0 18 18"><path d="M1 3c0-1.1.9-2 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V3zm14.5 12C15.5 8.1 9.9 2.5 3 2.5V5a10 10 0 0 1 10 10h2.5zm-5 0A7.5 7.5 0 0 0 3 7.5V10a5 5 0 0 1 5 5h2.5zm-5 0A2.5 2.5 0 0 0 3 12.5V15h2.5z"/></svg>
        recent questions feed
    </a>
</div>
    </div>
</div>
        </div>
    </div>

    <footer id="footer" class="site-footer js-footer" role="contentinfo">
        <div class="site-footer--container">
                <div class="site-footer--logo">

                    <a href="https://stackoverflow.com"><svg aria-hidden="true" class="svg-icon native iconLogoGlyphMd" width="32" height="37" viewBox="0 0 32 37"><g><path fill="#BCBBBB" d="M26 33v-9h4v13H0V24h4v9z"/><path d="M23.1 25.99l.68-2.95-16.1-3.35L7 23l16.1 2.99zM9.1 15.2l15 7 1.4-3-15-7-1.4 3zm4.2-7.4L26 18.4l2.1-2.5L15.4 5.3l-2.1 2.5zM21.5 0l-2.7 2 9.9 13.3 2.7-2L21.5 0zM7 30h16v-3H7v3z" fill="#F48024"/></g></svg></a>
                </div>
            
            <nav class="site-footer--nav">
                    <div class="site-footer--col site-footer--col__visible js-footer-col" data-name="default">
                        <h5 class="-title"><a href="https://stackoverflow.com" class="js-gps-track" data-gps-track="footer.click({ location: 1, link: 15})">Stack Overflow</a></h5>
                        <ul class="-list">
                            <li class="-item"><a href="/questions" class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 16})">Questions</a></li>
                                <li class="-item"><a href="https://stackoverflow.com/jobs" class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 17})">Jobs</a></li>
                                <li class="-item"><a href="https://stackoverflow.com/jobs/directory/developer-jobs" class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 11})">Developer Jobs Directory</a></li>
                                     <li class="-item"><a href="https://stackoverflow.com/jobs/salary" class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 28})">Salary Calculator</a></li>
                                                            <li class="-item"><a href="/help" class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 3 })">Help</a></li>
                                <li class="-item"><a onclick='StackExchange.switchMobile("on")' class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 12 })">Mobile</a></li>
                        </ul>
                    </div>
                    <div class="site-footer--col site-footer--col__visible js-footer-col" data-name="default">
                        <h5 class="-title"><a href="https://www.stackoverflowbusiness.com/?utm_source=so-footer&utm_medium=referral&utm_campaign=brand-activation&utm_term=sotob2b-footer-business-category" class="js-gps-track" data-gps-track="footer.click({ location: 1, link: 19 })">Stack Overflow<br /> Business</a></h5>
                        <ul class="-list">
                            <li class="-item"><a href="https://www.stackoverflowbusiness.com/talent?utm_source=so-footer&utm_medium=referral&utm_campaign=brand-activation&utm_term=sotob2b-footer-talent" class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 20 })">Talent</a></li>
                            <li class="-item"><a href="https://www.stackoverflowbusiness.com/advertise?utm_source=so-footer&utm_medium=referral&utm_campaign=brand-activation&utm_term=sotob2b-footer-advertise" class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 21 })">Ads</a></li>
                            <li class="-item"><a href="https://www.stackoverflowbusiness.com/enterprise?utm_source=so-footer&utm_medium=referral&utm_campaign=brand-activation&utm_term=sotob2b-footer-enterprise" class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 22 })">Enterprise</a></li>
                        </ul>
                    </div>
                <div class="site-footer--col site-footer--col__visible js-footer-col" data-name="default">
                    <h5 class="-title"><a class="js-gps-track" data-gps-track="footer.click({ location: 1, link: 1 })" href="https://stackoverflow.com/company/about">Company</a></h5>
                    <ul class="-list">
                            <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 1 })" href="https://stackoverflow.com/company/about">About</a></li>
                                                <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 27 })" href="https://stackoverflow.com/company/press">Press</a></li>
                            <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 9 })" href="https://stackoverflow.com/company/work-here">Work Here</a></li>
                        <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 7 })" href="https://stackexchange.com/legal">Legal</a></li>
                        <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 8 })" href="https://stackexchange.com/legal/privacy-policy">Privacy Policy</a></li>
                            <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link: 13 })" href="https://stackoverflow.com/company/contact">Contact Us</a></li>
                    </ul>
                </div>
                <div class="site-footer--col site-footer--categories-nav site-footer--col__visible">
                    <a href="#" class="site-footer--back js-footer-back"><svg aria-hidden="true" class="svg-icon iconArrowLeftAlt" width="18" height="18" viewBox="0 0 18 18"><path d="M10.58 16L12 14.59 6.4 9 12 3.41 10.57 2l-7 7z"/></svg></a>
                    <div>
                        <h5 class="-title"><a href="https://stackexchange.com">Stack Exchange<br> Network</a></h5>
                        <ul class="-list">
                            <li class="-item"><a href="#" class="-link _expandable js-footer-category-trigger js-gps-track" data-gps-track="footer.click({ location: 1, link: 24 })" data-target="Technology">Technology</a></li>
                            <li class="-item"><a href="#" class="-link _expandable js-footer-category-trigger js-gps-track" data-gps-track="footer.click({ location: 1, link: 24 })" data-target="Life / Arts">Life / Arts</a></li>
                            <li class="-item"><a href="#" class="-link _expandable js-footer-category-trigger js-gps-track" data-gps-track="footer.click({ location: 1, link: 24 })" data-target="Culture / Recreation">Culture / Recreation</a></li>
                            <li class="-item"><a href="#" class="-link _expandable js-footer-category-trigger js-gps-track" data-gps-track="footer.click({ location: 1, link: 24 })" data-target="Science">Science</a></li>
                            <li class="-item"><a href="#" class="-link _expandable js-footer-category-trigger js-gps-track" data-gps-track="footer.click({ location: 1, link: 24 })" data-target="Other">Other</a></li>

                        </ul>
                    </div>
                </div>
                <div class="site-footer--categories">
                    <div class="site-footer--col site-footer--category js-footer-col" data-name="Technology">
        <ul class="-list">
                <li class="-item"><a href="https://stackoverflow.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional and enthusiast programmers">Stack Overflow</a></li>
                <li class="-item"><a href="https://serverfault.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="system and network administrators">Server Fault</a></li>
                <li class="-item"><a href="https://superuser.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="computer enthusiasts and power users">Super User</a></li>
                <li class="-item"><a href="https://webapps.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="power users of web applications">Web Applications</a></li>
                <li class="-item"><a href="https://askubuntu.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Ubuntu users and developers">Ask Ubuntu</a></li>
                <li class="-item"><a href="https://webmasters.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="pro webmasters">Webmasters</a></li>
                <li class="-item"><a href="https://gamedev.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional and independent game developers">Game Development</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://tex.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users of TeX, LaTeX, ConTeXt, and related typesetting systems">TeX - LaTeX</a></li>
                <li class="-item"><a href="https://softwareengineering.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professionals, academics, and students working within the systems development life cycle">Software Engineering</a></li>
                <li class="-item"><a href="https://unix.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users of Linux, FreeBSD and other Un*x-like operating systems">Unix &amp; Linux</a></li>
                <li class="-item"><a href="https://apple.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="power users of Apple hardware and software">Ask Different (Apple)</a></li>
                <li class="-item"><a href="https://wordpress.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="WordPress developers and administrators">WordPress Development</a></li>
                <li class="-item"><a href="https://gis.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="cartographers, geographers and GIS professionals">Geographic Information Systems</a></li>
                <li class="-item"><a href="https://electronics.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="electronics and electrical engineering professionals, students, and enthusiasts">Electrical Engineering</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://android.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="enthusiasts and power users of the Android operating system">Android Enthusiasts</a></li>
                <li class="-item"><a href="https://security.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="information security professionals">Information Security</a></li>
                <li class="-item"><a href="https://dba.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="database professionals who wish to improve their database skills and learn from others in the community">Database Administrators</a></li>
                <li class="-item"><a href="https://drupal.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Drupal developers and administrators">Drupal Answers</a></li>
                <li class="-item"><a href="https://sharepoint.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="SharePoint enthusiasts">SharePoint</a></li>
                <li class="-item"><a href="https://ux.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="user experience researchers and experts">User Experience</a></li>
                <li class="-item"><a href="https://mathematica.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users of Wolfram Mathematica">Mathematica</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://salesforce.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Salesforce administrators, implementation experts, developers and anybody in-between">Salesforce</a></li>
                <li class="-item"><a href="https://expressionengine.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="administrators, end users, developers and designers for ExpressionEngine&#174; CMS">ExpressionEngine&#174; Answers</a></li>
                <li class="-item"><a href="https://pt.stackoverflow.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="programadores profissionais e entusiastas">Stack Overflow em Portugu&#234;s</a></li>
                <li class="-item"><a href="https://blender.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people who use Blender to create 3D graphics, animations, or games">Blender</a></li>
                <li class="-item"><a href="https://networkengineering.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="network engineers">Network Engineering</a></li>
                <li class="-item"><a href="https://crypto.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="software developers, mathematicians and others interested in cryptography">Cryptography</a></li>
                <li class="-item"><a href="https://codereview.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="peer programmer code reviews">Code Review</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://magento.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users of the Magento e-Commerce platform">Magento</a></li>
                <li class="-item"><a href="https://softwarerecs.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people seeking specific software recommendations">Software Recommendations</a></li>
                <li class="-item"><a href="https://dsp.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="practitioners of the art and science of signal, image and video processing">Signal Processing</a></li>
                <li class="-item"><a href="https://emacs.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="those using, extending or developing Emacs">Emacs</a></li>
                <li class="-item"><a href="https://raspberrypi.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users and developers of hardware and software for Raspberry Pi">Raspberry Pi</a></li>
                <li class="-item"><a href="https://ru.stackoverflow.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="программистов">Stack Overflow на русском</a></li>
                <li class="-item"><a href="https://codegolf.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="programming puzzle enthusiasts and code golfers">Programming Puzzles &amp; Code Golf</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Technology"><ul class="-list">
                <li class="-item"><a href="https://es.stackoverflow.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="programadores y profesionales de la inform&#225;tica">Stack Overflow en espa&#241;ol</a></li>
                <li class="-item"><a href="https://ethereum.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="users of Ethereum, the decentralized application platform and smart contract enabled blockchain">Ethereum</a></li>
                <li class="-item"><a href="https://datascience.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Data science professionals, Machine Learning specialists, and those interested in learning more about the field">Data Science</a></li>
                <li class="-item"><a href="https://arduino.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="developers of open-source hardware and software that is compatible with Arduino">Arduino</a></li>
                <li class="-item"><a href="https://bitcoin.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Bitcoin crypto-currency enthusiasts">Bitcoin</a></li>
                            <li class="-item">
                    <a href="https://stackexchange.com/sites#technology" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 26 })">
                        <strong>
                            more (29)
                        </strong>
                    </a>
                </li>
        </ul>
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts">
        <ul class="-list">
                <li class="-item"><a href="https://photo.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional, enthusiast and amateur photographers">Photography</a></li>
                <li class="-item"><a href="https://scifi.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="science fiction and fantasy enthusiasts">Science Fiction &amp; Fantasy</a></li>
                <li class="-item"><a href="https://graphicdesign.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="Graphic Design professionals, students, and enthusiasts">Graphic Design</a></li>
                <li class="-item"><a href="https://movies.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="movie and tv enthusiasts">Movies &amp; TV</a></li>
                <li class="-item"><a href="https://music.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="musicians, students, and enthusiasts">Music: Practice &amp; Theory</a></li>
                <li class="-item"><a href="https://worldbuilding.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="writers/artists using science, geography and culture to construct imaginary worlds and settings">Worldbuilding</a></li>
                <li class="-item"><a href="https://cooking.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional and amateur chefs">Seasoned Advice (cooking)</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Life / Arts"><ul class="-list">
                <li class="-item"><a href="https://diy.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="contractors and serious DIYers">Home Improvement</a></li>
                <li class="-item"><a href="https://money.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people who want to be financially literate">Personal Finance &amp; Money</a></li>
                <li class="-item"><a href="https://academia.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="academics and those enrolled in higher education">Academia</a></li>
                <li class="-item"><a href="https://law.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="legal professionals, students, and others with experience or interest in law">Law</a></li>
                            <li class="-item">
                    <a href="https://stackexchange.com/sites#lifearts" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 26 })">
                        <strong>
                            more (15)
                        </strong>
                    </a>
                </li>
        </ul>
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation">
        <ul class="-list">
                <li class="-item"><a href="https://english.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="linguists, etymologists, and serious English language enthusiasts">English Language &amp; Usage</a></li>
                <li class="-item"><a href="https://skeptics.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="scientific skepticism">Skeptics</a></li>
                <li class="-item"><a href="https://judaism.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="those who base their lives on Jewish law and tradition and anyone interested in learning more">Mi Yodeya (Judaism)</a></li>
                <li class="-item"><a href="https://travel.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="road warriors and seasoned travelers">Travel</a></li>
                <li class="-item"><a href="https://christianity.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="committed Christians, experts in Christianity and those interested in learning more">Christianity</a></li>
                <li class="-item"><a href="https://ell.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="speakers of other languages learning English">English Language Learners</a></li>
                <li class="-item"><a href="https://japanese.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="students, teachers, and linguists wanting to discuss the finer points of the Japanese language">Japanese Language</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Culture / Recreation"><ul class="-list">
                <li class="-item"><a href="https://gaming.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="passionate videogamers on all platforms">Arqade (gaming)</a></li>
                <li class="-item"><a href="https://bicycles.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people who build and repair bicycles, people who train cycling, or commute on bicycles">Bicycles</a></li>
                <li class="-item"><a href="https://rpg.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="gamemasters and players of tabletop, paper-and-pencil role-playing games">Role-playing Games</a></li>
                <li class="-item"><a href="https://anime.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="anime and manga fans">Anime &amp; Manga</a></li>
                <li class="-item"><a href="https://puzzling.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="those who create, solve, and study puzzles">Puzzling</a></li>
                <li class="-item"><a href="https://mechanics.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="mechanics and DIY enthusiast owners of cars, trucks, and motorcycles">Motor Vehicle Maintenance &amp; Repair</a></li>
                            <li class="-item">
                    <a href="https://stackexchange.com/sites#culturerecreation" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 26 })">
                        <strong>
                            more (33)
                        </strong>
                    </a>
                </li>
        </ul>
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Science">
        <ul class="-list">
                <li class="-item"><a href="https://mathoverflow.net" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="professional mathematicians">MathOverflow</a></li>
                <li class="-item"><a href="https://math.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people studying math at any level and professionals in related fields">Mathematics</a></li>
                <li class="-item"><a href="https://stats.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="people interested in statistics, machine learning, data analysis, data mining, and data visualization">Cross Validated (stats)</a></li>
                <li class="-item"><a href="https://cstheory.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="theoretical computer scientists and researchers in related fields">Theoretical Computer Science</a></li>
                <li class="-item"><a href="https://physics.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="active researchers, academics and students of physics">Physics</a></li>
                <li class="-item"><a href="https://chemistry.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="scientists, academics, teachers and students">Chemistry</a></li>
                <li class="-item"><a href="https://biology.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="biology researchers, academics, and students">Biology</a></li>
                    </ul></div><div class="site-footer--col site-footer--category js-footer-col" data-name="Science"><ul class="-list">
                <li class="-item"><a href="https://cs.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="students, researchers and practitioners of computer science">Computer Science</a></li>
                <li class="-item"><a href="https://philosophy.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="those interested in the study of the fundamental nature of knowledge, reality, and existence">Philosophy</a></li>
                            <li class="-item">
                    <a href="https://stackexchange.com/sites#science" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 26 })">
                        <strong>
                            more (10)
                        </strong>
                    </a>
                </li>
        </ul>
    </div>
    <div class="site-footer--col site-footer--category js-footer-col" data-name="Other">
        <ul class="-list">
                <li class="-item"><a href="https://meta.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="meta-discussion of the Stack Exchange family of Q&amp;A websites">Meta Stack Exchange</a></li>
                <li class="-item"><a href="https://stackapps.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="apps, scripts, and development with the Stack Exchange API">Stack Apps</a></li>
                <li class="-item"><a href="https://api.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="programmatic interaction with Stack Exchange sites">API</a></li>
                <li class="-item"><a href="https://data.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="querying Stack Exchange data using SQL">Data</a></li>
                <li class="-item"><a href="https://area51.stackexchange.com" class="-link js-gps-track" data-gps-track="footer.click({ location: 2, link: 25 })" title="proposing new sites in the Stack Exchange network">Area 51</a></li>
                    </ul>
    </div>
                </div>
            </nav>
            <div class="site-footer--copyright fs-fine">
                <ul class="-list">
                    <li class="-item"><a class="js-gps-track -link" data-gps-track="footer.click({ location: 1, link:4 })" href="https://stackoverflow.blog?blb=1">Blog</a></li>
                    <li class="-item"><a href="https://www.facebook.com/officialstackoverflow/" class="-link">Facebook</a></li>
                    <li class="-item"><a href="https://twitter.com/stackoverflow" class="-link">Twitter</a></li>
                    <li class="-item"><a href="https://linkedin.com/company/stack-overflow" class="-link">LinkedIn</a></li>
                </ul>

                <p class="mt-auto mb24">
site design / logo &#169; 2018 Stack Exchange Inc; user contributions licensed under <a href="https://creativecommons.org/licenses/by-sa/3.0/" rel="license">cc by-sa 3.0</a>
                            with <a href="https://stackoverflow.blog/2009/06/25/attribution-required/" rel="license">attribution required</a>.
                    <span id="svnrev">rev&nbsp;2018.4.9.29787</span>
                </p>
            </div>
        </div>

            </footer>
    <noscript>
        <div id="noscript-warning">Stack Overflow works best with JavaScript enabled
            <img src="https://pixel.quantserve.com/pixel/p-c1rF4kxgLUzNc.gif" alt="" class="dno">
        </div>
    </noscript>

<script>
            (function(i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function() { (i[r].q = i[r].q || []).push(arguments) }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m);
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            StackExchange.ready(function () {

                var trackingCodes = [
                    'UA-108242619-1'
                ];


                StackExchange.ga.init({
                    sendTitles: true,
                    tracker: window.ga,
                    trackingCodes: trackingCodes
                });




                    StackExchange.ga.setDimension('dimension3', 'Home/Index');

                StackExchange.ga.trackPageView();
            });
            
/**/
            
            var _qevents = _qevents || [],
            _comscore = _comscore || [];
            (function() {
                var ssl = 'https:' == document.location.protocol,
                    s = document.getElementsByTagName('script')[0],
                    qc = document.createElement('script');
                 qc.async = true;
                    qc.src = (ssl ? 'https://secure' : 'http://edge') + '.quantserve.com/quant.js';
                    s.parentNode.insertBefore(qc, s);
                    _qevents.push({ qacct: "p-c1rF4kxgLUzNc" });
/**/
                 var sc = document.createElement('script');
                    sc.async = true;
                    sc.src = (ssl ? 'https://sb' : 'http://b') + '.scorecardresearch.com/beacon.js';
                    s.parentNode.insertBefore(sc, s);
                    _comscore.push({ c1: "2", c2: "17440561" });
            })();
            

</script>
            
    </body>
</html>