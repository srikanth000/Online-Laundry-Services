<%@page language="java" import="java.sql.*"%>
<%@include  file="connection.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<head>
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
<body>
    <%@ include file="includes/header.jsp"%>
<div id="nav">
    <%@ include file="includes/adminlistt.jsp"%>
</div>

<div id="main">
<div id="homegrid">
<table align="left">
  <tr>

 <% int tq=0;
 ResultSet rs= st.executeQuery("select * from store where usertype=2");
 while(rs.next())
 { tq++;}
 %>
              <td>
    <div class="homeanchor">
        <a href="addstore.jsp "><img src="homegrid/viewstore.png" class="homegrid"/><br />
Total Stores(<%=tq%>)</a></div> </td>
   
      <!--td>
    <div class="homeanchor">
    <a href=""><img src="homegrid/profile.png" class="homegrid"/><br />
  My profile</a></div> </td-->
  
          <td>
    <div class="homeanchor">
    <a href="StoreRequest.jsp"><img src="homegrid/reports.png" class="homegrid"/><br />
    New Store Requests</a></div> 
    </td>
    <td>
    <div class="homeanchor">
    <a href="#"><img src="homegrid/settings.png" class="homegrid"/><br />
    Settings</a></div> 
    </td>
  
  </tr>
  <tr>
  </tr>
  <tr>
  

  </tr>
</table>
</div>
<table align="left">
  <tr>
    <td><h3>Account overview</h3></td>
  </tr>
  <tr>
      <td><div class="accounthead">User :</div><strong> <%=session.getAttribute("owner_name") %></strong></td>
  </tr>
  
</table>
</div>
</body>
      <%@ include file="includes/footer.jsp"%>
