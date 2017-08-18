
  <%@include file="connection.jsp" %>
<!doctype html>

<html class="no-js" lang="en">
<!--<![endif]-->
<!-- the "no-js" class is for Modernizr. -->
<head>
<meta charset="utf-8">
<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->

<!-- Important stuff for SEO, don't neglect. (And don't dupicate values across your site!) -->
<title>Febrinz Brand - Laundry Services at Your Doorstep</title>
 <link rel="shortcut icon" href="logo.png">
<meta name="description" content="Febrinz- On-Demand Laundry & Dry Cleaning Services."/>
        <meta name="keywords" content="laundry, dry cleaning, washing, ironing, laundry mobile app, laundry india, febrinz, doorstep laundry, online laundry" />
<!-- Don't forget to set your site up: http://google.com/webmasters -->
<meta name="google-site-verification" content="" /> 
<!-- Who owns the content of this site? -->

<!--  Mobile Viewport
	http://j.mp/mobileviewport & http://davidbcalhoun.com/2010/viewport-metatag
	device-width : Occupy full width of the screen in its current orientation
	initial-scale = 1.0 retains dimensions instead of zooming out if page height > device height
	maximum-scale = 1.0 retains dimensions instead of zooming in if page width < device width (wrong for most sites)
	-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
<link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="assets/css/jquery.datetimepicker.css"/>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/schedule-validation.js"></script>

<style>
.bspace {
}
.auto {
  float: none;
  margin: auto;
}
</style>
</head>

<body>
<div class="wrapper">
  <!--  Start Of Header -->
  <%@include file="headerweb.jsp" %>
  <!--  End Of Header --> 
  <div>
      <%@include file="nevbarweb.jsp" %>
      <div class="clr1 cspace tc" style="border-top: 1px solid white;">
      <h1 class='rmar'>Schedule a Service</h1>
      <div class="small">Fabrinz Services at your doorstep</div>
      <span class='dwnarr'><a href="fabrinz_custm_login.jsp"><img src='assets/images/png/dwnarro.png' /></a></span> </div>
  </div>
  <section class="clearfix">
  <!-- BANNER -->
  
  <div class="banner clearfix"> 
    
    <!-- mp-menu -->
    <%@include file="mpMenu.jsp" %>
    <!-- /mp-menu -->
    
    <div class="scroller" ><!-- this is for emulating position fixed of the nav -->
      <div class="scroller-inner"> 
        <!-- Top Navigation -->
        
        <div class="content clearfix">
          <div class="clearfix">
            <p><a href="#" id="primary-menu-toggle" class="menu-toggle"></a></p>
          </div>
            <div class="grbg">
              <h1 class="rmar">Febrinz Brand</h1>
              <span class="small">Elevate Employees, Customers, Vendors and Community</span> </div>
          </div>
        </div>
        <!-- /scroller-inner --> 
      </div>
      <!-- /scroller --> 
      
    </div>
    <!-- /pusher -->
    <div class="bspace clearfix">
      <h1>Brand Philosophy</h1>
      <p class="othpg">To elevate people - Our employees, customers, vendors and the community at large, through our work, ideology, and positivity and create a better world for all stake holders.</p>
      <img src="assets/images/abtimge.jpg" class="mtop" /> </div>
    
    <!-- APPLICATION -->
    <div class="bspace">
      <div class="clearfix">
        <div class="col5">
          <h2>Your laundry is only a touch away!</h2>
          <ul class="stop">
            <li> <a class="icon icon-photo" href="#" target="_blank"><img src="assets/images/g-play.jpg" /> </a> <a class="icon icon-photo spac" href="#" target="_blank"><img src="assets/images/ap-store.jpg" /></a> </li>
          </ul>
        </div>
          <div class="col7"> <img src="assets/images/febrinz_jabong.jpg" /> </div>
      </div>
    </div>
    <!-- FOOTER -->
    <%@include file="footerweb.jsp" %>
  </section>
</div>
<script src="assets/js/owl.carousel.min.js"></script> 
<script src="assets/js/jquery.drawer.js"></script> 

<script src="assets/js/jquery.datetimepicker.js"></script> 

</body>
</html>
