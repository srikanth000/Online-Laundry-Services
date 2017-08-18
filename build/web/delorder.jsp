<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
  
   
    String orderid=request.getParameter("orderid");
       
    int i=st.executeUpdate("delete from orderlist where orderid ='"+orderid+"' ");
    if(i>0)
    {
          int j =st.executeUpdate("delete from orderlistitem where orderid ='"+orderid+"' ");
          %>
       <script language="javascript">
        alert("ORDER deleted Successfulluy!! ");
        window.location.href="fabrinz_custm_orderhistory.jsp";
        </script>
    <%
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

