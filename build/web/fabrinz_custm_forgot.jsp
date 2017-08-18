<%-- 
    Document   : fabrinz_custm_forgot
    Created on : Jul 15, 2017, 1:02:03 AM
    Author     : shekhar
--%>




<!doctype html>

<html class="no-js" lang="en"><!--<![endif]-->
<!-- the "no-js" class is for Modernizr. --> 
<head>
	<meta charset="utf-8">
	
	<title>Fabrinz- Forgot</title>
	<meta name="author" content="" />
        <%
    if (session.getAttribute("userid")==null)
    {
     }
else {
         response.sendRedirect("fabrinz-custm-login.jsp");
        }
%>
	 <meta name="description" content="fabrinz- On-Demand Laundry & Dry Cleaning Services."/>
        <meta name="keywords" content="laundry, dry cleaning, washing, ironing, laundry mobile app, laundry india, fabrinz, doorstep laundry, online laundry" />
        
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/login_1.css" />
                <script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>

<script type="text/javascript" src="js/login.js"></script>
</head>

<body>
        <div id="slideshow">
<img class="active" src="bg/03.jpg"/>

</div>

	<div class='loginwrap'>
            <a href="index.jsp"><img src='img/logologin.png' align='center'/></a><BR/><BR/>
		 
		<div class='login'>
                    
                    <div class='loginhead'>
                            <h2 style="color: white;">Sign in</h2>
			</div>  
							<div class='loginbody clearfix'>			
                            <form method='post' action='forgot.jsp' name="fabrinz_login" id="fabrinz_login">
                                    <input type='text' placeholder='Email' name="uname" id="uname" />
                                   
					
                                    <input type='submit' value='Submit' id="loginCheck" />
					<div class='clearfix'>
					<div>
					<a href='Sign-up.jsp' class='blk'>Not a Customer?   Sign Up</a>
                                        <a href='fabrinz_team_login.jsp' class='blk' style="color:white; font-weight: bold; ">Fabrinz Team Login</a>
					 
					</div>
				</form>
			</div>
			<div class='loginfooter clearfix'>
				<ul>
					<li><a href='index.jsp#services'>Services</a></li>
					<li><a href='tos.jsp'>Terms &amp; Conditions</a></li>
					<li class='last'><a href='contact.jsp'>Contact</a></li>
				</ul>
			</div>
		</div>
	</div>
        </div>
      
	
	<script type="text/javascript">


$(window).load(function(){

    $('.loginwrap').css({
        position:'absolute',
        left: ($(window).width() - $('.loginwrap').outerWidth())/2,
        top: ($(window).height() - $('.loginwrap').outerHeight())/2
    });

});

// To initially run the function:
$(window).resize();		
</script> 
	
</body>

</html>	