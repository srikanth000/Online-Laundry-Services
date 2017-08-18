<%@page import="java.sql.*" %>
<%@include file="connection.jsp" %>
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
<script type="text/javascript">
			$(function() {
			$('.password').pstrength();
			});
        </script>
<script>
			function show()
			{
					document.getElementById('addu').style.display="block";
                                        document.getElementById('disploc').style.display="none";
                                        document.getElementById('delloc').style.display="none";
                                        
			}
                        function del()
			{
                                        document.getElementById('delloc').style.display="block";
					document.getElementById('addu').style.display="none";
                                        document.getElementById('disploc').style.display="none";
                                        
			}
			function ok()
			{
                                document.getElementById('disploc').style.display="block";
				document.getElementById('addu').style.display="none";
                                document.getElementById('delloc').style.display="none";
                                
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
<script language="javascript" type="text/javascript">
function getXMLHTTP() { //fuction to return the xml http object

		var xmlhttp=false;	
		try{
			xmlhttp=new XMLHttpRequest();
		}
		catch(e)	{		
			try{			
				xmlhttp= new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch(e){
				try{
				xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
				}
				catch(e1){
					xmlhttp=false;
				}
			}
		}
		 	
		return xmlhttp;
    }
	
	function getState(countryId) {		
	
		var strURL="findState.php?country="+countryId;
		var req = getXMLHTTP();
		
		if (req) {
			
			req.onreadystatechange = function() {
				if (req.readyState == 4) {
					// only if "OK"
					if (req.status == 200) {						
						document.getElementById('statediv').innerHTML=req.responseText;						
					} else {
						alert("There was a problem while using XMLHTTP:\n" + req.statusText);
					}
				}				
			}			
			req.open("GET", strURL, true);
			req.send(null);
		}		
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
</head>
<body>
<%@ include file="includes/header.jsp"%>
<div id="nav">
    <%@ include file="includes/adminlistt.jsp"%>
</div>
<div id="main">
<div id="delloc" style="display: none">
    <form action="">
  <table width="100%" border="1px" id="myTable" class="tablesorter" >
      <tr class="trheads">
        <td>S.No</td>
        <td>Location ID</td>
        <td>Location Name</td>
        <td>Action</td> 
         </tr>
    <tbody>
      
<%
    ResultSet r= st.executeQuery("Select * from location ORDER BY location_name ASC");
    int i=1;
    while(r.next())
{ 
    String location_id=r.getString("location_id");
%>

     <tr>
         <td class="align-center"><%=i %></td>
            <td><%=r.getString("location_id")%></td>
        <td><%=r.getString("location_name")%></td>
        
        <td><a href="dellocation.jsp?location_id=<%=location_id%>" onclick="return ConfirmDelete()">Delete</a></td>
      </tr>   

   <%
       i++;
 }
%>
    </tbody>
  </table>
    <table align="right" style="margin-bottom:10px;">
  <tr>
    <td><input type="button" onclick="ok()" name="done" value="Done"></td>
    
    
  </tr>
    </table>
</form>
    </div>
    <div>
<form action="" id="disploc">
  <table width="100%" border="1px" id="myTable" class="tablesorter" >
      <tr class="trheads">
        <td>S.No</td>
        <td>Location ID</td>
        <td>Location Name</td>
         </tr>
    <tbody>
      
<%
      ResultSet rs= st.executeQuery("Select * from location ORDER BY location_name ASC");
    i=1;
      while(rs.next())
{%>
 
      <tr>
        <td class="align-center"><%= i %></td>
        <td><%= rs.getString("location_id")%></td>
        <td><%= rs.getString("location_name")%></td>
        
      </tr>
   <% i++;
 }
%>
    </tbody>
  </table>
      <table align="right" style="margin-bottom:10px;">
  <tr>
    <td><input type="button" onclick="show()" name="remove" value="Add Location"></td>
    <td><input type="button" onclick="del()" name="remove" value="Remove">
            <td><a href="addbranch.jsp"><input type="button" name="next" value="Next"></a></td>
  </tr>
  </tr>
  
</table>
</form>
   
    
  
<div id="addu" style="display:none;">
  <form action="addloc.jsp" METHOD="POST">
    <table border="1px" width="100%" style="margin-bottom:10px;">
      <tr class="trheads">
        <td>Location Name</td>
      </tr>
        <tr>
        <td>
        <input type="text" name="location" placeholder="Location Name" required="true"/>
        </td>
        </tr>
      <tr>
        <td><input type="submit" name="submit" value="submit"/></td>
      </tr>
    </table>
  </form>
</div>
</div>
</div>
 <div id="containerrr6" style="float:left; width:100%;"></div>
 <%@ include file="includes/footer.jsp"%>
