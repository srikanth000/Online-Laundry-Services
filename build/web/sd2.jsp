<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
  
   
    String IN=request.getParameter("item");
    String action=request.getParameter("action");
    String rate=request.getParameter("rate");
    String qty=request.getParameter("qty");
    String total=request.getParameter("total");
    
       
    int i=st.executeUpdate("insert into orderlistitem(Item_Name, action, rate, qty, total, orderid) values ('"+IN+"','"+action+"','"+rate+"','"+qty+"','"+total+"','"+session.getAttribute("orderid")+"')");
    if(i>0)
    {
        %>
       <script language="javascript">
        alert("Item Added Successfulluy!! ");
        window.location.href="schedule_services1.jsp";
        </script>
    <%
        }
        else
        {
            %>
                
        <script language="javascript">
        alert("Sorry.... Something Wrong!!! Try Again....!");
        window.location.href="schedule_services1.jsp";
</script>
<%
   }
%>

