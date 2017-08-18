<%@include file="connection.jsp" %>
<%@page import="java.sql.*" %>
<!doctype html>

<html class="no-js" lang="en"><!--<![endif]-->
<!-- the "no-js" class is for Modernizr. --> 
<head>
	<meta charset="utf-8">
	<title>Fabrinz- Schedule Services</title>
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

var xmlHttp  
      var xmlHttp
      function showstore(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="store_list.jsp";
      url +="?count="+str;
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("store").innerHTML=xmlHttp.responseText   
      }   
      }
      

function storeid()
{    
   var slt = document.getElementById('store')
   var txt =  document.getElementById('store_id');
   txt.value = slt.value;
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
                  <h3>SCHEDULE A SERVICE</h3>
                     <div id="errorMsg" class="message" > </div>   
                     <div class="inner">
                                 
                         <div class="col4 last panel" style="width: 100%; " >
                        <h4 class="panel-header" >Schedule Order</h4>
                         
                        <form method="post" action="sd1.jsp" onSubmit="return check()">
                               <div class="panel-body">
                                   <div>
                        
                        
                         <select id="location" name="location" onchange="showstore(this.value)" style="width: 33%; float: left; margin-right: 5px;"> 
                             <option value="none">-- SELECT LOCATION --</option>
                           <%  ResultSet r=st.executeQuery("select * from location ");
                                while(r.next())
                                    {
                            %>
                                                 <option value="<%= r.getString("location_name")%>"><%= r.getString("location_name")%></option>
                           <% } %>
                                         </select>
                                     </div>  
                                         <div>
                                             <select name="store" id="store" style="width: 40%;margin-right: 5px;" onchange="storeid()" >
                                                     <option value="-1"></option>
                                              </select>
                                               Store ID  <input type="text" readonly="" placeholder="Store Id" id="store_id" name="store_id" style="width: 20%;" />  
                                         </div>
                                         
                                    
                                <% ResultSet rs= st.executeQuery("select * from user where userid='"+session.getAttribute("userid")+"'");
                                if(rs.next())
                                {
                                 %>                        

                                 <input type="text" placeholder="Custumer Name" value="<%=rs.getString("Name")%>" id="custname" name="custname" onfocus="show_item_list()" /> 
                            
                            <input type="text"  placeholder="Email" value="<%=rs.getString("Email")%>" id="custemail" name="custemail"  />
                            
                              
                            <input type="text" placeholder="Mobile No" id="custmobile" name="custmobile" value="<%=rs.getString("Mobile")%>"  />
                            
                            
                            <input type="text" placeholder="Pincode" required="true" id="custpin" name="custpin" value=""  />
                            
                              
                            <input type ="text" placeholder="Address" required="true" id="custadd" name="address" /> 

                            <select  id="picuptime" name="picuptime" required="true">
                                <option value=1>-Select Picup Time-</option>
                                <option value="08:00 AM To 12:00 PM">08:00 AM To 12:00 PM</option>
                                <option value="12:00 PM To 04:00 PM">12:00 PM To 04:00 PM</option>
                                <option value="04:00 PM To 08:00 PM">04:00 PM To 08:00 PM</option>
                            </select> 
                            <%}%>

                         </div>
                            <input type="submit" value="Save & Next"  name="submit" style="width: 20%" >
                        </form>
                           
                    
		</article>
                            <script src="js/jquery.datetimepicker.js"></script>

</section>
	 
	 
	<script type="text/javascript">		
  function check()
  {
    var p=document.getElementById("picuptime").value;
    var l=document.getElementById("location").value;
    
    var y=1,x=1;
    if (l=="none") {
      alert("please select location");
      return false;
    }
    else
    {
        var s=document.getElementById("store").value;
        if(s=="-1")
        {
         alert("please select store");
         return false;
        }
       else
        y=0;
    }

    if (p==1) {
      alert("please select picuptime");
      return false;
    }
    else
    {
        x=0;
       
    }
    if(y==0&&x==0)
       document.getElementById("submit").submit(); 

  }
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