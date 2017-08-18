<%@include file="connection.jsp" %>
<%@page import="java.sql.*"%>    
<%
    String stn=request.getParameter("store_name");
    String own=request.getParameter("owner_name");
    String em=request.getParameter("em");
    String pass=request.getParameter("pass");
    String mob=request.getParameter("mob");
    String loc=request.getParameter("loc");
    String bran=request.getParameter("bran");
    String type = "2";
    String sql = "insert into store(owner_name, email, password, mobile, location_name, branch_name, usertype, store_name, pid) values ('"+own+"','"+em+"','"+pass+"','"+mob+"','"+loc+"','"+bran+"','"+type+"','"+stn+"',1)";
    int row = st.executeUpdate(sql);
    if (row > 0) 
    {
   %>
<script language="javascript">
    alert( "Add successfully!!!");
    window.location.href="addstore.jsp";
</script>
<%
}  
    
    else
    {
        %>
        <script language="javascript">
        alert("Sorry... Invaild Store Details!!! Try Again");
        window.location.href="addstore.jsp";
</script>
<%
    }
%>