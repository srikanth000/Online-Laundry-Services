<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
    String uname=request.getParameter("uname");
    String password=request.getParameter("password");
    
    PreparedStatement ps=con.prepareStatement("select * from store where email=? or mobile=? and password=?" );
    ps.setString(1,uname);
    ps.setString(2,uname);
    ps.setString(3,password);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
        
{
String name=rs.getString("owner_name");
String storename=rs.getString("store_name");
int usertype=rs.getInt("usertype");
String uid= rs.getString("uid");

session.setAttribute("owner_name", name);
session.setAttribute("store_name", storename);
session.setAttribute("usertype", usertype);
session.setAttribute("password", password);
session.setAttribute("uid", uid);


    if (usertype == 1)
    {
   %>
<script language="javascript">
        alert("Welcome Admin!!");
window.location.href="admindeshboard.jsp";
</script>
<%
    
    }
    else if (usertype == 2)
            {
%>
<script language="javascript">
        alert("Welcome <%=session.getAttribute("owner_name")%>!!");
window.location.href="welcomestore.jsp";
</script>
<%
   }
    else
    {
    %>
        <script language="javascript">
        alert("Sorry.. Invaild!!!! Try Again");
window.location.href="fabrinz_team_login";
</script>
<%
    }
}

%>




