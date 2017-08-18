<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    String IN=request.getParameter("Item_Name");
    String AC=request.getParameter("Action");
    String CT=request.getParameter("Cost");
    
    int i=st.executeUpdate("insert into item(Item_name,Action,Cost,uid) values ('"+IN+"','"+AC+"','"+CT+"','"+session.getAttribute("uid")+"')");
    if(i>0)
    {
   %>
<script language="javascript">
    alert("Item Added successfully!!!");
    window.location.href="additem.jsp";
</script>
<%
}  
else
    {
        %>
        <script language="javascript">
        alert("Sorry... Invaild Item Details!!! Try Again");
        window.location.href="additem.jsp";
</script>
<%
    }


%>



