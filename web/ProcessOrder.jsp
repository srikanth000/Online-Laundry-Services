<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@include file="connection.jsp" %>

<%
    String tqty=request.getParameter("tqty");
    String tamount=request.getParameter("tamount");
    String paymode=request.getParameter("paymode");
    String orderstatus="Not Pick Up From Destination";
    String paystatus="Not paid";
    java.sql.Date dd = new java.sql.Date(new java.util.Date().getTime());
    int j=st.executeUpdate("update orderlist SET tqty='"+tqty+"', tamount='"+tamount+"', paymode='"+paymode+"', paystatus='"+paystatus+"', orderstatus='"+orderstatus+"', orderdate='"+dd+"' WHERE orderid='"+session.getAttribute("orderid")+"' ");
    if(j>0)
    {
        session.setAttribute("sid", null);
         session.setAttribute("amount", tamount);
        if ("Cash On Delivery (COD)".equals(paymode))
        {
           
            %>
        <script language="javascript">
        alert("Your Service Scheduled Successfulluy!! We Contact You Sortly!!");
        
        window.location.href="sms1.jsp";
</script>
<%
        }
        else
        {
            %>
        <script language="javascript">
        alert("Your Service Scheduled Successfulluy!! Pay Now!!");
        window.location.href="payumoney1.jsp";
</script>
<%
   }


    }
           
else
    {
        %>
        <script language="javascript">
        alert("Sorry... Unable to Process!!! Try Again");
        window.location.href="schedule_services.jsp";
</script>
<%
    }


%>



