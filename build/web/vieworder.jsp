<%@include file="connection.jsp" %>
<%@page import="java.sql.*" %>
<!doctype html>
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

<html class="no-js" lang="en"><!--<![endif]-->
<!-- the "no-js" class is for Modernizr. --> 
<head>
	<meta charset="utf-8">
	
	<title>My Account</title>
	<meta name="author" content="" />
	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/deshboard.css" />
        <link rel="stylesheet" type="text/css" href="css/ui.css" />
</head>

<body>
    <%@include file="header-custm-deshboard.jsp" %>
	<section>
            <%@include file="custm_side_nevbar.jsp" %>
            
            
            <article >
                  <h3>ORDER HISTORY</h3>
                  
                     <div id="errorMsg" class="message" > </div>   
                     <div class="inner" >
                                 
                         <div class="col4 last panel" style="width: 100%; text-align: center; ">
                             <div class="panel-body"  > 
                                <table class="table table-bordered table-hover" style= "padding: 1% 10% 1% 10%; " width="100%">
<%
   String orderid= request.getParameter("orderid");
   String sname="";
   ResultSet r=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(r.next())
{
    String sid=r.getString("sid");
    ResultSet rr=st.executeQuery("select * from store where uid='"+sid+"'");
    if(rr.next())
    {
       sname=rr.getString("store_name");
    }
 }
   

ResultSet rs=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rs.next())
{
%>
<tr>
<h5 style= "padding: 0% 10% 0% 10%; " width="100%" align="right">Order Date : &nbsp; <%=rs.getString("orderdate")%> &nbsp; &nbsp;</h5></tr>
<tbody id="dataTable" >
                                 <tr>
                                     <td style="border: 1px solid gainsboro; ">Order No. : &nbsp;&nbsp;    <%=rs.getString("orderid")%></td>
                                     <td style="border: 1px solid gainsboro; ;" >Customer Name   :&nbsp;&nbsp; &nbsp;<%=rs.getString("custname")%></td>
                                 </tr>
                                 <tr>
                                      <td style="border: 1px solid gainsboro; ;" >Location.    : &nbsp;&nbsp;  <%=rs.getString("location")%></td>
                                  <td style="border: 1px solid gainsboro; ;" >Store Name (ID)   : &nbsp;&nbsp; <%=sname%> &nbsp;(<%=rs.getString("sid")%>)</td>
                                 </tr>
                               <tr>
                                      <td style="border: 1px solid gainsboro; ;" >Email.    : &nbsp;&nbsp;  <%=rs.getString("email")%></td>
                                  <td style="border: 1px solid gainsboro; ;" >Contact No.   : &nbsp;&nbsp; <%=rs.getString("mobile") %> </td>
                               </tr>
                               <tr>
                                      <td style="border: 1px solid gainsboro; ;" >Address.    : &nbsp;&nbsp;  <%=rs.getString("address")%></td>
                                  <td style="border: 1px solid gainsboro; ;" >Pin code.   : &nbsp;&nbsp; <%=rs.getString("pin") %> </td>
                               </tr>
                               
                                   
         <%
  }
%>
</tbody>
                        </table>
<h5 style="text-align: left; padding: 0% 10% 0% 10%; ">ITEMS :</h5>

     <table class="table table-bordered table-hover"  style= "padding: 1% 10% 1% 10%; " width="100%">
                                          <tr class="trheads">
                                                <td>S.No.</td>
                                                <td>ITEM</td>
                                                <td>ACTIVITY</td>
						<td>RATE</td>
						<td>QUANTITY</td>
						<td>TOTAL</td>
                                          </tr>
                                          
                                          <%
                                              int i=1;
                                                    ResultSet rss=st.executeQuery("select * from orderlistitem where orderid='"+orderid+"'");
                                                    while(rss.next())
                                                 {
                                                %>
                                                <tr>
                                                    <td style="border: 1px solid gainsboro;  text-align: center;"><%=i%></td>
                                                    <td style="border: 1px solid gainsboro; "><%=rss.getString(1)%></td>
                                                    <td style="border: 1px solid gainsboro; "><%=rss.getString(2)%></td>
                                                    <td style="border: 1px solid gainsboro; "><%=rss.getString(3)%></td>
                                                    <td style="border: 1px solid gainsboro; "><%=rss.getString(4)%></td>
                                                    <td style="border: 1px solid gainsboro; "><%=rss.getString(5)%></td>
                                                </tr>
                                                <% i++;}%>
                                      </table><br/>
                                     <%
ResultSet rs1=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rs1.next())
{
%> 
                                      
<table class="table table-bordered table-hover"  style=" padding: 1% 10% 1% 10%;" width="100%">
                                  
                                      <tr> <td   style="border: 1px solid gainsboro; ">Total Qty : <%=rs1.getString("tqty")%></td>  
                                    <td  style="border: 1px solid gainsboro; ">Total Amount : <%=rs1.getString("tamount")%> </td>
                                      </tr>
                                      <tr>
                                    <td style="border: 1px solid gainsboro; ">Order Status : <%=rs1.getString("orderstatus")%></td>
                                     <td style="border: 1px solid gainsboro; ">Payment Status : <%=rs1.getString("paystatus")%></td>
                                      </tr>
                                   
         <%
  }
%>
       
                        </table>
<br/>
<table align="right" style="margin-bottom:10px;">
<tr>
    <td><a href="fabrinz_custm_orderhistory.jsp"><input type="button"  name="done" value="Done"/></a></td>
    
            
</tr>
</table>
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