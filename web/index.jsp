<%@include file="connection.jsp" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en-US">
   
    <head>
        <meta charset="utf-8">
        <title>Fabrinz- Laundry Services</title>
        <meta name="description" content="Fabrinz- On-Demand Laundry & Dry Cleaning Services."/>
        <meta name="keywords" content="laundry, dry cleaning, washing, ironing, laundry mobile app, laundry india, fabrinz, doorstep laundry, online laundry" />
       <link rel="shortcut icon" href="logo.png">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="assets/images/favicon.png">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/jquery.datetimepicker.css"/>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/schedule-validation.js"></script>
        <script src="assets/js/vote-validation.js"></script>
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   
 

 
 <style>
	
#owl-demo .item img{
    display: block;
    width: 100%;
    height: auto;
}
.htabs{
	margin:0; padding:0;
	font-family:arial;
   }
	.htabs li{
		list-style:none;
		float:left;
	}
	.htabs li a {
		text-decoration:none;
		color:#000;
		display:block;
		padding:7px 14px 18px;
	}
	.htabs li.active a {
		border-bottom:2px solid #1bb49b;
	}
	.tabs {
		clear:both;
		background:#fff;
		padding:15px;
		border:1px solid #CCC;
		font-size:14px;
		font-family:arial;
	}
	.tabs .cont {display:none;} 
	</style>
    </head>
     <body>
        <div class="wrapper">   

            <!--  Start Of Header -->
            <%@include file="headerweb.jsp" %>
            <!--  End Of Header -->  
            <section class="clearfix"> 
                <!-- BANNER -->
                <%@include file="nevbarweb.jsp" %>
                <!-- END BANNER -->
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
                                <!--<img src="assets/images/1.jpg" />-->
                                <ul id="slider1" class="rslides">
                                    <li> <img src="assets/images/slides/wassup-banner-01.jpg" alt="wassup-slider" /> </li>
                                    <li><img src="assets/images/slides/wassup-banner-02.jpg" alt="wassup-slider"/> </li>
                                    <li><img src="assets/images/slides/wassup-banner-03.jpg" alt="wassup-slider" />
                                        <div class='slcont'> <a href="#" target="_blank"><img src="assets/images/png/gplay.png" style='width:100px;' alt="fabrinz Android" /> </a> <a href="#" target="_blank"><img src="assets/images/png/apstore.png" style='width:100px;' alt="fabrinz ios" /></a> </div>
                                    </li>
                                    <li><img src="assets/images/slides/wassup-banner-04.jpg" alt="wassup-slider" /> </li>
                                    <li><img src="assets/images/slides/wassup-banner-05.jpg" alt="wassup-slider" /> </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /scroller-inner --> 
                    </div>
                    <!-- /scroller --> 

                </div>
                
                
                
                <div id='schedules'>
                    <div class="clr1 cspace tc">
                        <h1 class='rmar'>Schedule a Service</h1>
                        <div class="small">fabrinz Services at your doorstep</div>
                        <span class='dwnarr'><a href="index.jsp"><img src='assets/images/png/dwnarro.png' alt="downarrow" /></a></span> </div>
                </div>
                
                
                
                <!-- fabrinz WORLD -->
                <div class="bspace clearfix">
                    <div class="clearfix" id="services">
                        <h1>The Fabrinz World</h1>
                        <div class="col4">
                            <ul class="verzlist">
                                <li class='clearfix'> <img src='assets/images/png/laundry1.png' alt="laundrycleaning" class='col3 auto blk' />
                                    <div class='tc'>
                                        <h4>Laundry Cleaning</h4>
                                        <p class='txt'>Laundry cleaning is the process that involves the same process of washing clothes as done commonly in most households. It uses common detergents to wash the clothes.
                                        <br/><button onclick="document.getElementById('id04').style.display='block'" class="w3-button w3-blue">Read more</button></p>
                                    </div>
                                </li>
                                <li class='clearfix'> <img src='assets/images/png/express1.png' alt="express" class='col3 auto blk' />
                                    <div class='tc'>
                                        <h4>Express Delivery</h4>
                                        <p class='txt'>If you are the seasoned business traveler with an urgent laundry requirement or have the need to dry clean urgently for the wedding day after, we have an express laundry service. <button onclick="document.getElementById('id02').style.display='block'" class="w3-button w3-blue">Read more</button>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="col4 bigtop"><img src="assets/images/fabrinzbag.jpg" alt="fabrinz world" /></div>
                        <div class="col4">
                            <ul class="verzlist">
                                <li class='clearfix'> <img src='assets/images/png/dry1.png' alt="drycleaning" class='col3 auto blk' />
                                    <div class='tc'>
                                        <h4>Dry Cleaning</h4>
                                        <p class='txt'>Dry cleaning is ideal for expensive clothes or those that require a lot of effort to be washed. It can work well with a machine and there are certain chemicals that are used to clean the clothes.  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-blue">Read more</button>
                                    </div>
                                </li>
                                <li class='clearfix'> <img src='assets/images/png/doorstep.png' alt="doorstep service" class='col3 auto blk' />
                                    <div class='tc'>
                                        <h4>Service at your Doorstep</h4>
                                        <p class='txt'>At Fabrinz, we realize that our customers have less time in the day to complete all their errands. That?s why we have started offering pickup and delivery dry cleaning and laundry services.<button onclick="document.getElementById('id03').style.display='block'" class="w3-button w3-blue">Read more</button></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- WHAT KEEPS SPINNING -->
                <div class="bspace clr2 clearfix">
                   <!-- <h1 class="rmar">What keeps Fabrinz spinning</h1>
                    <ul class="horzlist galr clearfix">
                        <li class="col3"> <img src="assets/images/png/1.png" alt="doorstep service" /> <span>Doorstep Service</span> </li>
                        <li class="col3"> <img src="assets/images/png/2.png" alt="clean &amp; hygenic" /> <span>Clean & Hygienic Water</span> </li>
                        <li class="col3"> <img src="assets/images/png/3.png" alt="expert fabric care" /> <span>Expert Fabric Care</span> </li>
                        <li class="col3"> <img src="assets/images/png/4.png" alt="fabrinz technology" /> <span>State of the art Technology</span> </li>
                        <li class="col3"> <img src="assets/images/png/5.png" alt="affordable convenient" /> <span>Affordable & Convenient</span> </li>
                        <li class="col3"> <img src="assets/images/png/6.png" alt="green concept" /> <span>Green Concept</span> </li>
                        <li class="col3"> <img src="assets/images/png/7.png" alt="money saving combo" /> <span>Money Saving Combo Packages</span> </li>
                        <li class="col3"> <img src="assets/images/png/8.png" alt="neat wrinkle package" /> <span>Neat & Wrinkle Free Packaging</span> </li>
                    </ul> -->
                   <div id="work">
                   <h2>How Fabrinz Works</h2><br>
                   <div class="w3-row " ><br>
                   <center> <div class="w3-third w3-container ">
                        <img src="images/h.jpg" class="w3-circle" alt="Norway" style="width:30%">
                         <h5 >Visit our Website</h5>
                      <p>Place order using our Mobile App or <br style="display: none">
