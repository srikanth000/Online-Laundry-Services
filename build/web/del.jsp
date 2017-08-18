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
<body>
    <%@ include file="includes/storeheader.jsp"%>
<div id="nav">
  <%@ include file="storeslistt.jsp"%>
</div>
<div id="main">
<form action="">
                        <table width="100%" border="1px" id="myTable" class="tablesorter" >
      <tr class="trheads">
                                    <td >S.No</td>
                                    <td >Order No.</td>
                                    <td >Customer Name</td>
                                    <td >Total Qty</td>  
                                    <td >Total Amount </td>
                                    <td >Order Status</td>
                                   
                                 </tr>
                        
                            <tbody>
<%
    int i=1;
ResultSet rs=st.executeQuery("select * from orderlist where sid='"+session.getAttribute("uid")+"' and orderstatus='Process Finished & Ready to Dispatch'");
while(rs.next())
{
    String orderid=rs.getString("orderid");

%>
                                <tr>
                                    <td class="align-center"><%=i%></td>
                                    <td><%=rs.getString("orderid")%></td>
                                    <td><a href="lastupdateorder.jsp?orderid=<%=orderid%>"><%=rs.getString("custname")%></a></td>
                                     <td><%=rs.getString("tqty")%></td>
                                      <td><%=rs.getString("tamount")%></td>
                                      <td><%=rs.getString("orderstatus")%> </td>
                                              
                                           
                                       
                                 </tr>
  <% i++;
  }
%>
                            </tbody>
                        </table>
</form>
</div>

	</body>
</html>
