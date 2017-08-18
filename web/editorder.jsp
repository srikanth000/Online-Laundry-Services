<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
  
   
    String orderid=request.getParameter("orderid");
   
    ResultSet rs=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
    if(rs.next())
    {
        String sid=rs.getString("sid");
        session.setAttribute("sid", sid);
        session.setAttribute("orderid", orderid);
        response.sendRedirect("schedule_services1.jsp");
    }
     else
     {
            %>
                
        <script language="javascript">
        alert("Sorry.... Something Wrong!!! Try Again....!");
        window.location.href="fabrinz_custm_orderhistory.jsp";
</script>
<%
   }
%>

