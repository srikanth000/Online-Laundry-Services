<%@page language="java" import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
   String id= request.getParameter("Id"); 
    int i= st.executeUpdate("delete from item WHERE Item_id= '"+id+"'");
    if(i>0)
    {
%>
<script >
        alert("Itme Deleted!!");
window.location.href="additem.jsp";
</script>
<%
    }
    else
    {
    %>
<script language="javascript">
        alert("Itme Not Deleted!!");
window.location.href="additem.jsp";
</script>
<%

                       }
                     %>