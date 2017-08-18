<%@page import="java.sql.*"%>
<%@include file="connection.jsp" %>
<%
 String IN=request.getParameter("action"); 

 String buffer="<select id='rate' name='rate' readonly='' >";  
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 ResultSet rs = st.executeQuery("Select * from item where uid='"+session.getAttribute("sid") +"' and Action='"+IN+"' and Item_name='"+session.getAttribute("item") +"'");  
   if(rs.next()){
   buffer=buffer+"<option value='"+rs.getString("Cost")+"'>"+rs.getString("Cost")+ "</option>";  
   }  
 buffer=buffer+"</select>";  
 session.setAttribute("item", null);
 response.getWriter().println(buffer); 
 }
 catch(Exception e){
     System.out.println(e);
 }
 %>