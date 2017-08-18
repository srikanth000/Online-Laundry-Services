<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    String IN=request.getParameter("Item_Name");
   
    int i=st.executeUpdate("insert into storeitem(Item_Name,uid) values ('"+IN+"','"+session.getAttribute("uid")+"')");
    if(i>0)
    {
   %>
<script language="javascript">
    alert("Item Added In Your Store successfully!!!");
    window.location.href="additem.jsp";
</script>
<%
}  
else
    {
        %>
        <script language="javascript">
        alert("Sorry... Item Not Import in Your Store!!! Try Again");
        window.location.href="additem.jsp";
</script>
<%
    }


%>



