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

    <title>Fabrinz-Laundry Services </title>
<link rel="shortcut icon" href="logo.png">
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
    
  </head>

  <body background="">

    <!-- Menu -->
    <nav class="menu" id="theMenu">
        <div class="menu-wrap">
            <h1 class="logo"><a href="index.jsp">Fabrinz</a></h1>
            <i class="fa fa-arrow-right menu-close"></i>
            <a href="index.jsp">Home</a>
             <%
           if (session.getAttribute("userid")!=null)
    		{
          %>
          	<a href="fabrinz-custm-deshboard.jsp">My Account</a>
          	<% } %>
            <a href="index.jsp#services">Services</a>
          
            <a href="about.jsp">About</a>
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
         <div class="row">
        <form action="" method="post">
        <div class="col-sm-4" > <label>   Select Location/Area</label></div>
        <div class="col-sm-4" >     
        <select class="form-control" id="sel1" name="lname">
        			<option>Choose Location</option>
                    <option>Secandrabad</option>
                    <option>Hyderabad</option>
                    <option>Basar</option>
                   
            </select>

        </div>

        <div class="col-sm-4">
        <button type="submit" class="btn btn-success" name="submit">search</button>


        </div>
</div>
        </form>
        <br>
        
        <%
        		if(request.getParameter("info")!=null)
        		{
        				String uid=request.getParameter("info");
        				PreparedStatement ps=con.prepareStatement("select * from store where uid=?  " );
                    ps.setString(1,uid);
                    PreparedStatement ps1=con.prepareStatement("select * from item where uid=?  " );
                    ps1.setString(1,uid);
                    ResultSet r2=ps1.executeQuery();
                
                     ResultSet r1=ps.executeQuery();
                        if(r1.next())
                        {
        				//out.println(uid);
        				%>
        			<div class="w3-bar w3-black">
    <button class="w3-bar-item w3-button tablink w3-red" onclick="openCity(event,'London')">Profile</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Paris')">Prices</button>
    <button class="w3-bar-item w3-button tablink" onclick="openCity(event,'Tokyo')">Offers</button>
  </div>
  
  <div id="London" class="w3-container w3-border city">
    <label>
    <p>The Full Details of Store here...</p></label>
    <div class="w3-center">
     <img src="img_avatar4.png" alt="Avatar" style="width:10%" class="w3-circle w3-margin-top">
<br><br>
      <label >Owner name:</label><%= r1.getString("owner_name")%><br>
        <label>Mobile Number:</label><%= r1.getString("mobile")%><br>
          <label>Email id:</label><%= r1.getString("email")%><br>
         

            <label>Location name:</label><%= r1.getString("location_name")%><br>
              <label>Branch name:</label><%= r1.getString("branch_name")%><br>
              <label>store name:</label><%= r1.getString("store_name")%><br>

              <button type="submit" class="btn btn-info" name="submit"><a herf="schedule_services.jsp">SHedule a Service</a></button><br>

      </div>
      <br>
</div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
   <label> Prices</label>
   
    <center>
    <table class="table table-striped" style="width:550px;">
    <thead>
      <tr>
        <th>ItemName</th>
        <th>Action</th>
        <th>Price</th>
      </tr>
    </thead>
    <%}
    while(r2.next())
    {
	%>
   
    <tbody>
      <tr>
        <td><%= r2.getString("item_name")%></td>
        <td><%= r2.getString("Action")%></td>
        <td><%= r2.getString("Cost")%></td>
      </tr>
     </tbody>
    
	
<%}%>
 </table>
   <button type="submit" class="btn btn-info" name="submit"><a herf="schedule_services.jsp">SHedule a Service</a></button><br>
 </center>
  </div>

  <div id="Tokyo" class="w3-container w3-border city" style="display:none">
  <label>  <p>Offers</p></label>
   <center><label><p>Sorry for inconvenience,Offers will be updated(If there) Soon...:)</p></label></center>
  </div>
</div>

<script>
function openCity(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" w3-red", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " w3-red";
}
</script>


        				<%


        		}
               if(request.getParameter("submit")!=null)
               {
                    String Location=request.getParameter("lname");
                    PreparedStatement ps=con.prepareStatement("select * from store where location_name=?  " );
                    ps.setString(1,Location);
                   
                
                     ResultSet rs=ps.executeQuery();
                        if(rs.next())
                        {
                     %>
                     <br>
<label>Here the Results...</label>
                     <table class="table table-striped" style="position: absolute;
bottom:0px;">
                        <thead>
                          <tr>
                            <th>BranchName</th>
                            <th>StoreName</th>
                            <th>OwnerName</th>
                             <th>More Info</th>
                          </tr>
                         </thead>
                          <tbody>
                              <tr>
                                <td><%= rs.getString("branch_name")%></td>
                                <td><%= rs.getString("store_name")%></td>
                                <td><%= rs.getString("owner_name")%></td>
                                <td><form action="" method="post"><button type="submit" class="btn btn-info" name="info" value="<%= rs.getString("uid")%>">info</button></form></td>
                              </tr>    
                        </tbody>
                     <%
                      while(rs.next())
                      {
                      %>

                        <tbody>
                              <tr>
                                <td><%= rs.getString("branch_name")%></td>
                                <td><%= rs.getString("store_name")%></td>
                                <td><%= rs.getString("owner_name")%></td>
                                <td><form action="" method="post"><button type="submit" class="btn btn-info" name="info" value="<%= rs.getString("uid")%>">info</button></form></td>
                              </tr>    
                        </tbody>


                  <%    }
               
                }
                else {
                  	%>
                  		<b><% out.println("no stores found.."); %></b>
                  	<%
                  }  
                } 
               // out.println("sdf"+Location);

             %>
    </table>
        </div>
  <br>
        </div><!-- /container -->
    </div><!-- /headerwrap -->

    <!-- WELCOME SECTION -->
    
    
    <!-- SOCIAL FOOTER --->

    <section id="contact"></section>
   <!-- row -->
        </div><!-- container -->
    </div><!-- Social Footer -->
    
    <!-- CONTACT FOOTER --->
    <div id="cf">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div id="mapwrap">
                      <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3775.115752773752!2d77.92024951420971!3d18.881945362951672!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1srgukt+basar!5e0!3m2!1sen!2sin!4v1500797242332" width="870" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>  
                </div><!--col-lg-8-->
                <div class="col-lg-4">
                       <h4>ADDRESS<br/><br/>Fabrinz Laundry Services</h4>
                    <br>
                    <p>
                       RGUKT Basar, Nirmal,<br/>
                        Telangana.
                    </p>
                    <p>
                        P: +55 4839-4390<br/>
                        F: +55 4333-4345<br/>
                        E: <a href="mailto:#">fabrinz@gmail.com</a>
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
  </body>
</html>
