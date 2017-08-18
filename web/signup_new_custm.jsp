<%@page import="java.sql.*" %>
<%@page import="mail.Mail" %>
<%@include file="connection.jsp" %>

<%
    String Name=request.getParameter("name");
    String Email=request.getParameter("email");
     session.setAttribute("email",Email);
    String Mobile=request.getParameter("mobile");
    session.setAttribute("Mobile",Mobile);
    String Password=request.getParameter("password");
    String DOB=request.getParameter("dob");
    int st1=0;
    PreparedStatement ps1=con.prepareStatement("select * from user where email=? or mobile=? " );
    ps1.setString(1,Email);
    ps1.setString(2,Mobile);
    
    ResultSet rs=ps1.executeQuery();
    if(rs.next())
    {
        %>
          <script language="javascript">
    alert("You are already User!!  Please Login Now" );
    window.location.href="signup.jsp";
</script>
        <%
    }
    else
    {
   int i= st.executeUpdate("insert into user(Name,Email,Mobile,Password,DOB,status) values ('"+Name+"','"+Email+"','"+Mobile+"','"+Password+"','"+DOB+"','"+st1+"')");
   if(i!=0)
   {
       Mail pm=new Mail();
			try {
                          
				boolean status=pm.mailconfirmation(Email,Name,Mobile);
                               
                                if(status)
                                {
                                    %>
                                    <script language="javascript">
                                    alert("Confirmation mail sent");
                                    </script>
                                    <%
                                }
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
                        }
%>
<script language="javascript">
    alert("You Registered Successfully!!!  Login Now" );
    window.location.href="sms.jsp";
    
</script>
<%
}     
    else
    {
        %>
        <script language="javascript">
        alert("Sorry... You Are Already Registered !!");
window.location.href="fabrinz_custm_login.jsp";
</script>
<%
    }

    }
%>

