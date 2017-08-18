<%@ page import="java.sql.*" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

  <HEAD>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to FabRinz...</title>
<link rel="stylesheet" href="css/global.css"/>
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript" src="EditDeletepage.js"></script>
<link rel="stylesheet" type="text/css" href="pagination.css" />
   
  </HEAD>

  <body>

 <div id="main" >
     <div id="detail" style="width: 90%; height: auto; margin-left: 5%; margin-right: 5%; border: 1px solid black; padding: 5px;">
   <%
   String orderid=request.getParameter("orderid");
ResultSet rr=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rr.next())
{  String sid=rr.getString("sid");
    ResultSet rsr=st.executeQuery("select * from store where uid='"+sid+"'");
if(rsr.next())
{  
%>
      <table width="100%"  id="myTable" class="tablesorter" >
                                 <tr>
                                     <td ><br/>
                                         <h1>Store Details: </h1>
                                         <h1><%=rsr.getString("store_name")%></h1>
                                         <%=rsr.getString("owner_name")%>,<br/>
                                         <%=rsr.getString("branch_name")%> - <%=rsr.getString("location_name")%>,<br/>
                                         Email : fabrinzlaundryservices@gmail.com
                                         
                                     </td>
                                         <td align="right"><img src="img/printlogo.png" /></td>
                                 </tr>
</table>   
<%
}
}
%>
            
<%

ResultSet rs=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rs.next())
{
%>
<h1 align="center" style="font-size: 22px; text-decoration: underline; text-transform: uppercase">Bill / Memo</h1>
<h2 align="right">Delivery Date : &nbsp; <%=rs.getString("deldate")%> &nbsp; &nbsp;</h2>

                        <table width="100%" border="1px" id="myTable" class="tablesorter" >
                                 <tr>
                                     <td >Order No. : &nbsp;&nbsp;    <%=rs.getString("orderid")%></td>
                                     <td >Customer Name   :&nbsp;&nbsp; &nbsp;<%=rs.getString("custname")%></td>
                                 </tr>
                                 <tr>
                                      <td >Location.    : &nbsp;&nbsp;  <%=rs.getString("location")%></td>
                                 <td >Address.    : &nbsp;&nbsp;  <%=rs.getString("address")%> &nbsp;, <%=rs.getString("pin") %></td>
                                 </tr>
                               <tr>
                                      <td >Email.    : &nbsp;&nbsp;  <%=rs.getString("email")%></td>
                                  <td >Contact No.   : &nbsp;&nbsp; <%=rs.getString("mobile") %> </td>
                               </tr>
                               <tr>
                                      
                                  
                               </tr>
                               
                                   
         <%
  }
%>
       
                        </table><h1>Items :</h1>

<table width="100%" border="1px" id="myTable" class="tablesorter" >
                                          <tr class="trheads">
                                                <td>S.No.</td>
                                                <td>ITEM</td>
                                                <td>ACTIVITY</td>
						<td>RATE</td>
						<td>QUANTITY</td>
						<td>TOTAL</td>
                                          </tr>
                                          
                                          <%
                                              int i=1;
                                                    ResultSet rss=st.executeQuery("select * from orderlistitem where orderid='"+orderid+"'");
                                                    while(rss.next())
                                                 {
                                                %>
                                                <tr>
                                                    <td style="text-align: center;"><%=i%></td>
                                                    <td><%=rss.getString(1)%></td>
                                                    <td><%=rss.getString(2)%></td>
                                                    <td><%=rss.getString(3)%></td>
                                                    <td><%=rss.getString(4)%></td>
                                                    <td><%=rss.getString(5)%></td>
                                                </tr>
                                                <% i++;}%>
                                      </table><br/>
                                     <%
ResultSet rs1=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rs1.next())
{
%> 
                                      
                                   <table width="100%" border="1px" id="myTable" class="tablesorter" >
                                  
                                      <tr><td >Total Qty : <%=rs1.getString("tqty")%></td>  
                                    <td >Total Amount : <%=rs1.getString("tamount")%>.00/- </td>
                                    <td> Payment Mode : <%=rs1.getString("paymode")%></td>
                                    
                                      </tr>
                                   
         <%
  }
%>
       
                        </table>

<p> Note : This is electronic generated bill. There are no need for seel & signature's.</p>
<br/>
<table align="right" width="100%" style="margin-bottom:10px; text-align: right;">
    <tr><td>
            <h1> Regards,</h1> <br/>
            Fabrinz- Laundry Services.<br/></td>
</tr>
</table>
<br/>


<table align="center"  style="margin-bottom:10px;">
     <tr><td>
  
           <input type="button" id="print" value="PRINT" onclick="window.print()"/>

           
         </td></tr>
</table>
        </div>
 
        
                            
</body>

</html>