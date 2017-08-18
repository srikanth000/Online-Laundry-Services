<%-- 
    Document   : forgot
    Created on : Jul 15, 2017, 11:42:09 AM
    Author     : shekhar
--%>


<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%@page import="mail.Mail" %>
<%
    String uname=request.getParameter("email1");
    System.out.println(uname);
    session.setAttribute("fname", uname);
    PreparedStatement ps=con.prepareStatement("select * from user where email=?" );
    ps.setString(1,uname);
   
    ResultSet rs=ps.executeQuery();
    if(rs.next())
        
{
String password=rs.getString("Password");
String fmobile=rs.getString("Mobile");
session.setAttribute("password", password);
session.setAttribute("fmobile", fmobile);

     Mail pm=new Mail();
			
     boolean status=pm.forgotpassword(uname,password);
                               

    if (status)
    {
    %>
    <script language="javascript">
            alert("Password sent to your mail");
    window.location.href="sms3.jsp";
    </script>
    <%
        }
    else
    {
             %>
    <script language="javascript">
            alert("Password not sent to your mail");
    window.location.href="fabrinz_custm_forgot.jsp";
    </script>
    <%
    }
}

%>




