  <%@include file="connection.jsp" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">

<title>Laundry Cleaning | Doorstep Commercial Laundry Delivery Services</title>
<link rel="shortcut icon" href="logo.png">
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
            <h1 class="rmar">Laundry Cleaning</h1>
            </div>
        </div>
      </div>
      <!-- /scroller-inner --> 
    </div>
    <!-- /scroller --> 
    
  </div>
  <!-- /pusher --> 

  <div class="bspace clearfix bigs">
      <p> As mentioned above, Laundry cleaning is the process that involves the same process of washing clothes as done commonly in most households. It uses common detergents to wash the clothes at little more than the room temperature. After that, the process involves the drying of clothes and then ironing it with the help of laundry iron that has more heat than the household iron. The high temperature is helpful in killing off the microorganisms and is suitable for normal clothes, but not for expensive or bulky clothes. Laundry service is very cheap when compared to dry washing and most of the stains are removed in the process. Cleaning at high temperature ensures that all the bacteria get killed in the process and the clothes have a fresh smell. </p>
      <img src='assets/images/new-process-laundry.jpg' alt='laundry-process' /> </div>



<!-- FOOTER -->
<%@include file="footerweb.jsp" %>
</section>
</div>
<script>
		$(function() {
			var pull 		= $('#pull');
				menu 		= $('nav ul');
				menuHeight	= menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});

			$(window).resize(function(){
        		var w = $(window).width();
        		if(w > 320 && menu.is(':hidden')) {
        			menu.removeAttr('style');
        		}
    		});
		});
	</script> 
<script src="assets/js/owl.carousel.min.js"></script> 
<script src="assets/js/jquery.drawer.js"></script> 
<script>
		
		$(function() {
			$('#primary-menu-toggle').drawer({
				menu: '#primary-menu',
				push: '.content',
				class: 'menu-open'
			});
		});
		
		var mtop = $('.header').height();
		$('.menu').css('top',mtop);
		$('#down').slideUp();
		$('#slide').click(function(){
			$('#down').slideDown(300);
		});
		$('#primary-menu-toggle, #down a').click(function() {
			$('#down').slideUp();
		});
		
		
		//$('.banner').height(bheight);
		//var bheight = $('.banner').outerHeight();
		//$('.menu').height(bheight);
		
		
		$(document).ready(function() {
 
		$("#owl-demo").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
 
      items : 4,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3]
 
  });
 
});
$('.dwnarr, .rwnarr').click(function() {
	$('#schedule').slideToggle();
});

	</script> 
<script src="assets/js/jquery.datetimepicker.js"></script> 

</body>
</html>