Order through Website/Call.</p>
                    
                    </div></center>
                    <div class="w3-third w3-container">
                      <img src="images/h1.jpg" class="w3-circle" alt="Norway" style="width:40%">
                      <h5>Meet our Rider</h5>
                      <p>We collect your laundry & dry
cleaning from your doorstep.</p>
                    </div>
                    <div class="w3-third w3-container">
                      <img src="images/h2.png" class="w3-circle" alt="Norway" style="width:35%">
                      <h5>Express Delivery</h5>
                      <p>We bring your clothes back fresh
within 48 hours.</p>
                    </div>
                    </div>
                </div>
                </div>
                <!-- FREEDOM FROM LAUNDRY WORRIES -->
                               
                <div class="bspace clearfix">
                    <h1>The Fabrinz Story</h1>

                   <div class="col6">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/ApExrAEnVxw?ecver=1" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <div class="col6">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/ApExrAEnVxw?ecver=1" frameborder="0" allowfullscreen></iframe>
                </div> </div>
                <div class="bspace clearfix"></div>
                <!-- TESTIMONIALS  -->
                <div class="bspace clr2" id="brand">
                    <div class="clearfix">
                        <h1 class="rmar">Customer Speak</h1>
                        <span class="small">Don?t take our word. Take a look at our testimonials</span>
                        <div class="col6">
                            <div>
                                <ul class="clearfix">
                                    <li class="mtop">
                                        <div class="comments">
                                            <p>Fabrinz has really made sure my weekends are spent better than with laundry chores which i dread so much.
                                               </p>
                                            <div class="tips"></div>
                                        </div>
                                        <div class="comauth"> <span> <strong>Vivek Singh Parmar</strong> <em>CEO of R.K.Infosystem</em> </span> </div>
                                    </li>
                                    <li class="mtop">
                                        <div class="comments">
                                            <p>I am very happy with Fabrinz. They are very  professional. Loved the Pick up and Drop facilities.</p>
                                            <div class="tips"></div>
                                        </div>
                                        <div class="comauth"> <span> <strong>Ravi Pratap Singh Tomar</strong> <em>Directer, 5 Elements InfoSystem.</em> </span> </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col6">
                            <div>
                                <ul class="container test clearfix">
                                  <li class="mtop">
                                        <div class="comments">
                                            <p>I am very happy with the service. The type of packaging they do makes you feel that you are wearing a new shirt everytime. Totally amazed.</p>
                                            <div class="tips"></div>
                                        </div>
                                        <div class="comauth"> <span> <strong>Miss. T. Nirmala</strong> <em>Hydrabad</em> </span> </div>
                                    </li>
                                    <li class="mtop">
                                        <div class="comments">
                                            <p>I am totally satisfied, I must say. They packaging gives a totally amazing experience with the shirts even if they are old.</p>
                                            <div class="tips"></div>
                                        </div>
                                        <div class="comauth"> <span> <strong>Miss. Shraddha Soni</strong> <em>Suhagi, Jabalpur</em> </span> </div>
                                    </li>
                                  </ul>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                 <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3775.115752773752!2d77.92024951420971!3d18.881945362951672!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1srgukt+basar!5e0!3m2!1sen!2sin!4v1500797242332" width="1350" height="370" frameborder="0" style="border:0; margin-left: 0px;" allowfullscreen></iframe>
                  <!--     <h1>The Customer List</h1>
                <ul class="htabs">
                    	
                    	<li><a href="#tabs2">Hydrabad</a></li>
                    	<li><a href="#tabs3">Chennai</a></li>                                                
                    </ul>
                    <div class="tabs">
                  
                    <div id="tabs2" class="cont">
                    <div id="bangalore" class="owl-carousel owl-theme">
 
					  <div class="item"><img src="images/clientlogo/bangalore/1.jpg" alt="The Last of us"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/2.jpg" alt="GTA V"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/3.jpg" alt="Mirror Edge"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/4.jpg" alt="The Last of us"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/5.jpg" alt="GTA V"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/6.jpg" alt="Mirror Edge"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/7.jpg" alt="The Last of us"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/8.jpg" alt="GTA V"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/9.jpg" alt="Mirror Edge"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/10.jpg" alt="Mirror Edge"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/11.jpg" alt="GTA V"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/12.jpg" alt="Mirror Edge"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/13.jpg" alt="The Last of us"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/14.jpg" alt="GTA V"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/15.jpg" alt="Mirror Edge"></div>
					  <div class="item"><img src="images/clientlogo/bangalore/16.jpg" alt="Mirror Edge"></div>
					  
					</div>
                    </div>
                    <div id="tabs3" class="cont">
                    <div id="chennai" class="owl-carousel owl-theme">
 
					  <div class="item"><img src="images/clientlogo/chennai/1.jpg" alt="The Last of us"></div>
					  <div class="item"><img src="images/clientlogo/chennai/2.jpg" alt="GTA V"></div>
					  <div class="item"><img src="images/clientlogo/chennai/3.jpg" alt="Mirror Edge"></div>
					  <div class="item"><img src="images/clientlogo/chennai/4.jpg" alt="The Last of us"></div>
					  <div class="item"><img src="images/clientlogo/chennai/5.jpg" alt="GTA V"></div>
					  <div class="item"><img src="images/clientlogo/chennai/6.jpg" alt="Mirror Edge"></div>
					  <div class="item"><img src="images/clientlogo/chennai/7.jpg" alt="The Last of us"></div>
					  <div class="item"><img src="images/clientlogo/chennai/8.jpg" alt="GTA V"></div>
					  <div class="item"><img src="images/clientlogo/chennai/9.jpg" alt="Mirror Edge"></div>
					  <div class="item"><img src="images/clientlogo/chennai/10.jpg" alt="Mirror Edge"></div>
					  
					</div>
                    </div>            
                    </div>-->
                  

               
               
  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px;max-height:400px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        <img src="assets/images/png/dry1.png" alt="Avatar" style="width:20%" class="w3-circle w3-margin-top">
      </div>

                    <center> <h4>Dry Cleaning</h4>
                                        <p class='txt'>Dry cleaning is ideal for expensive clothes or those that require a lot of effort to be washed. It can work well with a machine and there are certain chemicals that are used to clean the clothes.

