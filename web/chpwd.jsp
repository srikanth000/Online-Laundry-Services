<%@include file="connection.jsp" %>

<%@page language="java" import="java.sql.*"%>
<%
    String cp=request.getParameter("cp");
    String np=request.getParameter("np");
    String cnp=request.getParameter("cnp");
    ResultSet rs= st.executeQuery("select * from store where uid='"+session.getAttribute("uid")+"' and password= '"+cp+"'");
    if (rs.next())
    {
        int row = st.executeUpdate("Update store SET password='"+np+"' where uid='"+session.getAttribute("uid")+"'");
        if (row>0)
            
        {
            session.setAttribute("password", np);
    %>
    <script language="javascript">
    alert("Passwrod Upadated successfully!!!" );
    window.location.href="welcomestore.jsp";
</script>
<%
    }
}
else
{
%>
 <script language="javascript">
    alert("Invailid Current Password!! Try Again" );
    window.location.href="welcomestore.jsp";
</script>
<%
}
    

%>