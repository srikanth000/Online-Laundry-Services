<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    String location=request.getParameter("location");
    int i=st.executeUpdate("insert into location(location_name) values ('"+location+"')");
     if(i>0)
    {
   %>
<script language="javascript">
    alert("Location Add successfully!!!" );
    window.location.href="addlocation.jsp";
</script>
<%
}  
    
    else
    {
        %>
        <script language="javascript">
        alert("Sorry... Invaild Location Name!!! Try Again");
window.location.href="addlocation.jsp";
</script>
<%
    }


%>



