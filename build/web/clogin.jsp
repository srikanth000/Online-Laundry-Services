<%-- 
    Document   : store
    Created on : 13 Jul, 2017, 3:17:36 AM
    Author     : ammuladdu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@include file="connection.jsp" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

    <title>LINK - Agency Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/main.css" rel="stylesheet">

    <link href="assets/css/font-awesome.min.css" rel="stylesheet">

    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    
    <script src="assets/js/modernizr.custom.js"></script>

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
    if (session.getAttribute("uid")==null)
    {
     }
else {
         response.sendRedirect("welcomestore.jsp");
        }
%>

  <body background="">
 
    <!-- Menu -->
    <nav class="menu" id="theMenu">
        <div class="menu-wrap">
            <h1 class="logo"><a href="index.html#home">Fabrinz</a></h1>
            <i class="fa fa-arrow-right menu-close"></i>
            <a href="index.jsp">Home</a>
             <%
           if (session.getAttribute("userid")!=null)
        {
          %>
            <a href="fabrinz-custm-deshboard.jsp">My Account</a>
            <% } %>
            <a href="index.jsp#services">Services</a>
            <a href="portfolio.html">Portfolio</a>
            <a href="about.html">About</a>
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="logo.png" algin="left">
    <div id="headerwrap">

        <div class="container">

        

        <center> <h3><label>Welcome to Fabrinz Laundry Services.</label></h3></center><br>
        <div class="w3-row">
        <div class="w3-col m3 "><p></p></div>
        <div class="w3-col m6 w3-dark-grey">
        <div class="w3-card-4" >
        <header class="w3-container w3-blue">
          <h3 align="center">Sign in</h3>

        </header>

        <div class="w3-container">
          <br>
          <form action=" " method="post">
          <span id="error">
          </span>
          <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
          </div>
          <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
          </div>
           <label style="float: right;"><a href="forgot.jsp">Forgot password?</a></label><br>
         <center class="text-center">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <button type="submit" class="btn btn-primary" name="sub"  style="vertical-align: middle;    border-radius: .25rem;    min-width: 125px;    text-align: center;">Sing in</button></center><br>
            
            <center><label>Still no account? Please go to <a href="fsignup.jsp" class="">Sign up</a></label></center>
         
           
         
        </form>
         <br>
        </div>

        <footer class="w3-container w3-blue">
          <h6>@Fabrinz</a></h6>
        </footer>
      </div>
      </div>
      <div class="w3-col m3 "><p></p></div>
      </div>

  <br>
        </div><!-- /container -->
    </div><!-- /headerwrap -->
 <%
            if(request.getParameter("sub")!=null)
            {
               String uname=request.getParameter("email");
              String password=request.getParameter("pwd");
             
              PreparedStatement ps=con.prepareStatement("select * from store where email=? or mobile=? and password=?" );
              ps.setString(1,uname);
              ps.setString(2,uname);
              ps.setString(3,password);
              ResultSet rs=ps.executeQuery();
              if(rs.next())
        
              {
              String name=rs.getString("owner_name");
              String storename=rs.getString("store_name");
              int usertype=rs.getInt("usertype");
              String uid= rs.getString("uid");
            out.println("df");
              session.setAttribute("owner_name", name);
              session.setAttribute("store_name", storename);
              session.setAttribute("usertype", usertype);
              session.setAttribute("password", password);
              session.setAttribute("uid", uid);


              if (usertype == 1)
              {
             %>
          <script language="javascript">
                  alert("Welcome Admin!!");
          window.location.href="admindeshboard.jsp";
          </script>
          <%
              
              }
              else if (usertype == 2)
                      {

          %>
          <script language="javascript">
                  alert("Welcome <%=session.getAttribute("owner_name")%>!!");
          window.location.href="welcomestore.jsp";
          </script>
          <%
             }
              else
              {
    %>
                <script language="javascript">
                alert("Sorry.. Invaild!!!! Try Again");
        window.location.href="fabrinz_team_login";
        </script>
        <%
            }
        }else{  %>

      <script type="text/javascript">
       // alert("f");
          document.getElementById("error").innerHTML="<div class='alert alert-danger'>"+

   "<strong>"+"Invalid!"+"</strong>" +"                 Email or Password"+
 "</div>";
        </script>
        <%
      }
        }
      

          %>
    <!-- WELCOME SECTION -->
    
    
    <!-- SOCIAL FOOTER --->

    <section id="contact"></section>
    <div id="sf">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 dg">
                    <h4 class="ml">FACEBOOK</h4>
                    <p class="centered"><a href="#"><i class="fa fa-facebook"></i></a></p>
                    <p class="ml">> Become A Friend</p>
                </div>
                <div class="col-lg-4 lg">
                    <h4 class="ml">TWITTER</h4>
                    <p class="centered"><a href="#"><i class="fa fa-twitter"></i></a></p>
                    <p class="ml">> Follow Us</p>
                </div>
                <div class="col-lg-4 dg">
                    <h4 class="ml">GOOGLE +</h4>
                    <p class="centered"><a href="#"><i class="fa fa-google-plus"></i></a></p>
                    <p class="ml">> Add Us To Your Circle</p>
                </div>
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- Social Footer -->
    
    <!-- CONTACT FOOTER --->
    <div id="cf">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div id="mapwrap">
                        <iframe height="400" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.es/maps?t=m&amp;ie=UTF8&amp;ll=52.752693,22.791016&amp;spn=67.34552,156.972656&amp;z=6&amp;output=embed"></iframe>
                    </div>  
                </div><!--col-lg-8-->
                <div class="col-lg-4">
                    <h4>ADDRESS<br/>Minsk - Head Office</h4>
                    <br>
                    <p>
                        Business Center, SomeAve 987,<br/>
                        Minsk, Belarus.
                    </p>
                    <p>
                        P: +55 4839-4390<br/>
                        F: +55 4333-4345<br/>
                        E: <a href="mailto:#">hello@linkagency.com</a>
                    </p>
                    <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
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
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="exponential.js"></script>
        <script src="js/index.js"></script>
 <script src="js/valid.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js">
    
  </body>
</html>
