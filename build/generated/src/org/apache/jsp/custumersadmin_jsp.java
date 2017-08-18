package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class custumersadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/includes/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Welcome to FabRinz...</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/global.css\"/>\n");
      out.write("<script type=\"text/javascript\" src=\"jquery.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"EditDeletepage.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"pagination.css\" />\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t\t\t$(function() {\n");
      out.write("\t\t\t$('.password').pstrength();\n");
      out.write("\t\t\t});\n");
      out.write("        </script>\n");
      out.write("<script>\n");
      out.write("\t\t\tfunction show()\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\t\tdocument.getElementById('addlocation').style.display=\"block\";\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\tfunction hide()\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\tdocument.getElementById('addlocation').style.display=\"none\";\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t\n");
      out.write("\t\t</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div id=\"main\">\n");
      out.write("<form action=\"\">\n");
      out.write("  <table width=\"100%\" border=\"1px\" id=\"myTable\" class=\"tablesorter\" >\n");
      out.write("      <tr class=\"trheads\">\n");
      out.write("        <td>S.No</td>\n");
      out.write("        <td>First Name</td> \n");
      out.write("        <td>Last Name</td>\n");
      out.write("        <td>Email</td>\n");
      out.write("        <td>mobile</td>\n");
      out.write("      </tr>\n");
      out.write("    <tbody>\n");
      out.write("      \n");

     Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/febrinz","root","pass");
    Statement st=con.createStatement();
    ResultSet rs= st.executeQuery("Select * from store");
    while(rs.next())
{
      out.write("\n");
      out.write(" \n");
      out.write("      <tr>\n");
      out.write("        <td class=\"align-center\">");
      out.print( rs.getString(1));
      out.write("</td>\n");
      out.write("        <td>");
      out.print( rs.getString(2));
      out.write("</td>\n");
      out.write("        <td>");
      out.print( rs.getString(3));
      out.write("</td>\n");
      out.write("        <td>");
      out.print( rs.getString(4));
      out.write("</td>\n");
      out.write("        <td>");
      out.print( rs.getString(5));
      out.write("</td>\n");
      out.write("      </tr>\n");
      out.write("   ");

 }

      out.write("\n");
      out.write("    </tbody>\n");
      out.write("  </table>\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("    ");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
