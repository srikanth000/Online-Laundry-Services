



<!doctype html>

<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">
	
	<title>Fabrinz- Login</title>
         <link rel="shortcut icon" href="logo.png">
	<meta name="author" content="" />
         <%
    if (session.getAttribute("uid")==null)
    {
     }
else {
         response.sendRedirect("welcomestore.jsp");
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
            <img class="active" src="bg/03.jpg" style="width: 100%"/>

</div>

	<div class='loginwrap'>
            <a href="index.jsp"><img src='img/logologin.png' align='center'/></a><BR><BR>
		 
		<div class='login'>		
			
			<div class='loginhead'>
                            <h2 style="color: white;">Sign in (Team)</h2>
			</div>
			<div class='success'><div id="errorMsg"></div></div>
           <div id="errorMsg1" class="error"></div>
			<div class='loginbody clearfix'>			
                            <form method='post' action='login.jsp' name="fabrinz_team_login" id="fabrinz_team_login">
                                    <input type='text' placeholder='Email/Mobile No' name="uname" id="uname" />
                                    <input type='password' placeholder='Password' name="pwd" id="pwd" />
					
                                    <input type='submit' value='Submit' id="loginCheck" />
                                    <div class='clearfix'></div>
					<div>
					
                                        <a href='fabrinz_team_forgot.jsp' class='blk'>Forgot Password</a>
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