<%@include file="connection.jsp" %>
<%@page import="java.sql.*" %>
<%
 
    String location=request.getParameter("location");
    String sid=request.getParameter("store_id");
    String custname=request.getParameter("custname");
    String email=request.getParameter("custemail");
    String mobile=request.getParameter("custmobile");
    String pin=request.getParameter("custpin");
    String address=request.getParameter("address");
    String picuptime=request.getParameter("picuptime");
     session.setAttribute("pickup", picuptime);
     session.setAttribute("omobile", mobile);
    
       
    int i=st.executeUpdate("insert into orderlist(location, sid, custname, email, mobile, pin, address,picuptime,uid) values ('"+location+"','"+sid+"','"+custname+"','"+email+"','"+mobile+"','"+pin+"','"+address+"','"+picuptime+"','"+session.getAttribute("userid")+"')");
    if(i>0)
    { 
        session.setAttribute("sid", sid);
    
             ResultSet rs=st.executeQuery("select * from orderlist where location='"+location+"' and sid='"+sid+"' and custname='"+custname+"' and email='"+email+"' and mobile='"+mobile+"' and pin='"+pin+"'and address='"+address+"' and picuptime='"+picuptime+"'and uid='"+session.getAttribute("userid")+"' ORDER BY orderid DESC ");
             if(rs.next())
             {
                 String orderid=rs.getString("orderid");
                 session.setAttribute("orderid", orderid);
                 response.sendRedirect("schedule_services1.jsp");
             }
            
         
    }
    else
    {
       response.sendRedirect("schedule_services.jsp");
    }


%>