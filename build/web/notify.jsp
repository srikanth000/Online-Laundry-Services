<!doctype html>
<%@include file="connection.jsp" %>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">

	<title>Customer Login - Fabrinz Laundry Services</title>
        <%
    if (session.getAttribute("userid")==null)
    {
%>
<script language="javascript">
        alert("Session Expired!! Login Again");
window.location.href="fabrinz_custm_login.jsp";
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
              <h3 >Dashboard</h3></article><br>
            
                     
 
            
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