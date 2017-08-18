<%@page import="java.sql.*" %>
<%@include file="connection.jsp" %>
<%@ page import="java.util.Date"%>
<%
    String Name=request.getParameter("oname");
    String Email=request.getParameter("email");
    String Mobile=request.getParameter("number");
    String Password=request.getParameter("pass");
    String Location=request.getParameter("lname");
    String Branch=request.getParameter("bname");
    String  Store=request.getParameter("sname");
    int Usertype=2;
    int Uid=6;
    int Pid=1;
    
   // date Last=new java.util.Date();
    String Last="0000-00-00";

    //String DOB="1996-10-20";
//request.getParameter("dob");
   PreparedStatement ps=con.prepareStatement("select * from store where email=? or mobile=? " );
    ps.setString(1,Email);
    ps.setString(2,Mobile);
    
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
        
      %>
      <script language="javascript">
    alert("You are already User!!  Please Login Now" );
    window.location.href="flogin.jsp";
</script>

  <% }
    else
        {
   int i= st.executeUpdate("insert into store(owner_name,email,password,mobile,location_name,branch_name,usertype,store_name,pid,lastupdate) values ('"+Name+"','"+Email+"','"+Password+"','"+Mobile+"','"+Location+"','"+Branch+"','"+Usertype+"','"+Store+"','"+Pid+"','"+Last+"')");
   if(i>0)
   {
%>
<script language="javascript">
   // alert("You Registered Successfully!!!  Login Now" );
    window.location.href="fsuccess.jsp";
</script>
<%
}     
    else
    {
        %>
        <script language="javascript">
        alert("Sorry... You Are Already Registered !!");
window.location.href="flogin.jsp";
</script>
<%
    }
}


%>

