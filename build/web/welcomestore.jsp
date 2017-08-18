<%@page  import="java.sql.*" %>
<%@include file="connection.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to FabRinz...</title>
<link rel="stylesheet" href="css/global.css"/>
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
<script>
    function show()
    {
        document.getElementById('changepassword').style.display="block";
        document.getElementById('main').style.display="none";
    }
</script>
</head>
<body>
    <%@ include  file="includes/storeheader.jsp"%>
<div id="nav">
    <%@ include file="storeslistt.jsp"%>
</div>
<div id="main" style="display: block;">
<div id="homegrid">
<table align="left">
  <tr>
<%int item=0;
ResultSet rs= st.executeQuery("select * from item where uid='"+session.getAttribute("uid")+"'");
while(rs.next())
{
item++;
}

int req=0;
ResultSet r=st.executeQuery("select * from orderlist where sid='"+session.getAttribute("uid")+"' and orderstatus='Not Pick Up From Destination'");
while(r.next())
{
   req++;
}
int conf=0;
ResultSet rs1=st.executeQuery("select * from orderlist where sid='"+session.getAttribute("uid")+"' and orderstatus='Picked From Destination'");
while(rs1.next())
{
   conf++;
}
int pr=0;
ResultSet rs2=st.executeQuery("select * from orderlist where sid='"+session.getAttribute("uid")+"' and orderstatus='In Laundry'");
while(rs2.next())
{
   pr++;
}
int pd=0;
ResultSet rs3=st.executeQuery("select * from orderlist where sid='"+session.getAttribute("uid")+"' and orderstatus='Process Finished & Ready to Dispatch'");
while(rs3.next())
{
   pd++;
}
int cd=0;
ResultSet rs4=st.executeQuery("select * from orderlist where sid='"+session.getAttribute("uid")+"' and orderstatus='Complete'");
while(rs4.next())
{
   cd++;
}
%>
 
              <td>
    <div class="homeanchor">
        <a href="additem.jsp"><img src="homegrid/viewstore.png" class="homegrid"/><br />
        Total Items(<%=item%>)</a></div> </td>
   
                
        <td>
    <div class="homeanchor">
    <a href="admincl.jsp"><img src="homegrid/confirmlist.png" class="homegrid"/><br />
 New Request(<%=req%>)</a></div> </td>
  
  <td>
    <div class="homeanchor">
    <a href="cll.jsp"><img src="homegrid/washicon.png" class="homegrid"/><br />
Confirmed order(
      (<%=conf%>)</a></div> </td>
      
      <td>
    <div class="homeanchor">
    <a href="cc.jsp"><img src="homegrid/pendinglist.png" class="homegrid"/><br />
   On Laundry Process(<%=pr%>)</a></div> </td>
       
  </tr>
  <tr>
     
        <td>
    <div class="homeanchor">
    <a href="del.jsp"><img src="homegrid/nonconfirm.png" class="homegrid"/><br />
  Pending Delivery(<%=pd%>) </a></div> </td>
      
      

        
        <td>
    <div class="homeanchor">
    <a href="viewinvoices.jsp"><img src="homegrid/viewlist.png" class="homegrid"/><br />
    Total Invoices(<%=cd%>)</a></div> </td>
 
      <!--td>
    <div class="homeanchor">
    <a href="#"><img src="homegrid/reports.png" class="homegrid"/><br />
    Reports</a></div> 
    </td-->
      
          <td>
    <div class="homeanchor">
    <a href="storeprofile.jsp"><img src="homegrid/profile.png" class="homegrid"/><br />
  My profile</a></div> </td>
     
    <td>
        
    <div class="homeanchor">
        <a href="#" onclick="show()"><img src="homegrid/settings.png" class="homegrid"/><br />
    Change Password</a></div> 
    </td>
  </tr>
</table>
</div>
<table align="left">
  <tr>
    <td><h3>Account overview</h3></td>
  </tr>
  <tr>
    <td><div class="accounthead">User :</div> <%=session.getAttribute("owner_name") %></td>
  </tr>
 
</table>
</div>
  <div id="changepassword" align="center" style="display:none;">
      <form method="post" action="chpwd.jsp" >
          <table >
              <tr><td><input type="text" name="cp" placeholder="Current Password" required="" /></td></tr>
              <tr><td><input type="text" name="np" placeholder="New Password" required="" /></td></tr>
              <tr><td><input type="text" name="cnp" placeholder="Conform New Password" required="" /></td></tr>
              <tr><td><input type="submit" name="submit" value="Change Password"/></td></tr>
          </table>
      </form>
    </div>    
<%@ include file="includes/footer.jsp"%>
