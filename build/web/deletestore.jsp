<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    String uid=request.getParameter("uid");
    int i=st.executeUpdate("delete from store where uid='"+uid+"'");
    if(i>0)
    {
   %>
<script language="javascript">
    alert("Store Deleted successfully!!");
    window.location.href="addstore.jsp";
</script>
<%
}  
    
    else
    {
        %>
        <script language="javascript">
        alert("Sorry.... Store not deleted.... Try Again!!!");
        window.location.href="addstore.jsp";
</script>
<%
    }
%>



