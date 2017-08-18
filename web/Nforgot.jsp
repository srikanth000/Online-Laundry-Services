<%@page import="java.util.*" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <%
    if (session.getAttribute("userid")==null)
    {
     }
else {
         response.sendRedirect("fabrinz-custm-deshboard.jsp");
        }
%>
    <title>Fabrinz-signup</title>
    
    
    
    
        <link rel="stylesheet" href="css/style.css">

    <script language="JavaScript" type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
      <link rel="stylesheet" type="text/css" href="css/login_1.css" />
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script>
	function formValidation()
	{
		if(emailcheck())
		{
			document.getElementById("login").submit(); 
		}
		else
		{
			document.getElementById("s1").innerHTML="**please enter a valid details";
			return false;
		}
		
	}
	function emailcheck()
	{
		
		var email=document.getElementById("email1").value;
		var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		if (!re.test(email))
		{
		  // alert('Please enter a valid email address.');
			document.getElementById("e1").innerHTML="**please enter a valid email address";
		    return false;
		}
		else
		{
			document.getElementById("e1").innerHTML="";
			return true;
		}
		 
	}
	function passcheck()
	{
		var password1=document.getElementById("password1").value;
		var re1 = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
		if (!re1.test(password1))
		{
		  // alert('Please enter a valid email address.');
			document.getElementById("p1").innerHTML="**password length must be atleast 6 having atleast one digit and one special charachter";
		    return false;
		}
		else
		{
			document.getElementById("p1").innerHTML="";
			return true;
		}
	}
        function formValidation1()
        {
                 if(emailcheck1() && passcheck1() && checkphone())
		{
			document.getElementById("signupp").submit(); 
                        return true;
		}
		else
		{
			document.getElementById("sign").innerHTML="**please enter a valid details";
			return false;
		}         
              

        }
            function emailcheck1()
            {
		//alert("sf");
		var email=document.getElementById("email").value;
		var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		if (!re.test(email))
		{
		  // alert('Please enter a valid email address.');
			document.getElementById("e").innerHTML="**please enter a valid email address";
		    return false;
		}
		else
		{
			document.getElementById("e").innerHTML="";
			return true;
		}
		 
            }
             function passcheck1()
            {
                        //alert("sdf");
                    var password1=document.getElementById("password").value;
                    var re1 = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
              
                    if (!re1.test(password1))
                    {
                      // alert('Please enter a valid email address.');
                            document.getElementById("p").innerHTML="**password length must be atleast 6 having atleast one digit and one special charachter";
                        return false;
                    }
                    else
                    {
                            document.getElementById("p").innerHTML="";
                            return true;
                    }
            }
            function checkphone() {
                 var phone=document.getElementById("phone").value;   
                var a = /^(1\s|1|)?((\(\d{3}\))|\d{3})(\-|\s)?(\d{3})(\-|\s)?(\d{4})$/;
               if (!a.test(phone))
                    {
                      // alert('Please enter a valid email address.');
                            document.getElementById("m").innerHTML="**enter valid mobile number";
                        return false;
                    }
                    else
                    {
                            document.getElementById("m").innerHTML="";
                            return true;
                    }
            }
        
</script>
    
  </head>

  <body>

    <html lang="en">
<head>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  </head>

<body>
    
<div id="form">
  <div class="container">
    <center> <a href="index.jsp"><img src='img/logologin.png' align='center' style="margin-top: 20px;width:220px;height:90px"/></a>
  </center> <br> <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-md-8 col-md-offset-2">
      <div id="userform">
        <ul class="nav nav-tabs nav-justified" role="tablist">
          
          <li  class="active" ><a href="#login"  role="tab" data-toggle="tab">Forgot Password</a></li>
        </ul>
        <div class="tab-content">
          
          <div class="tab-pane fade  active  in" id="login">
            <h2 class="text-uppercase text-center"></h2>
            <form action="forgot.jsp" method="post" id="login" name="login" onSubmit="return formValidation()">
              <div class="form-group">
                <label> Your Email<span class="req">*</span> </label>
                <input type="email" class="form-control" name="email1" id="email1" onblur="emailcheck()">
                <span style="color:red" class="help-block text-danger" id="e1"></span>
              </div>
             
              <div class="mrgn-30-top">
                <button type="submit" class="btn btn-larger btn-block"/>
				
                Submit
                </button>
				<span style="color:red" class="help-block text-danger" id="s1"></span>
                                <a href='signup.jsp' class='blk' style="color:white; font-weight: bold;float:right">Not a Customer?   Sign Up</a>
                                       
					 
              </div>
            </form>
          </div>
            <div class="tab-pane fade  in" id="signup">
            <h2 class="text-uppercase text-center"> Sign Up for Free</h2>
            <form action="signup_new_custm.jsp" method="post" id="signup" name="signup" onSubmit="return formValidation1()">
              <div class="row">
                <div class="col-xs-12 col-sm-6">
                  <div class="form-group">
                      <label> Name<span class="req">*</span> </label>
                    <input type="text" class="form-control" id="first_name" required="required" name="name">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-xs-12 col-sm-6">
                  <div class="form-group">
                    <label> Last Name<span class="req">*</span> </label>
                    <input type="text" class="form-control" id="last_name" required="required" >
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label> Your Email<span class="req">*</span> </label>
                <input type="email" class="form-control"  name="email" id="email" onblur="emailcheck1()">
                <span style="color:red"  class="help-block text-danger" id="e"></span>
              </div>
              <div class="form-group">
                <label> Your Phone<span class="req">*</span> </label>
                <input type="tel" class="form-control" id="phone" name="mobile" onblur="checkphone()">
              <span style="color:red"  class="help-block text-danger" id="m"></span>
              </div>
              <div class="form-group">
                <label> Password<span class="req">*</span> </label>
                <input type="password" class="form-control" id="password" name="password" onblur="passcheck1()">
               <span style="color:red"  class="help-block text-danger" id="p"></span>
              </div>
              <div class="mrgn-30-top">
                <button type="submit" name="signup" id="signupp" class="btn btn-larger btn-block"/>
                
                Sign up
                </button>
                  <span style="color:red"  class="help-block text-danger" id="sign"></span>
                  
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- /.container --> 
</div>


</body>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="exponential.js"></script>
        <script src="js/index.js"></script>
 <script src="js/valid.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js">
    
    
    
  </body>
</html>