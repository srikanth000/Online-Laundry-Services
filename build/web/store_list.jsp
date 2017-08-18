<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
String lid=request.getParameter("count");  
 String buffer="<select name='store' ><option value='-1'> -- SELECT STORE -- </option>";  
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 ResultSet rs = st.executeQuery("Select * from store where location_name='"+lid+"'  ORDER BY store_name ASC");  
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString("uid")+"'>"+rs.getString("store_name")+ " - "+rs.getString("owner_name")+ " - "+rs.getString("branch_name")+ "</option>";  
   }  
 buffer=buffer+"</select>";  
 response.getWriter().println(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }
 %>