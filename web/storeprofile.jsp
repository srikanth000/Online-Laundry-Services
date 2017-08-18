
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.sql.*" %>
<%@include file="connection.jsp" %>
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
			function edit()
			{
					document.getElementById('editprofile').style.display="block";
                                        document.getElementById('dispprofile').style.display="none";
			}
                        
                  
</script>
<style>
    #vtd
    {
        
        height: auto;
        width: 500px;
       
    }
    #vtd tr
    {
        width: 450px;
        height: 30px;
    }
    #vtd tr td
    {
        width: 200px;
        height: 30px;
        font: bold medium sans-serif;
        color: blue;
        border: groove;
        
        
    }
    .pic
    { float: left;
        height: 150px;
        width: 150px;
       
        margin-left: 200PX;
        margin-right: 100PX;
    }
</style>
</head>
<body>
    <%@ include  file="includes/storeheader.jsp"%>
<div id="nav">
    <%@ include file="storeslistt.jsp"%>
</div>
<div id="main">
    <h1 style="color: #843534; font-size: xx-large; text-align: center; text-decoration: underline">PROFILE DETAILS</h1><BR/>
    <%
        ResultSet rs= st.executeQuery("select * from store where uid= '"+session.getAttribute("uid")+"'");
        while(rs.next())
        {
    %>
    <div align="left" class="pic">
        
    </div>    
    <div id="dispprofile" style="display: block;">
    <table id="vtd">
        <tr><td>Store Name :</td><td><%=rs.getString("store_name") %></td></tr>
        <tr><td>Owner Name :</td><td><%=rs.getString("owner_name") %></td></tr>
        <tr><td>Email :</td><td><%=rs.getString("email") %></td></tr>
        <tr><td>Mobile No.</td><td><%=rs.getString("mobile") %></td></tr>
        <tr><td>Location :</td><td><%=rs.getString("location_name") %></td></tr>
        <tr><td>Branch :</td><td><%=rs.getString("branch_name") %></td></tr>
    </table>
    <table align="right" style="margin-top: 10px;">
    <tr>
    <td><input type="button" onclick="edit()" name="edit" value="Edit Details"/></td>
    </tr>
 </table>
    
</div>
    <div id="editprofile" style="display: none">
        <form method="post" action="editprofile.jsp">
    <table  id="vtd">
        <tr><td>Store Name :</td><td><input type="text" name="stn" value="<%=rs.getString("store_name") %>"/></td></tr>
        <tr><td>First Name :</td><td><input type="text" name="own" value="<%=rs.getString("owner_name") %>"/></td></tr>
        <tr><td>Email :</td><td><%=rs.getString("email") %></td></tr>
        <tr><td>Mobile No.</td><td><input type="text" name="mob" value="<%=rs.getString("mobile") %>"/></td></tr>
        <tr><td>Location :</td><td><%=rs.getString("location_name") %></td></tr>
        <tr><td>Branch :</td><td><%=rs.getString("branch_name") %></td></tr>
    </table>
    <table align="right" style="margin-top: 10px;">
    <tr>
    <td><input type="submit" value="Update Profile"/></td>
    </tr>
 </table>
  
        </form>
    </div>
    <%}%>
</div>
    <%@ include file="includes/footer.jsp"%>
