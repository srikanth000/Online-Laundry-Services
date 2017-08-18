<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    
    String own=request.getParameter("own");
    String stn=request.getParameter("stn");
    String mob=request.getParameter("mob");
    String sql = "update store SET owner_name= '"+own+"',mobile='"+mob+"',store_name='"+stn+"' where uid='"+session.getAttribute("uid")+"'" ;
    int row = st.executeUpdate(sql);
    if (row > 0) 
    {
        session.setAttribute("owner_name", own);
        session.setAttribute("store_name", stn);


   %>
<script language="javascript">
    alert("Profile Update Successfully!!!");
    window.location.href="storeprofile.jsp";
</script>
<%
}  
    
    else
    {
        %>
        <script language="javascript">
        alert("Sorry... Profile Not Upadated!!! Try Again");
        window.location.href="storeprofile.jsp";
</script>
<%
    }
%>