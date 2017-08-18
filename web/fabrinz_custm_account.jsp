<%@include file="connection.jsp" %>
<!doctype html>
<html class="no-js" lang="en"><!--<![endif]-->
<!-- the "no-js" class is for Modernizr. --> 
<head>
	<meta charset="utf-8">
       
	<meta name="author" content="" />
	<meta name="description" content="" />
         <title>My Account</title>
	 <link rel="shortcut icon" href="logo.png">
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
        <!-- Facebook Pixel Code -->
        
<script>
function validation()
{
    var cp=document.getElementById('custpass').value;
    var rp=document.getElementById('cnfpass').value;
    if(cp!=rp)
    {
        alert("Password Not Match ");
        return false;
    }
    
}
</script>
<!-- End Facebook Pixel Code --></head>

<body>
    <%@include file="header-custm-deshboard.jsp" %>
	<section>
            <%@include file="custm_side_nevbar.jsp" %>
            <script type="text/javascript" src="js/jquery.min.js"></script>
 <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/>
<script type="text/javascript" src="js/custmAccount.js"></script>

		<article>
                    
                    
                     <h3>My Account</h3>
                        
 
                 
                     
                                     
                   
                   
                     <div class="inner">
                    <div class="col4 last panel">
                        <h4 class="panel-header">Profile</h4>
                         
                        
                        <form method="post" action="update_profile.jsp">
                            <% ResultSet rs= st.executeQuery("select * from user where userid='"+session.getAttribute("userid")+"'");
                            if(rs.next())
                            {
                            %>
                               <div class="panel-body">
                              
                             
                            <input type="text" readonly="" placeholder="Name" value="<%=rs.getString("Name")%>" id="custname" name="custname" />
                            
                            <input type="text" readonly="" placeholder="Email" value="<%=rs.getString("Email")%>" id="custemail" name="custemail" />
                            
                              
                            <input type="text" placeholder="Mobile No" id="custmobile" name="custmobile" value="<%=rs.getString("Mobile")%>" />
                            
                            
                            <input type="text" placeholder="Pincode" id="custpin" name="custpin" value="<%=rs.getString("Pincode")%>"  />
                            
                              
                            <textarea placeholder="Address:State,City,Landmark" id="custadd" name="custadd"><%=rs.getString("Address")%> </textarea>
                              
                                
                            <input type="text" readonly="" placeholder="DOB"  id="custdob" name="custdob"  value="<%=rs.getString("DOB")%>"/>
                            
                         </div>
                             <input type="submit" value="submit" id="custmAccount">
                            <%}%>
                        </form>
                           
                    </div>
                             
                            <div class="col4 panel">
                                  <h4 class="panel-header">Change Password</h4>
                                  
                                <form method="post" action="custm_chpwd.jsp">
                                     <div class="panel-body">
                                 <input type="hidden" value="kishor.umr@gmail.com" id="custemail" name="custemail" />
                            <input type="password"  placeholder="Password"  id="custpass" name="custpass" />
                            <input type="password"  placeholder="Retype Password"  id="cnfpass" name="cnfpass" />
                             </div>
                                    <input type="submit" value="submit" id="changePwd" onclick="return validation()">
                            
                        </form>
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