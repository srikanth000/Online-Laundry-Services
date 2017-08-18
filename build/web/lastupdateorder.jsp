<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@include file="connection.jsp" %>
<%@page import="java.sql.*" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to FabRinz...</title>
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
<link rel="stylesheet" href="css/global.css"/>
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="EditDeletepage.js"></script>
<link rel="stylesheet" type="text/css" href="pagination.css" />
</head>
<script>
    function showupdate()
    {
        document.getElementById('update').style.display="block";
        document.getElementById('detail').style.display="none";
    }
    function showorder()
    {
        document.getElementById('update').style.display="none";
        document.getElementById('detail').style.display="block";
    }
    function updt()
   {
            var result= confirm("Are you sure Update Order Status?");
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
<body>
    <%@ include file="includes/storeheader.jsp"%>
<div id="nav">
  <%@ include file="storeslistt.jsp"%>
</div>
<div id="main" ><h1 align="center">ORDER DETAILS</h1>
     <div id="detail" style="width: 90%; height: auto; margin-left: 5%; margin-right: 5%">
            
<%
   String orderid= request.getParameter("orderid");
ResultSet rs=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rs.next())
{
%>
                        <table width="100%" border="1px" id="myTable" class="tablesorter" >
                                 <tr>
                                     <td >Order No. : &nbsp;&nbsp;    <%=rs.getString("orderid")%></td>
                                     <td >Customer Name   :&nbsp;&nbsp; &nbsp;<%=rs.getString("custname")%></td>
                                 </tr>
                                 <tr>
                                      <td >Location.    : &nbsp;&nbsp;  <%=rs.getString("location")%></td>
                                  <td >Store Name (ID)   : &nbsp;&nbsp; <%=session.getAttribute("store_name") %> &nbsp;(<%=rs.getString("sid")%>)</td>
                                 </tr>
                               <tr>
                                      <td >Email.    : &nbsp;&nbsp;  <%=rs.getString("email")%></td>
                                  <td >Contact No.   : &nbsp;&nbsp; <%=rs.getString("mobile") %> </td>
                               </tr>
                               <tr>
                                      <td >Address.    : &nbsp;&nbsp;  <%=rs.getString("address")%></td>
                                  <td >Pin code.   : &nbsp;&nbsp; <%=rs.getString("pin") %> </td>
                               </tr>
                               
                                   
         <%
  }
%>
       
                        </table><h1>Items :</h1>

<table width="100%" border="1px" id="myTable" class="tablesorter" >
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
                                                    <td style="text-align: center;"><%=i%></td>
                                                    <td><%=rss.getString(1)%></td>
                                                    <td><%=rss.getString(2)%></td>
                                                    <td><%=rss.getString(3)%></td>
                                                    <td><%=rss.getString(4)%></td>
                                                    <td><%=rss.getString(5)%></td>
                                                </tr>
                                                <% i++;}%>
                                      </table><br/>
                                     <%
ResultSet rs1=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rs1.next())
{
%> 
                                      
                                   <table width="100%" border="1px" id="myTable" class="tablesorter" >
                                  
                                      <tr><td >Total Qty : <%=rs1.getString("tqty")%></td>  
                                    <td >Total Amount : <%=rs1.getString("tamount")%> </td>
                                      </tr>
                                      <tr>
                                    <td >Order Status : <%=rs1.getString("orderstatus")%></td>
                                     <td >Payment Status : <%=rs1.getString("paystatus")%></td>
                                      </tr>
                                   
         <%
  }
%>
       
                        </table>
<br/>
<table align="right" style="margin-bottom:10px;">
<tr>
    <td><input type="button" onclick="showupdate()" name="update" value="Update"/></td>
    <td><a href="viewinvoice.jsp?orderid=<%=orderid%>"><input type="button" name="print" value="Print"/></a></td>
            
</tr>
</table>
        </div>

<div id="update" style="width: 90%; height: auto; margin-left: 5%; margin-right: 5%; display: none;">
    <form method="post" action="update_order_status1.jsp?orderid=<%=orderid%>">            
