<%@include file="connection.jsp" %>
<%@page import="java.sql.*" %>
<!doctype html>
        
<html class="no-js" lang="en"><!--<![endif]-->

<head>
	<meta charset="utf-8">
	
	<title>My Account</title>
        <link rel="shortcut icon" href="logo.png">
        <link rel="shortcut icon" href="title.png" />
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
	<meta name="author" content="" />
	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/deshboard.css" />
        <link rel="stylesheet" type="text/css" href="css/ui.css" />
        <script type="text/javascript" src="js/jquery.min.js"></script>
 <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/>
<script type="text/javascript" src="js/custmAccount.js"></script>
<script>
    function shownull()
    {
        document.getElementById('dispnull').style.display="block";
        document.getElementById('disppen').style.display="none";
        document.getElementById('dispcomp').style.display="none";
    }
    function showpen()
    {
        document.getElementById('dispnull').style.display="none";
        document.getElementById('disppen').style.display="block";
        document.getElementById('dispcomp').style.display="none";
    }
    function showcomp()
    {
        document.getElementById('dispnull').style.display="none";
        document.getElementById('disppen').style.display="none";
        document.getElementById('dispcomp').style.display="block";
    }
    function ConfirmDelete()
        {
            var result= confirm("Are you sure?");
            if(result== true)
            {
                return true;
            }
            else
            {
                return false;
                
            }
        }
    </script>
        <!-- Facebook Pixel Code -->



<!-- End Facebook Pixel Code --></head>

<body>
    <%@include file="header-custm-deshboard.jsp" %>
	<section>
            <%@include file="custm_side_nevbar.jsp" %>
            
            
            <article >
                  <h3>ORDER HISTORY</h3>
                  <div style="text-align: justify;" > <input type="radio" name="od" onclick="shownull()"  checked=""> Incomplete Order Process &nbsp; &nbsp; <input type="radio"  name="od" onclick="showpen()" >Pending Order &nbsp; &nbsp;<input type="radio"  name="od" onclick="showcomp()" >Complete Order</div>           
                     <div id="errorMsg" class="message" > </div>   
                     <div class="inner">
                                 
                         <div class="col4 last panel" style="width: 100%; " id="dispnull">
                             <div class="panel-body"> 
                                <table class="table table-bordered table-hover" width="100%" >
					<thead>
						<tr>
							<th >S.No.</th>
							<th>ORDER ID</th>
							<th>ORDER DATE</th>
                                                        <th>CUSTOMER NAME</th>
							<th>TOTAL QTY</th>
							<th>TOTAL AMOUNT</th>
							<th>PAY STATUS</th>
                                                        <th>ORDER STATUS</th>
                                                        <th>ACTION</th>
                                                        
						</tr>
					</thead>
                                         <% int i=1;
                                  ResultSet rs= st.executeQuery("select* from orderlist where uid='"+session.getAttribute("userid")+"' and orderstatus='No Status' ORDER BY orderdate DESC ");
                                  while(rs.next())
                                  {
                                      String sid= rs.getString("sid");
                                      String orderid= rs.getString("orderid");
                              %>
                              <tbody id="dataTable" >
                             
                        
						<tr  >
						<td style="border: 1px solid gainsboro; ;"><%=i%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs.getString("orderid")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs.getString("orderdate")%></td>
						<td style="border: 1px solid gainsboro; ;"><%=rs.getString("custname")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs.getString("tqty")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs.getString("tamount")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs.getString("paystatus")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs.getString("orderstatus")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><a href="editorder.jsp?orderid=<%=orderid%>">Edit</a> &nbsp;/ &nbsp;<a href="delorder.jsp?orderid=<%=orderid%>" onclick="ConfirmDelete()">Delete</a> </td>
						</tr>
                                               
					</tbody>
                                         <% i++;
                                                }
                                                %>
				</table>
                             </div>
                         </div>
                            
                         <div class="col4 last panel" style="width: 100%; display: none; " id="disppen" >
                             <div class="panel-body"> 
                                <table class="table table-bordered table-hover" width="100%" >
					<thead>
						<tr>
							<th >S.No.</th>
							<th>ORDER ID</th>
							<th>ORDER DATE</th>
                                                        <th>CUSTOMER NAME</th>
							<th>TOTAL QTY</th>
							<th>TOTAL AMOUNT</th>
							<th>PAY STATUS</th>
                                                        <th>ORDER STATUS</th>
                                                        <th>ACTION</th>
                                                        
						</tr>
					</thead>
                                         <%  i=1;
                                  ResultSet rs1= st.executeQuery("select* from orderlist where NOT(orderstatus ='No Status' or orderstatus='Complete') and uid='"+session.getAttribute("userid")+"' ORDER BY orderdate DESC" );
                                  while(rs1.next())
                                  {
                                      String sid= rs1.getString("sid");
                                      String orderid= rs1.getString("orderid");
                              %>
                              <tbody id="dataTable" >
                             
                        
						<tr  >
						<td style="border: 1px solid gainsboro; ;"><%=i%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs1.getString("orderid")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs1.getString("orderdate")%></td>
						<td style="border: 1px solid gainsboro; ;"><%=rs1.getString("custname")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs1.getString("tqty")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs1.getString("tamount")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs1.getString("paystatus")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs1.getString("orderstatus")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><a href="vieworder.jsp?orderid=<%=orderid%>">View</a> </td>
						</tr>
                                               
					</tbody>
                                         <% i++;
                                                }
                                                %>
				</table>
                             </div>
                         </div>
                      
                         <div class="col4 last panel" style="width: 100%; display: none; " id="dispcomp" >
                             <div class="panel-body"> 
                                <table class="table table-bordered table-hover" width="100%" >
					<thead>
						<tr>
							<th >S.No.</th>
							<th>ORDER ID</th>
							<th>ORDER DATE</th>
                                                        <th>CUSTOMER NAME</th>
							<th>TOTAL QTY</th>
							<th>TOTAL AMOUNT</th>
							<th>PAY STATUS</th>
                                                        <th>ORDER STATUS</th>
                                                        <th>ACTION</th>
                                                        
						</tr>
					</thead>
                                         <%  i=1;
                                  ResultSet rs2= st.executeQuery("select* from orderlist where orderstatus='Complete' and uid='"+session.getAttribute("userid")+"' ORDER BY orderdate DESC" );
                                  while(rs2.next())
                                  {
                                      String sid= rs2.getString("sid");
                                      String orderid= rs2.getString("orderid");
                              %>
                              <tbody id="dataTable" >
                             
                        
						<tr  >
						<td style="border: 1px solid gainsboro; ;"><%=i%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs2.getString("orderid")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs2.getString("orderdate")%></td>
						<td style="border: 1px solid gainsboro; ;"><%=rs2.getString("custname")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs2.getString("tqty")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs2.getString("tamount")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs2.getString("paystatus")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><%=rs2.getString("orderstatus")%></td>
                                                <td style="border: 1px solid gainsboro; ;"><a href="viewinvoice.jsp?orderid=<%=orderid%>">Print</a> &nbsp;/ &nbsp;<a href="delorder.jsp?orderid=<%=orderid%>" onclick="ConfirmDelete()">Delete</a> </td>
						</tr>
                                               
					</tbody>
                                         <% i++;
                                                }
                                                %>
				</table>
                             </div>
                         </div>
                     </div>
                                       
                    
		</article>
                
                                <script src="js/jquery.datetimepicker.js"></script>

	
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