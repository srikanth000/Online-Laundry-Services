<%@page language="java" import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    String location_id= request.getParameter("location_id");
    int i= st.executeUpdate("DELETE FROM location WHERE location_id='"+location_id+"'");
    if(i>0)
    {
%>
<script >
        alert("location Deleted!!");
window.location.href="addlocation.jsp";
</script>
<%
    }
    else
    {
    %>
<script language="javascript">
        alert("Itme Not Deleted!!");
window.location.href="addlocation.jsp";
</script>
<%

                       }
                     %>