</p></center>
<center><button class="btn btn-info"><a href="fabrinz-custm-deshboard.jsp">Schedule a service</a></button></center><br>
    

    </div>
  </div>
  <div id="id02" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px;max-height:400px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id02').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        <img src="assets/images/png/express1.png" alt="Avatar" style="width:20%" class="w3-circle w3-margin-top">
      </div>

                    <center>  <h4>Express Delivery</h4>
                                        <p class='txt'>If you are the seasoned business traveler with an urgent laundry requirement or have the need to dry clean urgently for the wedding day after, we have an express laundry service.

</p></center>
        <center><button class="btn btn-info"><a href="fabrinz-custm-deshboard.jsp">Schedule a service</a></button></center><br>
    

    </div>
  </div>
   <div id="id03" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px;max-height:400px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id03').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        <img src="assets/images/png/doorstep.png" alt="Avatar" style="width:20%" class="w3-circle w3-margin-top">
      </div>

                    <center>  <h4>Service at your Doorstep</h4>
                                        <p class='txt'>At Fabrinz, we realize that our customers have less time in the day to complete all their errands. That?s why we have started offering pickup and delivery dry cleaning and laundry services.
</p></center>
        <center><button class="btn btn-info"><a href="fabrinz-custm-deshboard.jsp">Schedule a service</a></button></center><br>
    

    </div>
  </div>
   <div id="id04" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px;max-height:400px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id04').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        <img src="assets/images/png/laundry1.png" alt="Avatar" style="width:20%" class="w3-circle w3-margin-top">
      </div>

                    <center>   <h4>Laundry Cleaning</h4>
                                        <p class='txt'>Laundry cleaning is the process that involves the same process of washing clothes as done commonly in most households. It uses common detergents to wash the clothes.
