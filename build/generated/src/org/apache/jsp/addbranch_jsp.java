package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class addbranch_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/includes/header.jsp");
    _jspx_dependants.add("/adminlistt.jsp");
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
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("<head>\n");
      out.write("<title>Welcome to FabRinz...</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/global.css\">\n");
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
      out.write("\t\t\t\t\tdocument.getElementById('addbranch').style.display=\"block\";\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\tfunction hide()\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\tdocument.getElementById('addbranch').style.display=\"none\";\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t\n");
      out.write("\t\t</script>\n");
      out.write("<style>\n");
      out.write(".editboxxx {\n");
      out.write("\tdisplay:none;\n");
      out.write("}\n");
      out.write(".editboxxx1 {\n");
      out.write("\tdisplay:none;\n");
      out.write("}\n");
      out.write(".editboxxxy {\n");
      out.write("\tdisplay:none;\n");
      out.write("}\n");
      out.write(".editboxxxy1 {\n");
      out.write("\tdisplay:none;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");
      out.write("<div id=\"header\">\n");
      out.write("<div id=\"logobg\">\n");
      out.write("<img src=\"img/logologin.png\" style=\"width:160px;\">\n");
      out.write("</div>\n");
      out.write("<div id=\"logoutbg\">\n");
      out.write("<table style=\"margin-top:20px;\">\n");
      out.write("<tr>\n");
      out.write("<td>\n");
      out.write("<script src=\"js/jquery.js\" type=\"text/javascript\"></script> \n");
      out.write("\n");
      out.write("<script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("    $(\"#alaramnav\").click(function(){\n");
      out.write("        $(\"#alaramcontent\").toggle();\n");
      out.write("\t\t$(\"#notificationscontent\").hide();\n");
      out.write("\t\t$(\"#messagecontent\").hide();\n");
      out.write("\t\t\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("    $(\"#notificationsnav\").click(function(){\n");
      out.write("        $(\"#notificationscontent\").toggle();\n");
      out.write("\t\t$(\"#alaramcontent\").hide();\n");
      out.write("\t\t $(\"#messagecontent\").hide();\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("    $(\"#messagenav\").click(function(){\n");
      out.write("        $(\"#messagecontent\").toggle();\n");
      out.write("\t\t\t\t$(\"#alaramcontent\").hide();\n");
      out.write("\t\t $(\"#notificationscontent\").hide();\n");
      out.write("    });\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<td>\n");
      out.write("<a href=\"logout.jsp\"><img src=\"icons/logoutiic.png\" class=\"notifications\"></a>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"nav\">\n");
      out.write("    ");
      out.write("<ul>\n");
      out.write("  <li><a href=\"admin.jsp\">Dashboard</a></li>\n");
      out.write("  <li><a href=\"#\">Create Master <img src=\"icons/uptriangle.png\" class=\"dropicon\"></a>\n");
      out.write("    <ul>\n");
      out.write("      <li><a href=\"addlocation.jsp\">Add Location</a></li>\n");
      out.write("      <li><a href=\"addbranch.jsp\">Add Branch</a></li>\n");
      out.write("      <li><a href=\"addstore.jsp\">Add Store</a></li>\n");
      out.write("      <li><a href=\"addwash.jsp\">Add Wash</a></li>\n");
      out.write("      <li><a href=\"additem.jsp\">Add Item</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </li>\n");
      out.write("    <li><a href=\"custumersadmin.php\">View Custumers </a>\n");
      out.write("   <li><a href=\"#\">Reports <img src=\"icons/uptriangle.png\" class=\"dropicon\"></a>\n");
      out.write("    <ul>\n");
      out.write("  <li><a href=\"acl.jsp\">Confirm List</a></li>\n");
      out.write("  <li><a href=\"awc.jsp\">Wrong Count</a></li>\n");
      out.write("  <li><a href=\"apc.jsp\">Pending List</a></li>\n");
      out.write("  <li><a href=\"apd.jsp\">Pending Delivery</a></li>\n");
      out.write("  <li><a href=\"atd.jsp\">Today Delivery</a></li>\n");
      out.write("  <li><a href=\"aviewinvoices.jsp\">View Invoices</a></li>\n");
      out.write("  <li><a href=\"atodayinvoices.jsp\">Today Invoices</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </li> \n");
      out.write("\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<div id=\"main\">\n");
      out.write("<table align=\"right\" style=\"margin:0px;\">\n");
      out.write("<tr>\n");
      out.write("<td><input type=\"button\" onclick=\"show()\" name=\"remove\" value=\"Add Branch\"></td>\n");
      out.write("<td><input type=\"button\" onclick=\"hide()\" name=\"remove\" value=\"Remove\">\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("  <div id=\"addbranch\" style=\"display:none\">\n");
      out.write("    <form action=\"add_branch_jsp.jsp\" METHOD=\"POST\">\n");
      out.write("      <table border=\"1px\" style=\"margin-bottom:10px;\">\n");
      out.write("        <tr class=\"trheads\">\n");
      out.write("          <td>Select Location</td>\n");
      out.write("          <td>Branch Name</td>\n");
      out.write("          <td>Branch code</td>\n");
      out.write("          </tr>\n");
      out.write("          <tr>\n");
      out.write("          <td>\n");
      out.write("            <select name=\"loc\" placeholder=\"Select Location\">\n");
      out.write("              \n");
      out.write("\n");

   try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/febrinz","root","pass");
    Statement st=con.createStatement();
    ResultSet rs= st.executeQuery("Select * from location");
    while(rs.next())
{
      out.write("\n");
      out.write(" \n");
      out.write("<option value=\"");
String item= rs.getString(1); out.print(item);
      out.write('"');
      out.write('>');
 out.print(item);
      out.write("</option>\n");
      out.write("      ");

        String desc = rs.getString(2);
        out.println("<tr><td>"+desc);
        out.println("</td></tr>");
        }
}
  catch(Exception e){
out.println("Error");
}

      out.write("\n");
      out.write("</select>\n");
      out.write("            </select>\n");
      out.write("          </td>\n");
      out.write("          <td>\n");
      out.write("            <input type=\"text\" name=\"name\" placeholder=\"Branch Name\" required=\"true\"/>\n");
      out.write("          </td>\n");
      out.write("          <td>\n");
      out.write("            <input type=\"text\" name=\"code\" placeholder=\"Branch Code\" required=\"true\"/>\n");
      out.write("          </td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("        <td><input type=\"submit\" name=\"submit\" value=\"Submit\"/></td>\n");
      out.write("        <td style=\"border-left:hidden;\"></td>\n");
      out.write("        <td style=\"border-left:hidden;\"></td>\n");
      out.write("      </tr>\n");
      out.write("      </table>\n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write("  <div id=\"containerrr7\"></div>\n");
      out.write("  ");
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
