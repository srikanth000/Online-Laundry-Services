<%-- 
    Document   : forgotstore
    Created on : Jul 24, 2017, 11:28:32 PM
    Author     : shekhar
--%>


<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%@page import="mail.Mail" %>
<%
    String uname=request.getParameter("email");
    System.out.println(uname);
    session.setAttribute("fname", uname);
    PreparedStatement ps=con.prepareStatement("select * from store where email=?" );
    ps.setString(1,uname);
   
    ResultSet rs=ps.executeQuery();
    if(rs.next())
        
{
String password=rs.getString("password");
String fmobile=rs.getString("mobile");
session.setAttribute("password", password);
session.setAttribute("fmobile", fmobile);

     Mail pm=new Mail();
			
     boolean status=pm.forgotpassword(uname,password);
                               

    if (status)
    {
    %>
    <script language="javascript">
            alert("Password sent to your mail");
    window.location.href="sms store.jsp";
    </script>
    <%
        }
    else
    {
             %>
    <script language="javascript">
            alert("Password not sent to your mail");
    window.location.href="fforgot.jsp";
    </script>
    <%
    }
}

%>




