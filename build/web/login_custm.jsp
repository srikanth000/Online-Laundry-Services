<%@page language="java" import="java.sql.*"%>
<%@include file="connection.jsp" %>
<% 
    String uname=request.getParameter("email1");
    String pwd=request.getParameter("pwd");
    PreparedStatement ps= con.prepareStatement("Select * from user where ( Email=? or Mobile=?) and Password=? ");
    ps.setString(1, uname);
    ps.setString(2, uname);
    ps.setString(3, pwd);
    ResultSet rs= ps.executeQuery();
    if (rs.next())
    {
        PreparedStatement ps1= con.prepareStatement("Select * from user where (Email=? or Mobile=?) and status=? ");
        int status=1;
         ps1.setString(1, uname);
          ps1.setString(2, uname);
        ps1.setInt(3, status);
         ResultSet rs1= ps1.executeQuery();
        
         if(rs1.next())
         {
                int uid=rs1.getInt("userid");
                 String Name=rs1.getString("Name");
                 session.setAttribute("userid",uid);
                 session.setAttribute("Name",Name);
                   String mobile=rs1.getString("Mobile");
              session.setAttribute("Mobile",mobile);
                 String email=rs.getString("Email");
                  session.setAttribute("email",email);
        
    %>
    <script>
        alert(" Welcome <%=session.getAttribute("Name")%>");
        window.location.href="fabrinz-custm-deshboard.jsp";
    </script>
<%
         }
         else{
             String mobile=rs.getString("Mobile");
             String email=rs.getString("Email");
              session.setAttribute("Mobile",mobile);
               session.setAttribute("email",email);
              
         %>
           <script>
        alert("We have sent a OTP verification code to Your mobile.Please activate your account.");
        window.location.href="sms.jsp";
    </script>
         <%
    }}
else 
{
    %>
    <script>
        alert(" Invailid User !!! %>");
        window.location.href="signup.jsp"
    </script>
<%
    }
    
%>
<%
int timeout = session.getMaxInactiveInterval();
response.setHeader("Refresh", timeout + "; URL = index.jsp");
%>