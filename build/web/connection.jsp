<%@page language="java" import="java.sql.*"%>
<% 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fabrinz","root","");
    Statement st=con.createStatement();
    
%>