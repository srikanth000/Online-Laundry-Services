<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

    <title>Fabrinz-Laundry Services </title>
<link rel="shortcut icon" href="logo.png">

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">

    <link href="assets/css/font-awesome.min.css" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
    <script src="assets/js/modernizr.custom.js"></script>
    
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
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="logo.png" algin="left">
	<div id="headerwrap">

		<div class="container">

		

		<center> <h3><label>Welcome to Fabrinz Laundry Services.</label></h3><br><br><br>

		<div class="alert alert-success">
                    <strong>Successuflly registered! You need an Admin APPROVAL in order to log in.Please wait for the APPROVAL which will be sent through SMS to your mobile..</strong>
  </div>
		 
  <br>
		</div><!-- /container -->
	</div><!-- /headerwrap -->

	<!-- WELCOME SECTION -->
    
	
	<!-- SOCIAL FOOTER --->

	<section id="contact"></section>
	<!-- row -->
		</div><!-- container -->
	</div><!-- Social Footer -->
	
	<!-- CONTACT FOOTER --->
	<div id="cf">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div id="mapwrap">
                      <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3775.115752773752!2d77.92024951420971!3d18.881945362951672!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1srgukt+basar!5e0!3m2!1sen!2sin!4v1500797242332" width="900" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
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
                    <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
                </div><!--col-lg-4-->
            </div><!-- row -->
        </div><!-- container -->
    </div>
	

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
