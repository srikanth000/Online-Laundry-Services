<%@include file="connection.jsp" %>
<%@page language="java" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<head>
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
					document.getElementById('addbranch').style.display="block";
                                        document.getElementById('dispbranch').style.display="none";
                                        document.getElementById('delbranch').style.display="none";
			}
			function del()
			{
                            document.getElementById('delbranch').style.display="block";
				document.getElementById('addbranch').style.display="none";
                                document.getElementById('dispbranch').style.display="none";
			}
			function ok()
			{
                                document.getElementById('delbranch').style.display="none";
				document.getElementById('addbranch').style.display="none";
                                document.getElementById('dispbranch').style.display="block";
                               
                                
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
<style>
.editboxxx {
	display:none;
}
.editboxxx1 {
	display:none;
}
.editboxxxy {
	display:none;
}
.editboxxxy1 {
	display:none;
}
</style>
</head>
<body>
    <%@ include file="includes/header.jsp"%>
<div id="nav">
    <%@ include file="includes/adminlistt.jsp"%>
</div>
<div id="main">
<form action="" id="dispbranch">
  <table width="100%" border="1px" id="myTable" class="tablesorter" >
      <tr class="trheads">
        <td>S.No</td>
        <td>Location Name</td>
          <td>Branch Name</td>
          <td>Branch code</td
         </tr>
    <tbody>
      
<% int i=1;
    ResultSet rs1= st.executeQuery("Select * from branch ORDER BY branch_name ASC ");
    while(rs1.next())
{%>
 
      <tr>
        <td class="align-center"><%= i%></td>
        <td><%= rs1.getString("location_name")%></td>
         <td><%= rs1.getString("branch_name")%></td>
          <td><%= rs1.getString("branch_code")%></td>
        
      </tr>
   <% i++;
 }
%>
    </tbody>
  </table>
        <table align="right" style="margin:0px;">
<tr>
<td><input type="button" onclick="show()" name="remove" value="Add Branch"/></td>
<td><input type="button" onclick="del()" name="remove" value="Remove"/></td>
<td><a href="addstore.jsp"><input type="button" name="next" value="Next"></a></td>
</tr>
</table>
</form>
    <div  id="delbranch" style="display: none;">
        
  <table width="100%" border="1px" id="myTable" class="tablesorter" >
      <tr class="trheads">
        <td>S.No</td>
        <td> Location Name</td>
          <td>Branch Name</td>
          <td>Branch code</td>
          <td>Action</td>
         </tr>
    <tbody>
      
<%
     i=1;
    ResultSet r= st.executeQuery("Select * from branch ORDER BY branch_name ASC ");
    while(r.next())
{   
    String branch_id=r.getString("branch_id");
%>
 
      <tr>
        <td class="align-center"><%= i%></td>
        <td><%= r.getString("location_name")%></td>
         <td><%= r.getString("branch_name")%></td>
          <td><%= r.getString("branch_code")%></td>
          <td><a href="delbranch.jsp?branch_id=<%=branch_id%>" onclick="return ConfirmDelete()">Delete</a></td>
        
      </tr>
   <%i++;
 }
%>
    </tbody>
  </table>
        <table align="right" style="margin:0px;">
<tr>
<td><input type="button" onclick="ok()" name="remove" value="Done"/></td>
</tr>
</table>
</div>
    <div id="addbranch" style="display:none">
    <form action="add_branch_jsp.jsp" METHOD="POST">
        <table border="1px" width="100%" style="margin-bottom:10px;">
        <tr class="trheads">
          <td >Select Location</td>
          <td>Branch Name</td>
          <td>Branch code</td>
          </tr>
          <tr>
          <td>
            <select name="location_name" placeholder="Location">
              
                <option >--Select Location--</option>
<%
     
    ResultSet rs= st.executeQuery("Select * from location ORDER BY location_name ASC");
    while(rs.next())
{%>
 
<option value="<%= rs.getString("location_name")%>"><%=rs.getString("location_name")%></option>
      <%
 }
%>
</select>
            
          </td>
          <td>
            <input type="text" name="branch_name" placeholder="Branch Name" required="true"/>
          </td>
          <td>
            <input type="text" name="branch_code" placeholder="Branch Code" required="true"/>
          </td>
        </tr>
        
        
      </table>
<input type="submit" name="submit" value="Submit"/>
    
    </form>
  </div>
  <div id="containerrr7"></div>
  <%@ include file="includes/footer.jsp"%>
