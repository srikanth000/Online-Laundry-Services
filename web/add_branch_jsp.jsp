<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    String loc=request.getParameter("location_name");
    String name=request.getParameter("branch_name");
    String code=request.getParameter("branch_code");
    int i=st.executeUpdate("insert into branch(location_name,branch_name,branch_code) values ('"+loc+"','"+name+"','"+code+"')");
    if(i>0)
    {
   %>
<script language="javascript">
    alert("Branch Add successfully!!");
    window.location.href="addbranch.jsp";
</script>
<%
}  
    
    else
    {
        %>
        <script language="javascript">
        alert("Sorry.... This Branch Already Exist!!!");
        window.location.href="addbranch.jsp";
</script>
<%
    }
%>