</p></center>
        <center><button class="btn btn-info"><a href="fabrinz-custm-deshboard.jsp">Schedule a service</a></button></center><br>
    

    </div>
  </div>
                <%@include file="footerweb.jsp" %>
                <p id="back-top"> <a href="#top"><span></span>Back to Top</a> </p>
            </section>
        </div>
        <script>
            $(function() {
                var pull = $('#pull');
                menu = $('nav ul');
                menuHeight = menu.height();

                $(pull).on('click', function(e) {
                    e.preventDefault();
                    menu.slideToggle();
                });

                $(window).resize(function() {
                    var w = $(window).width();
                    if (w > 320 && menu.is(':hidden')) {
                        menu.removeAttr('style');
                    }
                });
            });
        </script> 
        <script src="assets/js/owl.carousel.min.js"></script> 
        <script src="assets/js/jquery.drawer.js"></script> 
        <script src="assets/js/responsiveslides.js"></script> 
        <script>
$(document).ready(function() {
  
	$(".tabs .cont").fadeOut() //hide all the div
	$(".tabs .cont:first-child").fadeIn(1000) //show the first div
	$(".htabs li:first-child").addClass('active');
	$(document).ready(function() {
		$('.htabs li a').on('click', function(e)  {
			var currentAttrValue = $(this).attr('href');
	 
			// Show/Hide Tabs
		   $('.tabs ' + currentAttrValue).fadeIn().siblings().hide();	
	 
			// Change/remove current tab to active
			$(this).parent('li').addClass('active').siblings().removeClass('active');
	 
			e.preventDefault();
		});
	});	

  $("#chennai").owlCarousel({
	autoPlay: 2000, //Set AutoPlay to 3 seconds
	items: 4,
    itemsDesktop: [1199, 3],
    itemsDesktopSmall: [979, 3]

  });	
  
  $("#bangalore").owlCarousel({
	autoPlay: 2000, //Set AutoPlay to 3 seconds
	items: 4,
    itemsDesktop: [1199, 3],
    itemsDesktopSmall: [979, 3]

  });
 
  $("#delhi").owlCarousel({
	autoPlay: 2000, //Set AutoPlay to 3 seconds
	items: 4,
    itemsDesktop: [1199, 3],
    itemsDesktopSmall: [979, 3]

  });
 
});
 

</script>
        <script>

            $("#slider1").responsiveSlides({
                maxwidth: 1600,
                speed: 800
            });

            $(function() {
                $('#primary-menu-toggle').drawer({
                    menu: '#primary-menu',
                    push: '.content',
                    class: 'menu-open'
                });
            });

            var mtop = $('.header').height();
            $('.menu').css('top', mtop);
            $('#down').slideUp();
            $('#slide').click(function() {
                $('#down').slideDown(300);
            });
            $('#primary-menu-toggle, #down a').click(function() {
                $('#down').slideUp();
            });


            $(document).ready(function() {

                $("#owl-demo").owlCarousel({
                    autoPlay: 3000, //Set AutoPlay to 3 seconds

                    items: 4,
                    itemsDesktop: [1199, 3],
                    itemsDesktopSmall: [979, 3]

                });

            });
            $('.dwnarr, .rwnarr').click(function() {
                $('#schedule').slideToggle();
            });

        </script> 
        <script src="assets/js/jquery.datetimepicker.js"></script> 
       
      

  
    </body>

</html>