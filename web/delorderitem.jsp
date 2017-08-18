<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
  
   
    String Ino=request.getParameter("Ino");
    
       
    int i=st.executeUpdate("delete from orderlistitem where orderid= '"+session.getAttribute("orderid")+"' and Ino='"+Ino+"'");
    if(i>0)
    {
        %>
       <script language="javascript">
        alert("Item Deleted From Order List !! ");
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