<%
ResultSet rs2=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rs2.next())
{
%>
                        <table width="100%" border="1px" id="myTable" class="tablesorter" >
                                 <tr>
                                     <td >Order No. : &nbsp;&nbsp;    <%=rs2.getString("orderid")%></td>
                                     <td >Customer Name   :&nbsp;&nbsp; &nbsp;<%=rs2.getString("custname")%></td>
                                 </tr>
                                 <tr>
                                      <td >Location.    : &nbsp;&nbsp;  <%=rs2.getString("location")%></td>
                                  <td >Store Name (ID)   : &nbsp;&nbsp; <%=session.getAttribute("store_name") %> &nbsp;(<%=rs2.getString("sid")%>)</td>
                                 </tr>
                               <tr>
                                      <td >Email.    : &nbsp;&nbsp;  <%=rs2.getString("email")%></td>
                                  <td >Contact No.   : &nbsp;&nbsp; <%=rs2.getString("mobile") %> </td>
                               </tr>
                               <tr>
                                      <td >Address.    : &nbsp;&nbsp;  <%=rs2.getString("address")%></td>
                                  <td >Pin code.   : &nbsp;&nbsp; <%=rs2.getString("pin") %> </td>
                               </tr>
                               
                                   
         <%
  }
%>
       
                        </table><h1>Items :</h1>

<table width="100%" border="1px" id="myTable" class="tablesorter" >
                                          <tr class="trheads">
                                                <td>S.No.</td>
                                                <td>ITEM</td>
                                                <td>ACTIVITY</td>
						<td>RATE</td>
						<td>QUANTITY</td>
						<td>TOTAL</td>
                                          </tr>
                                          
                                          <%
                                              i=1;
                                                    ResultSet rsss=st.executeQuery("select * from orderlistitem where orderid='"+orderid+"'");
                                                    while(rsss.next())
                                                 {
                                                %>
                                                <tr>
                                                    <td style="text-align: center;"><%=i%></td>
                                                    <td><%=rsss.getString(1)%></td>
                                                    <td><%=rsss.getString(2)%></td>
                                                    <td><%=rsss.getString(3)%></td>
                                                    <td><%=rsss.getString(4)%></td>
                                                    <td><%=rsss.getString(5)%></td>
                                                </tr>
                                                <% i++;}%>
                                      </table><br/>
                                     <%
ResultSet rs3=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rs3.next())
{
%> 
                                      
                                   <table width="100%" border="1px" id="myTable" class="tablesorter" >
                                  
                                      <tr><td >Total Qty : <%=rs3.getString("tqty")%></td>  
                                    <td >Total Amount : <%=rs3.getString("tamount")%> </td>
                                      </tr>
                                      <tr>
                                    <td >Order Status : 
                                        <select name="orderstatus">
                                            <option value="<%=rs3.getString("orderstatus")%>"><%=rs3.getString("orderstatus")%></option>
                                            <option value="Picked From Destination">Picked From Destination</option>
                                            <option value="In Laundry">In Laundry</option>
                                            <option value="Process Finished & Ready to Dispatch">Process Finished & Ready to Dispatch</option>
                                            <option value="Complete">Complete</option>
                                    </select>
                                    </td>
                                     <td >Payment Status : 
                                         <select name="paystatus">
                                            <option value="<%=rs3.getString("paystatus")%>"><%=rs3.getString("paystatus")%></option>
                                            <option value="Paid">Paid</option>                                           
                                    </select>
                                     </tr>
                                   
         <%
  }
%>
       
                        </table>
<br/>
<table align="right" style="margin-bottom:10px;">
<tr>
    <td><input type="submit" onclick="return updt()" name="update" value="Update"/></td>
    <td><input type="button" onclick="showorder()" name="cancel" value="Cancel"/></a></td>
            
</tr>
</table>
    </form>

        </div>
</div>

       

	</body>
</html>
