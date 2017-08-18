

<%@page import="java.util.*" %>
<%@include file="connection.jsp" %>
<!doctype html>

<html class="no-js" lang="en"><!--<![endif]-->
<!-- the "no-js" class is for Modernizr. --> 
<head>
	<meta charset="utf-8">
	<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
	
	<!-- Important stuff for SEO, don't neglect. (And don't dupicate values across your site!) -->
	<title>Fabrinz- Sign Up</title>
	<meta name="author" content="" />
	 <meta name="description" content="fabrinz- On-Demand Laundry & Dry Cleaning Services."/>
        <meta name="keywords" content="laundry, dry cleaning, washing, ironing, laundry mobile app, laundry india, fabrinz, doorstep laundry, online laundry" />
        
	
	<meta name="google-site-verification" content="" /> 
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/login_1.css" />
        <script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
	 
<style>
.inputbox
{
    width: 100%;
    height: 20px;
}
</style>
<script type="text/javascript" src="js/login.js"></script>
<script type="text/javascript">

</script>
</head>
<%
   // Random rand = new Random();
    //int n = rand.nextInt(900000) + 100000;
    //out.println(n);
    if(request.getParameter("Submit")!=null)
    {
        
      String otp=request.getParameter("otp");
      out.println((String)session.getAttribute("otp"));
      if(otp.equals((String)session.getAttribute("otp")))
      {
          String email=(String)session.getAttribute("email");
         out.println((String)session.getAttribute("email"));
           int i= st.executeUpdate("update user set status=1 where Email='"+email+"'");
         response.sendRedirect("signup.jsp");
      }
      else{
          %>
          <script language="javascript">
    alert("You entered wrong OTP.please enter correct one." );
   
    
        </script>
      <%
         }
    }
    %>
<body>
    <div id="slideshow">
<img class="active" src="bg/03.jpg"/>

</div>
    <BR/>
    
	<div class='loginwrap'>
            <a href="index.jsp"><img src='img/logologin.png' align='center' style="margin-top: 20px;"/></a><BR/>
		 
            <div class='login' style="border-color: yellow;">		
			
			<div class='loginhead' >
				<h2 style="color: white;">REGISTER</h2>
			</div>
			<div class='loginbody clearfix'>			
                            <form method='post' action='' name="signup_new_custm" id="signup_new_custm">
                                    <input type='text' placeholder='otp' name="otp" id="otp" />
                                  
					
                                    <div class='clearfix'>
					
                                          <a href="sms.jsp">Resend OTP</a>
                                  
					</div>
                                        
                                    <input class='big' type='submit' name="Submit" value='Submit' id="custmReg" />
                                    <div class='clearfix'></div>
					<div>
                                           
					<a href='signup.jsp' class='blk'>Already Registered?   Sign In</a>
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
	                                    </form>
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