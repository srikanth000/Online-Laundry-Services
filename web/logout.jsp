
<%
 session.setAttribute("owner_name", null);
session.setAttribute("store_name", null);
session.setAttribute("usertype", null);
session.setAttribute("password", null);
session.setAttribute("uid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>