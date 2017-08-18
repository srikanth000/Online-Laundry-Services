<!doctype html>
<%@include file="connection.jsp" %>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">

	<title>Customer Login - Fabrinz Laundry Services</title>
        <link rel="shortcut icon" href="logo.png">
        <%
    if (session.getAttribute("userid")==null)
    {
%>
<script language="javascript">
        alert("Session Expired!! Login Again");
window.location.href="signup.jsp";
</script>
<%
        }
%>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/deshboard.css" />
        <link rel="stylesheet" type="text/css" href="css/ui.css" />
             

</head>

<body>
    <%@include file="header-custm-deshboard.jsp" %>
	<section>
            <%@include file="custm_side_nevbar.jsp" %>
            <script type="text/javascript" src="js/jquery.min.js"></script>




	<article>
              <h3 >Dashboard</h3>
            
                     
 
                   
			 <div class="clearfix">
            
                <div class="col3 block">
                    <div class="blockbody1 bg" style="background-color: #5481DF;">
                          <h1 class="blocktxt1"><a href="schedule_services.jsp">Schedule <br>a<br> Service</a></h1>                        
                    </div>    
                </div>
                <div class="col3 block">
                    <div class="blockbody1 bg" style="background-color: #5481DF;">
                        <h1 class="blocktxt1"><a href="fabrinz_custm_account.jsp">My <br/> PROFILE </a></h1>                        
                    </div>    
                </div>
            <!--div class="col3 block">
                <div class="blockhead" style="background-color: #5481DF;">
                    My Wallet
                </div>    
                <div class="blockbody">
                     
                           
                    <h1 class="blocktxt"><img src="images/Indian-Rupee.png" />0</h1>
                    <a href="fabrinz_custm_wallet.jsp" style="background-color: #5481DF;">Upgrade</a>
                </div>    
            </div-->  
            
            <div class="col6 block1" style="background-color: #5481DF;" >
               <div class="blockinner">
               <h4 class="blockhead1" style="background-color: #5481DF;">Order Status</h4>
                <div class="blockcont clearfix">
                <div class="col3">
                <img src="images/doorstep.png" class="blockimg" />   
                </div>   
                <div class="col9 wtxt">
                    <span id="orderid"></span>
                   
                    
                </div> 
                 <div class="col9 wtxt">
                     <span id="status"></span>
                </div>     
                </div>       
                <a href="fabrinz_custm_orderhistory.jsp" class="button" style="background-color: #5481DF;">Order History</a>
                 
                </div>           
            </div>  
            </div>   
            
          		</article>
</section>
	 
	 
	<script type="text/javascript">		
		$('nav li').hover(function(){
			$('nav li a').toggleClass('open');
		});	
		var navouter = $('nav').outerWidth();
		 
		$('article').css('marginLeft',navouter);
		$('.table tr:even').css('backgroundColor','#fff');
			
	</script> 
	<script>
	$(window).scroll(function() {
	if ($(this).scrollTop() > 1){  
		$('aside nav').addClass("sticky");
	  }
	  else{
		$('aside nav').removeClass("sticky");
	  }
	});
        $('.info').delay(4000).fadeOut();
          var scrollheight = 70;
	
	$(document).ready(function() {
	$(window).scroll(function() {
	var scrollhead = getCurrentScroll();
	//alert(scrollhead+" px");
	if(scrollhead>=scrollheight) {
	$('aside nav').addClass('sticky')
	}
	else {
	
$('aside nav').removeClass('sticky')
	}
	});
	function getCurrentScroll() {
	return window.pageYOffset || document.documentElement.scrollTop;
	}
	}); 
	</script>
        

</body>

</html>	