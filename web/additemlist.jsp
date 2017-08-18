<%@page language="java" import="java.sql.*"%>
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
<link rel="stylesheet" href="css/global.css">
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
					document.getElementById('additemlist').style.display="block";
                                        document.getElementById('dispitemlist').style.display="none";
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
	
				
	
</script>
</head>
<body>
    <%@ include file="includes/header.jsp"%>
<div id="nav">
  <%@ include file="includes/adminlistt.jsp"%>
</div>
<div id="main">
    <div id="dispitemlist" style="display: block;">
  <form action="" METHOD="POST">
    <table border="1px" width="100%" style="margin-bottom:10px;">
      <tr class="trheads">
        <td>S.No.</td>
          <td>Item Name</td>
      </tr>
        <%
          
    ResultSet r= st.executeQuery("Select * from itemlist ORDER BY Item_Name ASC");
  int i=1;
    while(r.next())
        
{  
        %>
 
      <tr>
        <td class="align-center"><%= i %></td>
        <td><%= r.getString(1)%></td>
      </tr>   
      
   <%
       i=i+1;
 }
%>
      </tr>
    </table>
  </form>
      <table align="right" style="margin-bottom:10px;">
  <tr>
    <td><input type="button" onclick="show()" name="remove" value="Add Item"></td>
      </tr>
  </tr>
  
</table>

</div>
    
<div id="additemlist" style="display:none;">
  <form action="add_item_list.jsp" METHOD="POST">
    <table border="1px" width="100%" style="margin-bottom:10px;">
      <tr class="trheads">
        <td>Item Name</td>
      </tr>
        <tr>
        <td>
        <input type="text" name="Item_Name" placeholder="Item Name" required="true"/>
        </td>
        </tr>
      <tr>
        <td><input type="submit" name="submit" value="Submit"/></td>
      </tr>
    </table>
  </form>
</div>
</div>
 <div id="containerrr6" style="float:left; width:100%;"></div>

 <%@ include file="includes/footer.jsp"%>
