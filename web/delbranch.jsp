<%@page language="java" import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    String code= request.getParameter("branch_id");
    int i= st.executeUpdate("DELETE FROM branch WHERE branch_id='"+code+"'");
    if(i>0)
    {
%>
<script >
        alert("Branch Deleted!!");
window.location.href="addbranch.jsp";
</script>
<%
    }
    else
    {
    %>
<script language="javascript">
        alert("Branch Not Deleted!!");
window.location.href="addbranch.jsp";
</script>
<%

                       }
                     %>