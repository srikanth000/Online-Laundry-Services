<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page language="java" import="java.sql.*"%>
<%@include file="connection.jsp" %>
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
<script type="text/javascript">
			$(function() {
			$('.password').pstrength();
			});
     
     
     var xmlHttp  
      var xmlHttp
      function showbranch(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="branch.jsp";
      url +="?count="+str;
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("branch_name").innerHTML=xmlHttp.responseText   
      }   
      }

      
      
        </script>
<script>
			function addstore()
			{
					document.getElementById('addstore').style.display="block";
                                        document.getElementById('dispstore').style.display="none";
                                        document.getElementById('delstore').style.display="none";
			}
			function dispstore()
			{
					document.getElementById('addstore').style.display="none";
                                        document.getElementById('dispstore').style.display="block";
                                        document.getElementById('delstore').style.display="none";
			}
                        function delstore()
			{
					document.getElementById('addstore').style.display="none";
                                        document.getElementById('dispstore').style.display="none";
                                        document.getElementById('delstore').style.display="block";
			}
			
                        function update1()
                          {
                              alert("hiii");
                                   <%
                                        String mail1=(String)session.getAttribute("mail");
                                          
                                       int k= st.executeUpdate("update store set status=1 where Email='"+mail1+"'");
                                                 
                                     %>
                                     // window.location="";
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
 <div id="dispstore" >
     
       <table border="1px" width="100%" style="margin-bottom:10px;">
        <tr class="trheads">
          <td>S.No.</td>
           <td>Store Name</td>
          <td>Owner Name</td>
          <td>Email</td>
           <td>Mobile No</td>
            <td>Location</td>
                  <td>Branch</td>
                   <td>Status</td>
                    </tr>
     <% int i=1;
         ResultSet rs= st.executeQuery("Select * from store where usertype=2 and status=0 ORDER BY store_name ASC" );
    while(rs.next())    
    {
        String mail=rs.getString("email");
        session.setAttribute("mail",mail);
     
     %>
           <tr>
               <td><%=i%></td>
          <td><%=rs.getString("store_name")%> </td>
          <td><%=rs.getString("owner_name")%> </td>
          <td><%=rs.getString("email")%> </td>
          <td><%=rs.getString("mobile")%> </td>
          <td><%=rs.getString("location_name")%> </td>
          <td><%=rs.getString("branch_name")%> </td>
          <td><input type="button" onclick="update1()" name="status" value="Accept"></input></td>
           
         </tr>
          <% i++;
          }
%>
       </table>
   <BR/>
<table align="right" style="margin-bottom:10px;">
<tr>
    <td><input type="button" onclick="addstore()" name="add" value="Add Store"></td>
    <td><input type="button" onclick="delstore()" name="remove" value="Remove"></td>
            <td><a href="additemlist.jsp"><input type="button" name="next" value="Next"/></a></td>

</tr>
</table>
</div>
<div id="addstore" style="display:none;">
      <form action="addstore_jsp.jsp" method="post">
      <table border="1px" width="100%" style="margin-bottom:10px;">
        <tr class="trheads">
          <td>Store Name</td>
          <td>Owner Name</td>
          <td>Email</td>
            <td>Password</td>
              <td>Mobile No</td>
                 <td>Select Location</td>
                  <td>Select Branch</td>
                    </tr>
                    <tr>
                    <td><input type="text" name="store_name" placeholder="Store Name" required="true"/></td>
          <td>
            <input type="text" name="owner_name" placeholder="Owner Name" required="true"/>
          </td>
          <td>
            <input type="email" name="em" placeholder="Example@gmail.com" required="true"/></td>
        <td>
            <input type="password" name="pass" placeholder="Password(6-8 digit)" required="true"/></td>
        <td>
            <input type="text" name="mob" placeholder="+91" required="true"/></td>
                    <td>
  
   <select name="loc"  onchange="showbranch(this.value)" >
        <option value="none">--Select Location--</option>
 <%     ResultSet rs1= st.executeQuery("Select * from location ORDER BY location_name ASC");
        while(rs1.next())
{%>
 
<option value="<%= rs1.getString("location_name")%>"><%=rs1.getString("location_name")%></option>
      <%
 }
%>
              
</select>
          </td>
          
   <td id="statediv">
            <select name="bran" id="branch_name" placeholder="Branch Name">
                <option value="-1"></option>
            </select></td>
        </tr>
               
      </table>
            <input type="submit" name="Submit" value="submit"/>
    </form>
  </div>
<div id="delstore" style="display: none;">
     
       <table border="1px" width="100%" style="margin-bottom:10px;">
        <tr class="trheads">
          <td>S.No.</td>
           <td>Store Name</td>
          <td>Owner Name</td>
          <td>Email</td>
           <td>Mobile No</td>
            <td>Location</td>
             <td>Branch</td>
             <td>Action</td>
                    </tr>
     <% i=1;
         ResultSet r= st.executeQuery("Select * from store where usertype=2 ORDER BY store_name ASC");
    while(r.next())
{
    String uid=r.getString("uid");
%>
           <tr>
               <td><%=i%></td>
          <td><%=r.getString("store_name")%> </td>
          <td><%=r.getString("owner_name")%> </td>
          <td><%=r.getString("email")%> </td>
          <td><%=r.getString("mobile")%> </td>
          <td><%=r.getString("location_name")%> </td>
          <td><%=r.getString("branch_name")%> </td>
          <td><a href="deletestore.jsp?uid=<%=uid%>" onclick="return ConfirmDelete()">Delete</a></td>
           </tr>
          <% i++;
          }
%>
   </table>
   <BR/>
<table align="right" style="margin-bottom:10px;">
<tr>
    <td><input type="button" onclick="dispstore()" name="done" value="Done"/></td>
</td>
</tr>
</table>
</div>           
</div>
<div id="containerrr4" style="float:left; width:100%;"></div>
<%@ include file="includes/footer.jsp"%>

