<%@include file="connection.jsp" %>

<%@page language="java" import="java.sql.*"%>
<%
    String cp=request.getParameter("custpass");
    
    int row = st.executeUpdate("Update user SET Password='"+cp+"' where userid='"+session.getAttribute("userid")+"'");
        if (row>0)
            
        {
            
    %>
    <script language="javascript">
    alert("Passwrod Upadated successfully!!!" );
    window.location.href="fabrinz-custm-deshboard.jsp";
</script>
<%
    }

else
{
%>
 <script language="javascript">
    alert("Sorry Password Can't Be Changed!! Try Again" );
    window.location.href="fabrinz-custm-deshboard.jsp";
</script>
<%
}
    

%>