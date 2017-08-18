<%@include file="connection.jsp" %>
<%@page import="java.sql.*" %>
<!doctype html>
<%
    if (session.getAttribute("userid")==null)
    {
%>
<script language="javascript">
        alert("Session Expired!! Login Again");
window.location.href="fabrinz_custm_login.jsp";
</script>
<%
        }
%>

<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">
	
	<title>Fabrinz- Schedule Services</title>
        <link rel="shortcut icon" href="logo.png">
	<meta name="author" content="" />
	<meta name="description" content="" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="css/deshboard.css" />
        <link rel="stylesheet" type="text/css" href="css/ui.css" />
       

<script>
var xmlHttp  
      var xmlHttp
      function showAction(str){
      
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
      var url="ItemAction.jsp";
      url +="?count="+str;
      xmlHttp.onreadystatechange = stateChange2;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange2(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("action").innerHTML=xmlHttp.responseText   
      }   
      }     
        </script>
<script>
var xmlHttp  
      var xmlHttp
      function ShowPrize(str){
      
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
      var url="showprize.jsp";
      url +="?action="+str;
      
      xmlHttp.onreadystatechange = stateChange3;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange3(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById('rate').innerHTML=xmlHttp.responseText   
      }   
      } 
     
      function totoal()
      {
                   var rate=document.getElementById('rate').value;
          var qty=document.getElementById('qty').value;
            
        var txt =  document.getElementById('total');
          
        txt.value=rate*qty;
     
          
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
    <%@include file="header-custm-deshboard.jsp" %>
	<section>
            <%@include file="custm_side_nevbar.jsp" %>
            <script type="text/javascript" src="js/jquery.min.js"></script>
 <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/>
<script type="text/javascript" src="js/custmAccount.js"></script>

                            
		<article>
                  <h3>SCHEDULE A SERVICE</h3>
                     <div id="errorMsg" class="message" > </div>   
                     <div class="inner">
                                 
                         <div class="col4 last panel" style="width: 100%; " >
                        <h4 class="panel-header" >Schedule Order</h4>
                         
                       
                               <div class="panel-body">
                                   <div>                      
                        
                                       Order ID :  <input type="text" value="<%=session.getAttribute("orderid") %>" readonly="" placeholder="Order Id" id="OrderId" name="OrderId" style="width: 10%;"   />  
                                         </div>
                          
                            <div class="panel-body"> 
                                <form method="post" action="sd2.jsp">
                                <table class="table table-bordered table-hover" >
					<thead>
						<tr>
							
							<th width="15%">ITEM</th>
							<th width="38%">ACTIVITY</th>
							<th width="15%">RATE</th>
							<th width="15%">QUANTITY</th>
							<th width="15%">TOTAL</th>
                                                        <th width="15%">ACTION</th>
						</tr>
					</thead>
                              
                                        <tbody id="dataTable" >
                                        
                                            
						<tr>
						
                                                <td>
                                                    <select id='item' name='item' onchange="showAction(this.value)" >
                                                                <option value='1'> - Select Item - </option>
                                                <%
                              ResultSet rs1=st.executeQuery("select * from storeitem where uid='"+session.getAttribute("sid")+"'");
                              while(rs1.next())
                              {
                              %>
                              <option value="<%=rs1.getString("Item_Name")%>"><%=rs1.getString("Item_Name")%></option>
                                                    
                                                                
                                                    
                                                <%}%>
                                                </select>
                                                </td>
							
                                                    <td>
                                                        <select id='action' name='action' onchange="ShowPrize(this.value)" >
                                                            <option value=''></option>
                                                        </select>
                                                        
                                                    </td>
                                                    <td> <select id='rate' name='rate' readonly='' >
                                                            <option value='' ></option>
                                                        </select></td>
                                                    <td><input type="text"  placeholder="0" required="" name="qty" id="qty" onchange="totoal()" required/></td>
                                                    <td><input type="text"   placeholder="0.00" readonly="" name="total" id="total"/></td>
                                                    <td><input type="submit" style="border-radius: 0px;margin: 0px;" name="ADD" id="ADD" value="ADD" /></td>
						</tr>
                                      

					</tbody>
				</table>
                                                  </form>
                             </div>
                                                <br/>
                                                <div class="panel-body" style="border: 1PX solid #8193a3;"> 
                                <h4 class="panel-header" > ORDER LIST</h4>
                                <table class="table table-bordered table-hover"  width="100%">
					<thead>
						<tr>
							<th>S.No.</th>
							<th>ITEM</th>
							<th>ACTIVITY</th>
							<th>RATE</th>
							<th>QUANTITY</th>
							<th>TOTAL</th>
                                                        <th>ACTION</th>
						</tr>
					</thead>
                              
                                        <tbody id="dataTable" >
                                         <% int i=1;
                                         int tqty=0, tamount=0;
                              ResultSet rs=st.executeQuery("select * from orderlistitem where orderid='"+session.getAttribute("orderid")+"'");
                              while(rs.next())
                              { String Ino= rs.getString("Ino");
                               tqty+=rs.getInt("qty");
                               tamount+=rs.getInt("total");
                               
                              %>
                                            
						<tr>
						
                                                <td><%=i%></td>
						<td><%=rs.getString("Item_Name")%></td>
                                                    <td><%=rs.getString("action")%></td>
                                                    <td><%=rs.getString("rate")%></td>
                                                    <td><%=rs.getString("qty")%></td>
                                                    <td ><input type="hidden" id="ts" value="<%=rs.getString("total")%>" ><%=rs.getString("total")%></td>
                                                    <td><a href="delorderitem.jsp?Ino=<%=Ino%>" onclick="return ConfirmDelete();">Remove</a></td>
                                                    
						</tr>
                                  <% i++;} 
%>
                                      

					</tbody>
				</table>
                                                  </form>
                             </div>    
<br/>
                             <form method="post" action="ProcessOrder.jsp" >                    
                                 <div> Total Qty. <input type="text" readonly=""  placeholder="0.00"  name="tqty" style="width:15%;" id="tqty" value="<%=tqty%>" /> &nbsp; Total Amount. (Rs.) <input type="text" readonly="" name="tamount"   placeholder="0.00"  style="width:15%;" id="tamount" value="<%=tamount%>"> &nbsp;
                            Select Payment Mode : 
                                <select id="paymode" name="paymode" style="width:30%;">
                                    <option value="none">--select--</option>
                                    <option value="Cash On Delivery (COD)"> Cash On Delivery </option>
                                    <option value="Online (Pripaid)">Pay Online</option>
                                    
                                </select>
                            
                            </div>               
                                    <center> <input type="submit" value="Save & Next" name="submit1" id="submit1" style="width: 20%"></center>
                                </form>
                         </div>
                                                
                        
                           
                    
		</article>
                            <script src="js/jquery.datetimepicker.js"></script>

</section>
	 
	 
	<script type="text/javascript">		
  function item()
  {
    var i=document.getElementById("item").value;
     var q=document.getElementById("qty").value;
     //alert(q);
    if(i=="1")
    {
      alert("please select items");
      return false;
    }
    else if(q==='')
    {
       alert("please select QUANTITY");
      return false;
    }
    else
      return true;

  }

   function check()
  {
    
    var p=document.getElementById("paymode").value;
   
                // alert(p);
             if (!item())
             {
                 return false;
             }
             else
             {
                //alert(document.getElementById("ts").value);
                if (p==="none") {
                  alert("please select Payment mode");
                  return false;
                }
                else if(document.getElementById("ts").value==="")
                {
                    alert("Please add atleast one item");
                    return false;
                }
                else
                {

                   document.getElementById("submit1").submit(); 

              }
          }
}
		$('nav li').hover(function(){
			$('nav li a').toggleClass('open');
		});	
		var navouter = $('nav').outerWidth();
		 
		$('article').css('marginLeft',navouter);
		$('.table tr:even').css('backgroundColor','#fff');
			
	</script> 
	<script>
	$(window).scroll(function() {
	if ($(this).scrollTop() > 1){  
		$('aside nav').addClass("sticky");
	  }
	  else{
		$('aside nav').removeClass("sticky");
	  }
	});
        $('.info').delay(4000).fadeOut();
          var scrollheight = 70;
	
	$(document).ready(function() {
	$(window).scroll(function() {
	var scrollhead = getCurrentScroll();
	//alert(scrollhead+" px");
	if(scrollhead>=scrollheight) {
	$('aside nav').addClass('sticky')
	}
	else {
	
$('aside nav').removeClass('sticky')
	}
	});
	function getCurrentScroll() {
	return window.pageYOffset || document.documentElement.scrollTop;
	}
	}); 
	</script>
 
</body>

</html>	