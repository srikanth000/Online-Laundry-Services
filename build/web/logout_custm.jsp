
<%
session.setAttribute("userid",null);
        session.setAttribute("Name",null);
    session.invalidate();
    response.sendRedirect("index.jsp");
%>