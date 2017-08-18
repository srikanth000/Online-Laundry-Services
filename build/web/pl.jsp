<%@include file="connection.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to FabRinz...</title>
<link rel="stylesheet" href="css/global.css">
    <%
    if (session.getAttribute("uid")==null)
    {
%>
<script language="javascript">
        alert("Session Expired!! Login Again");
window.location.href="fabrinz_team_login.jsp";
</script>
<%
        }
%>
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="EditDeletepage.js"></script>
<link rel="stylesheet" type="text/css" href="pagination.css" />
<script type="text/javascript">
			$(function() {
			$('.password').pstrength();
			});
        </script>
<script>
			function show()
			{
					document.getElementById('addlocation').style.display="block";
			}
			function hide()
			{
				document.getElementById('addlocation').style.display="none";
			}
			
		</script>
</head>
<body>
<%@ include file="includes/storeheader.jsp"%>
<div id="nav">
    <%@ include file="storeslistt.jsp"%>
</div>
<div id="main">
<form action="">
                        <table width="100%" border="1px" id="myTable" class="tablesorter" >
      <tr class="trheads">     
 <td>S.No</td>
                                    <td>Invoice Number</td>
                                    <td>Name</td>
                                    <td>Invoice Date</td>
                                    <td>Delivery Date</td>
                                   <td>Total Amount</td>
                                     <td>Paid Amount</td>
                                   <td>Total Due</td>
                                   
                                 
                    
                                </tr>
                            
                            <tbody>

                                <tr>
                                    <td class="align-center"><!--?php echo $i;?!--></td>
                                    <td><!--?php echo $row['invoicenumber'];?!--></td>
                                    <td><!--?php echo $row3['first_name'];?!--></td>
                                     <td><!--?php echo $row['invoicedate'];?!--></td>
                                      <td><!--?php echo $row['delivery_date'];?!--></td>
                                           <td><!--?php echo $row['total_amount'];?!--></td>
                                       <td><!--?php echo $row['paid_amount'];?!--></td>
                                             <td><!--?php echo $row['amount_due'];?!--></td>
                                 </tr>
                             <!--?php $i++; } ?!-->
                            </tbody>
                        </table>
                        </form>
                      
                        
    <%@ include file="includes/footer.jsp"%>
