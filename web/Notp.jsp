<%@page import="java.sql.*"%>
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
          
          <li  class="active" ><a href="#login"  role="tab" data-toggle="tab">Account Confirmation</a></li>
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