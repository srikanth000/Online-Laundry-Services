<%-- 
    Document   : store
    Created on : 13 Jul, 2017, 3:17:36 AM
    Author     : ammuladdu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@include file="connection.jsp" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

    <title>About Us | Fabrinz-Laundry Services</title>
    <link rel="shortcut icon" href="logo.png">
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">

    <link href="assets/css/font-awesome.min.css" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
    <script src="assets/js/modernizr.custom.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet'>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src=https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js></script>
<script src=https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js></script>
<![endif]-->
<script>!function(e,a,t,n,c,o,s){e.GoogleAnalyticsObject=c,e[c]=e[c]||function(){(e[c].q=e[c].q||[]).push(arguments)},e[c].l=1*new Date,o=a.createElement(t),s=a.getElementsByTagName(t)[0],o.async=1,o.src=n,s.parentNode.insertBefore(o,s)}(window,document,"script","//www.google-analytics.com/analytics.js","ga"),ga("create","UA-47210639-2","auto"),ga("send","pageview")</script><script type=application/ld+json>{ "@context": "http://schema.org/","@type": "Review","itemReviewed": {"@type": "Thing","name": "Article"},"author": {"@type": "Person","name": "Md Ashraf Malik"}, "reviewRating": {"@type": "Rating","ratingValue": "5","bestRating": "5"}, "publisher": { "@type": "Organization", "name": "Web Developer Bareilly" } }</script>
<style>
body{font-family:'',sans-serif;font-size:10px; background:#f8f8f8}
/* header */
html,body{height:100%; width:100%}
h1,h3{font-weight:700}

header{position:relative; width:100%; background-size:cover; background-position:center; background-image:url(images/header.jpg); text-align:center}
header .wel{position: relative;text-align: center;padding: 100px 15px 100px;width: 100%; color:#eee}
.wel h1{font-weight:700; color:#fff}.brk{height:4px; border-radius1:4px; background:#d9534f; margin:25px auto; display:block; width:60px}
.abs-back{background:rgba(29, 21, 24, 0.4); position:absolute; height:100%; width:100%; left:0; top:0}
/* who we */
.who-we{margin-top:50px; margin-bottom:50px}
.who-we h2.add{color:red;}
/* cards*/
.cards-row{padding-top:70px; padding-bottom:50px; background:#eee}
.thumbnail{padding:0; border-radius:0; border:none; box-shadow:0 2px 2px 0 rgba(0,0,0,.14),0 3px 1px -2px rgba(0,0,0,.2),0 1px 5px 0 rgba(0,0,0,.12)}
.thumbnail>img{width:100%; display:block}
.thumbnail h3{font-size:26px; color:#336}
.thumbnail h3,.card-description{margin:0; padding:8px 0; border-bottom:solid 1px #eee; text-align:center}
.thumbnail p{padding-top:8px; font-size:20px}
.thumbnail .btn{border-radius:0; box-shadow:0 2px 5px 0 rgba(0,0,0,.16),0 2px 10px 0 rgba(0,0,0,.12); font-size:20px}
.team-pic{height:150px !important; width:150px !important; border-radius:50%; margin-top:-75px; box-shadow:0 2px 5px 0 rgba(0,0,0,.4),0 2px 10px 0 rgba(0,0,0,.5); transition:all .2s ease-out}
.thumbnail:hover .team-pic{height:200px !important; width:200px !important; margin-top:-100px}
.thumbnail p.social{padding-top:15px; text-align:center}
.social a{color:#FFF; font-size:18px !important}
.social i.fa{height:36px; width:36px; text-align:center; line-height:36px; background:#069; border-radius:50%}
.social i.fa.fa-facebook{background:#43609C}
.social i.fa.fa-twitter{background:#2CA8D2}
.social i.fa.fa-linkedin{background:#428099}
.social i.fa.fa-google-plus{background:#ce4d39}

/* footer*/
#footer{background:#336; padding-top:30px; padding-bottom:30px; text-align:center; border-top:solid 4px #303}
#footer p{padding:10px; color:#fff}
.dont-remove{color:#fff !important; text-decoration:none !important; font-weight:700}
.rights{display:inline-block; border-top:solid 1px rgba(103, 58, 183, 0.3)}

/* media */
@media (min-width:768px) { 
header{ min-height: 100%} 
header .wel{position:absolute; top:50%; transform:translateY(-50%); -moz-transform:translateY(-50%); -webkit-transform: translateY(-50%); -ms-transform: translateY(-50%); padding: 0 50px;}
.wel-info{max-width:850px; margin-left:auto; margin-right:auto} .
who-we h2{font-size:42px} .wel h1{font-size:65px} header .wel{font-size:26px} 
}

</style>
    
  </head>

  <body background="">

    <!-- Menu -->
    <nav class="menu" id="theMenu">
        <div class="menu-wrap">
            <h1 class="logo"><a href="index.jsp">Fabrinz</a></h1>
            <i class="fa fa-arrow-right menu-close"></i>
            <a href="index.jsp">Home</a>
             <%
           if (session.getAttribute("userid")!=null)
    		{
          %>
          	<a href="fabrinz-custm-deshboard.jsp">My Account</a>
          	<% } %>
            <a href="index.jsp#services">Services</a>
         
            <a href="about.jsp">About</a>
            <a href="#contact">Contact</a>
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-dribbble"></i></a>
            <a href="#"><i class="fa fa-envelope"></i></a>
        </div>
        
        <!-- Menu button -->
        <div id="menuToggle"><i class="fa fa-bars"></i></div>
    </nav>
    
    <!-- MAIN IMAGE SECTION -->
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp"><img src="logo.png" algin="left"></a>
    <div id="headerwrap">

      
        

        <center> <h3><label>Welcome to Fabrinz Laundry Services.</label></h3></center>

         

<div class="container who-we">

<div class="wel-info text-center">
<p style="color: red;font-family: 'Open Sans Condensed';font-weight: 700">Who We Are?</p>
<span class="brk"></span>
<p>We are offering multi store laundry and dry cleaning services.</p>

</div>
</div>

<div class="container-fluid cards-row">
<div class="container">
<div class="row">

  
  
    <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="logo.png" alt="about us page design using bootstrap">
        <img class="team-pic" src="1.jpg">
      <div class="caption">
        <h3>Margam Srikanth</h3>
        <p class="card-description">Currently pursuing Graduation(CSE) at RGUKT Basar.</p>
        <p class="social"><a href=""><i class="fa fa-facebook"></i></a> <a href=""><i class="fa fa-twitter"></i></a> <a href=""><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-google-plus"></i></a></p>
      </div>
    </div>
  </div>
  
      
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="logo.png" alt="about us page design using bootstrap">
       <img class="team-pic" src="2.jpg">
      <div class="caption">
        <h3>Rangu Shekhar</h3>
        <p class="card-description">Currently pursuing Graduation(CSE) at RGUKT Basar.</p>
        <p class="social"><a href=""><i class="fa fa-facebook"></i></a> <a href=""><i class="fa fa-twitter"></i></a> <a href=""><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-google-plus"></i></a></p>
      </div>
    </div>
  </div>
  
      
    <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="logo.png" alt="about us page design using bootstrap">
       <img class="team-pic" src="3.jpg">
      <div class="caption">
        <h3>Vivek Singh Parmer</h3>
        <p class="card-description">CEO at RK Info Systems Pvt.Ltd</p>
        <p class="social"><a href=""><i class="fa fa-facebook"></i></a> <a href=""><i class="fa fa-twitter"></i></a> <a href=""><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-google-plus"></i></a></p>
      </div>
    </div>
  </div>
  
</div>

</div>
</div>

        </div><!-- /container -->
    </div><!-- /headerwrap -->

    <!-- WELCOME SECTION -->
    
    
    <!-- SOCIAL FOOTER --->

    <section id="contact"></section>
   <!-- <div id="sf">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 dg">
                    <h4 class="ml">FACEBOOK</h4>
                    <p class="centered"><a href="#"><i class="fa fa-facebook"></i></a></p>
                    <p class="ml">> Become A Friend</p>
                </div>
                <div class="col-lg-4 lg">
                    <h4 class="ml">TWITTER</h4>
                    <p class="centered"><a href="#"><i class="fa fa-twitter"></i></a></p>
                    <p class="ml">> Follow Us</p>
                </div>
                <div class="col-lg-4 dg">
                    <h4 class="ml">GOOGLE +</h4>
                    <p class="centered"><a href="#"><i class="fa fa-google-plus"></i></a></p>
                    <p class="ml">> Add Us To Your Circle</p>
                </div>
            </div>--><!-- row -->
        </div><!-- container -->
    </div><!-- Social Footer -->
    
    <!-- CONTACT FOOTER --->
    <div id="cf">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div id="mapwrap">
                      <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3775.115752773752!2d77.92024951420971!3d18.881945362951672!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1srgukt+basar!5e0!3m2!1sen!2sin!4v1500797242332" width="870" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>  
                </div><!--col-lg-8-->
                <div class="col-lg-4">
                    <h4>ADDRESS<br/><br/>Fabrinz Laundry Services</h4>
                    <br>
                    <p>
                       RGUKT Basar, Nirmal,<br/>
                        Telangana.
                    </p>
                    <p>
                        P: +91 9490128833<br/>
                        F: +55 4333-4345<br/>
                        E: <a href="mailto:#">fabrinz@gmail.com</a>
                    </p>
                    <p>The point of choosing Fabrinz  for laundry and dry cleaing services is that ,it provides multi stores where you can find multiple stores to shedule a service.</p>
                </div><!--col-lg-4-->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- Contact Footer -->
    

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/masonry.pkgd.min.js"></script>
    <script src="assets/js/imagesloaded.js"></script>
    <script src="assets/js/classie.js"></script>
    <script src="assets/js/AnimOnScroll.js"></script>
    <script>
        new AnimOnScroll( document.getElementById( 'grid' ), {
            minDuration : 0.4,
            maxDuration : 0.7,
            viewportFactor : 0.2
        } );
    </script>
  </body>
</html>
