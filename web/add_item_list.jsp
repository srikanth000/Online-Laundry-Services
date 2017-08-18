<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    String Item_Name=request.getParameter("Item_Name");
   
    int i=st.executeUpdate("insert into itemlist(Item_Name) values ('"+Item_Name+"')");
     if(i>0)
    {
   %>
<script language="javascript">
    alert("Item Added successfully!!! " );
    window.location.href="additemlist.jsp";
</script>
<%
}     
    else
    {
        %>
        <script language="javascript">
        alert("Sorry... Invaild item Name!!! Try Again");
window.location.href="additemlist.jsp";
</script>
<%
    }


%>



