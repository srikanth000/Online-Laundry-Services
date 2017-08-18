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
<link rel="stylesheet" href="css/global.css"/>
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="EditDeletepage.js"></script>
<link rel="stylesheet" type="text/css" href="pagination.css" />
<script type="text/javascript">
$(document).ready(function(){

$(":button").click(function(){
    alert("Deleting : "+this.id);
});

});
        </script>
<script>
			function add()
			{
					document.getElementById('additem').style.display="block";
                                        document.getElementById('delitem').style.display="none";
                                        document.getElementById('dispitem').style.display="none";
			}
			function del()
			{
					document.getElementById('additem').style.display="none";
                                        document.getElementById('delitem').style.display="block";
                                        document.getElementById('dispitem').style.display="none";
			}
                        function done()
			{
					document.getElementById('additem').style.display="nene";
                                        document.getElementById('delitem').style.display="none";
                                        document.getElementById('dispitem').style.display="block";
			}
                        function Importitem()
			{
					document.getElementById('additem').style.display="nene";
                                        document.getElementById('delitem').style.display="none";
                                        document.getElementById('dispitem').style.display="none";
                                        document.getElementById('Importitem').style.display="block";
                                        
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
    <%@ include file="includes/storeheader.jsp"%>
<div id="nav">
    <%@ include file="storeslistt.jsp"%>
</div>
<div id="main">
<div id="Importitem" style="display:none;">
  <form action="importitem.jsp" METHOD="POST">
    <table border="1px" width="100%" style="margin-bottom:10px;">
      <tr class="trheads">
        <td>Select Item For Add In Your Item List</td>
                </tr>
        <tr>
        <td> <select name="Item_Name" placeholder="Select Item">
                <option value="">-Select-</option>  

<%
    ResultSet rst= st.executeQuery("Select * from itemlist ORDER BY Item_Name ASC");
    while(rst.next())
{%>
 
<option value="<%= rst.getString("Item_Name")%>"><%=rst.getString("Item_Name")%></option>
      <%
 }
%>
</select>

        </td>
        
        </tr>
    </table>
<input type="submit" name="submit" value="ADD"/>
  </form>
</div>
<div id="additem" style="display:none;">
  <form action="add_item.jsp" METHOD="POST">
    <table border="1px" width="100%" style="margin-bottom:10px;">
      <tr class="trheads">
        <td>Select Item</td>
          <td>Action</td>
          <td>Cost (Rs.)</td>
         </tr>
        <tr>
        <td> <select name="Item_Name" placeholder="Select Item">
                <option value="">-Select-</option>  

<%
    ResultSet rs= st.executeQuery("Select * from storeitem where uid='"+session.getAttribute("uid")+"' ORDER BY Item_Name ASC");
    while(rs.next())
{%>
 
<option value="<%= rs.getString("Item_Name")%>"><%=rs.getString("Item_Name")%></option>
      <%
 }
%>
</select>

        </td>

        <td>
            <select name="Action" placeholder=" Select Action">
                <option value="">-Select-</option>  
                <option value="Iron">Iron</option>
                <option value="Wash and Iron">Wash and Iron</option>
                <option value="Wash and Fold">Wash and Fold</option>
                <option value="Dry Clean">Dry Clean</option>
            </select>
        </td>
         <td><input type="number" name="Cost" placeholder="  COST  " required="true"/></td>
       </tr>
        
    </table>
<input type="submit" name="submit" value="Submit"/>
  </form>
</div>
<div id="dispitem" style="display: block;">
  <table width="100%" border="1px" id="myTable" class="tablesorter" >
      <tr class="trheads">
        <td>S.No</td>
        <td>GARMENTS</td>
          <td>Action</td>
          <td>Cost (Rs.)</td>
         </tr>
    <tbody>
      
        <%  ResultSet rs1= st.executeQuery("Select * from item where uid='"+session.getAttribute("uid")+"' ORDER BY Item_name ASC ");
int i=1;    
while(rs1.next())
{%>
 
      <tr>
        <td class="align-center"><%= i%></td>
        <td><%= rs1.getString("Item_name")%></td>
          <td><%= rs1.getString("Action")%></td>
          <td><%= rs1.getString("Cost")%></td>
        
      </tr>
   <%
       i++;
 }
%>
    </tbody>
  </table>
        <table align="right" style="margin:0px;">
<tr>
    <td><input type="button" onclick="Importitem()" name="importItem" value="Import Item"/></td>
<td><input type="button" onclick="add()" name="additem" value="Add Item Rate"/></td>
<td><input type="button" onclick="del()" name="remove" value="Delete "/></td>
</tr>
</table>
</div>
<div id="delitem" style="display: none;">
  <table width="100%" border="1px" id="myTable" class="tablesorter" >
      <tr class="trheads">
        <td>S.No</td>
        <td>GARMENTS</td>
          <td>Action</td>
          <td>Cost (Rs.)</td>
          <td>Delete</td>
         </tr>
    <tbody>
        
        <%  ResultSet rs2= st.executeQuery("Select * from item where uid='"+session.getAttribute("uid")+"' ORDER BY Item_name ASC");
i=1;    
while(rs2.next())
{
    String Id= rs2.getString("Item_id");
      %>
       <tr>
          <td class="align-center"><input type="checkbox" name="check<%= i%>" value=""</td>
        <td><%= rs2.getString("Item_name")%></td>
          <td><%= rs2.getString("Action")%></td>
          <td><%= rs2.getString("Cost")%></td>
          <td><a href="delitem.jsp?Id=<%=Id%>">Delete</a></td>  
      </tr>
    
   <%
       i++;
 }
%>
    </tbody>
  </table>
        <table align="right" style="margin:0px;">
<tr>
<td><input type="button" onclick="done()" name="done" value="Done"/></td>

</tr>
</table>
</div>
</div>


 <div id="containerrr6" style="float:left; width:100%;"></div>

 <%@ include file="includes/footer.jsp"%>
