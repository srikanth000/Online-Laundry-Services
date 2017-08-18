<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    
    String status=request.getParameter("orderstatus");
    String orderid=request.getParameter("orderid");
    
    String sql = "update orderlist SET orderstatus= '"+status+"' where orderid='"+orderid+"' " ;
    int row = st.executeUpdate(sql);
    if (row > 0) 
    {
       
   %>
<script language="javascript">
    alert("Order Status Update Successfully!!!");
    window.location.href="welcomestore.jsp";
</script>
<%
}  
    
    else
    {
        %>
        <script language="javascript">
        alert("Sorry... Order Status Not Upadated!!! Try Again");
        window.location.href="welcomestore.jsp";
</script>
<%
    }
%>