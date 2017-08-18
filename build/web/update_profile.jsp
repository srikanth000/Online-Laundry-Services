<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    
    String mob=request.getParameter("custmobile");
    String pin=request.getParameter("custpin");
    String address=request.getParameter("custadd");
    String sql = "update user SET Mobile= '"+mob+"',Pincode='"+pin+"',Address='"+address+"' where userid='"+session.getAttribute("userid")+"'" ;
    int row = st.executeUpdate(sql);
    if (row > 0) 
    {
       
   %>
<script language="javascript">
    alert("Profile Update Successfully!!!");
    window.location.href="fabrinz-custm-deshboard.jsp";
</script>
<%
}  
    
    else
    {
        %>
        <script language="javascript">
        alert("Sorry... Profile Not Upadated!!! Try Again");
        window.location.href="fabrinz_custm_account.jsp";
</script>
<%
    }
%>