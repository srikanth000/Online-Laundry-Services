<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
 String IN=request.getParameter("count"); 
session.setAttribute("item", IN);
 String buffer="<select id='action' name='action' ><option value='-1'> -- SELECT ACTION -- </option>";  
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 ResultSet rs = st.executeQuery("Select * from item where uid='"+session.getAttribute("sid") +"' and Item_name='"+IN+"'  ORDER BY Item_name ASC");  
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString("Action")+"'>"+rs.getString("Action")+ "</option>";  
   }  
 buffer=buffer+"</select>";  
 response.getWriter().println(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }
 %>