<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
String lid=request.getParameter("count");  
 String buffer="<select name='bran'><option value='-1'>Select</option>";  
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 ResultSet rs = st.executeQuery("Select * from branch where location_name='"+lid+"' ORDER BY branch_name ASC");  
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString("branch_name")+"'>"+rs.getString("branch_name")+"</option>";  
   }  
 buffer=buffer+"</select>";  
 response.getWriter().println(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }
 %>