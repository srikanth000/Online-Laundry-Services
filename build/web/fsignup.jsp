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
    <script>
        function check()
        {
            var x=document.getElementById("pass").value;
             var y=document.getElementById("cpass").value;
             if(x!=y)
             {
                 document.getElementById("error").innerHTML="Password & confirm password is not matched";
             }
             else
             {
                  document.getElementById("error").innerHTML="";
             }
        }
    </script>
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
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp"><img src="logo.png" algin="left"></img></a>
	<div id="headerwrap">

		<div class="container">

		

		<center> <h3><label>Welcome to Fabrinz Laundry Services.</label></h3>

		
		<h3><label>One Stop Solution to all your Laundry and Dry Cleaning Needs..</label></h3>
		<a href="flogin.jsp"> <button type="button" class="btn btn-primary">Already Existing Store</button></a>
		  <button type="button" class="btn btn-info " data-toggle="modal" data-target="#myModal">Know more</button>
		</center>
		 
		<br><br><br>
			<form action="fstore.jsp" method="post">
			<label for="email" style="font-style: bold">BECOME a Store Manager(Add your store),Please fill the details below**</label>
    <div class="form-group">
      <label for="email">Owner name</label>
      <input type="text" class="form-control" id="oname" placeholder="Enter name"  name="oname" title="Name must be greater than 4 chars" pattern="[a-zA-Z0-9_-]{4,15}" autofocus required>
    </div>
    <div class="form-group">
      <label for="lname">Location name</label>
     <select class="form-control" id="lname" name="lname" autofocus required>
        <option>Secunderabad</option>
        <option>Hyderabad</option>
        <option>Basar</option>
      </select>
    </div>
     <div class="form-group">
      <label for="bname">Branch name</label>
      <input type="text" class="form-control" id="bname" placeholder="Enter Branch name" name="bname" autofocus required>
    </div>
     <div class="form-group">
      <label for="sname">Store name</label>
      <input type="text" class="form-control" id="sname" placeholder="Enter Store name" name="sname" autofocus required>
    </div>
    <div class="form-group">
      <label for="email">Email</label>
      <input type="email" class="form-control" id="email" placeholder="Enter  email" name="email" pattern="^(([-\w\d]+)(\.[-\w\d]+)*@([-\w\d]+)(\.[-\w\d]+)*(\.([a-zA-Z]{2,5}|[\d]{1,3})){1,2})$" title="Enter valid Email" required="required">
    </div>
    <div class="form-group">
      <label for="number">Mobile Number</label>
      <input type="text" class="form-control" id="number" placeholder="Enter Mobile number" name="number" title="Enter valid number" pattern="[0-9]{10}" autofocus required>
    </div>
    <div class="form-group">
      <label for="password">Choose Password</label>
      <input type="password" class="form-control" id="pass" placeholder="Enter password" name="pass" title="Password must contain atleast one special char and number" pattern="^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$" autofocus required>
    </div>
     <div class="form-group">
      <label for="cassword">Confirm Password</label>
      <input type="password" class="form-control" id="cpass" placeholder="Enter password" name="cpass" onblur="check()" autofocus required>
      <span id="error" style="color: red"></span>
     </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember" autofocus required><a href="tos.jsp">Accept terms & conditions</a></label>
    </div>
    <button type="submit" class="btn btn-success">Save & next</button>
  </form>
  <br>
		</div><!-- /container -->
	</div><!-- /headerwrap -->

	<!-- WELCOME SECTION -->
    
	<!-- Model -->
	<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Become a Franchise.Please do read this</h4>
        </div>
        <div class="modal-body">
          <p>This is a large modal.</p>
          <p>Let's talk Commercial Laundry!</p>
                        <p>As dry cleaning and laundry business in India is evolving at a brisk growth rate we at Wash and Save are offering feasible yet profitable business opportunity to aspiring franchisees. Franchising offers a huge opportunity to be your own boss minus the risks associated with starting a business from scratch.</p>
                        <p>Indian market is rapidly growing, you will see every strata of the society now scout for choices to keep their expensive and branded garments spick and span. Dry cleaning and laundry industry is turning out to be more organized than before, the industry is now set to offer quality services at affordable prices to regular customers and corporate clients.</p>
                        <p>There is a growing demand for high-quality services from urban customers. This has prompted few organized players like us to set up state-of- the-art laundry facilities at low costs with maximum return on investment and attain higher profit margins with key focus on quality service, convenience and best pricing in the industry.</p>
                        <p>As this business model rules the roost, we are set to offer the lucrative business prospects to franchisees and creating employment opportunities for likeminded individuals and aim to work with Women entrepreneurs, housewives, retired active couples, budding entrepreneurs, professionals and others who believe in this business with commitment towards quality.</p>
                        <p>Whether you have previous laundry experience or are new to the industry, our trained staff will take you through every aspect of opening and operating your laundry efficiently and effectively.</p>
                        <p>So, all those who are waiting with bated breath to get into the business of dry cleaning and laundry industry, can now avail best of business opportunity by associating with <span style="font-weight:bold;">Wash & Save </span>.</p>

                        <p class="lead" style="font-size: 22px;">Why Franchise with Wash & Save?</p>
                        <p>Just when you thought laundry services couldn&#39;t have gotten easier, Wash and Save introduces itself in a very unique and dynamic role in the laundry industry.</p>
<p>Wash &amp; Save offers individual washing of your clothes, in a hygienic way, and offer quick delivery options.</p>
<p>Wash &amp; Save employs energy saving methods like eco-friendly detergents and water efficient devices.</p>
<p>Applicable for all, experienced or novices to the laundry service, the Wash &amp; Save team guides new partners through the process of setting up their own laundry business.</p>

                        <!-- 9/14/2016<p>If you are an entrepreneur looking for business opportunities in the Laundry sector, then a <span style="font-weight:bold;">Wash & Save </span> franchise will be the perfect platform to achieve your business goals. Laundry is a necessary evil. The laundry industry has weathered many a weak economic times. Washing and drying clothes is a basic human need and a simple business. Franchising offers a huge opportunity to be your own boss minus the risks associated with starting a business from scratch.</p>

                        <p>The <span style="font-weight:bold;">Wash & Save</span> team has the experience and knowledge to get you up and running quickly and to help you avoid the steep learning curve that comes with starting a new business. Whether you have previous laundry experience or are new to the industry, our trained staff will take you through every aspect of opening and operating your laundry efficiently and effectively.</p>

                        <p class="lead" style="font-size: 22px;">Why Franchise with Wash & Save?</p>

                        <p>Just when you thought laundry services couldn&#39;t have gotten easier, Wash and Save introduces itself in a very unique and dynamic role in the laundry industry.</p>

                        <p>Wash &amp; Save offers individual washing of your clothes, in a hygienic way, and offer quick delivery options.</p>

                        <p>Wash &amp; Save employs energy saving methods like eco-friendly detergents and water efficient devices.</p>

                        <p>Applicable for all, experienced or novices to the laundry service, the Wash &amp; Save team guides new partners through the process of setting up their own laundry business.</p>end-->

                        <p>World class facility</p>

                        <p>Top notch imported equipment</p>

                        <p>Door to door pick-up and delivery</p>

                        <p>Wash and fold services</p>

                        <p>Press</p>
                       </div>
                        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
					</div>

                </div>
            </div>

        </div>
       
      </div>
    </div>
  </div>
  </div>
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
                    <p>The point of choosing Fabrinz  for laundry and dry cleaing services is that ,it provides multi stores where you can find multiple stores to shedule a service. </p>
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
