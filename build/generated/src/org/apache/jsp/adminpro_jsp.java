package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminpro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/includes/storeheader.jsp");
    _jspx_dependants.add("/storeslistt.jsp");
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
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
      out.write("<a href=\"logout.php\"><img src=\"icons/logoutiic.png\" class=\"notifications\"></a>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div id=\"nav\">\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"nav\">\n");
      out.write("    ");
      out.write("<ul>\n");
      out.write("  <li><a href=\"welcomestore.jsp\">Dashboard</a></li>\n");
      out.write("  <li><a href=\"#\">Custumers <img src=\"icons/uptriangle.png\" class=\"dropicon\"></a>\n");
      out.write("    <ul>\n");
      out.write("      <li><a href=\"inv/invoice.jsp\">Add Custumer</a></li>\n");
      out.write("      <li><a href=\"viewcustumers.jsp\">View Custumers</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </li>\n");
      out.write("   <li><a href=\"#\">Reports <img src=\"icons/uptriangle.png\" class=\"dropicon\"></a>\n");
      out.write("    <ul>\n");
      out.write("        <li><a href=\"cll.jsp\">ConfirmList</a></li>\n");
      out.write("  <li><a href=\"wc.jsp\">Wrong Count</a></li>\n");
      out.write("  <li><a href=\"pl.jsp\">Pending List</a></li>\n");
      out.write("  <li><a href=\"cc.jsp\">Pending Delivery</a></li>\n");
      out.write("  <li><a href=\"del.jsp\">Today Delivery</a></li>\n");
      out.write("  <li><a href=\"viewinvoices.jsp\">View Invoices</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </li> \n");
      out.write("\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<br/>\n");
      out.write("<div id=\"main\">\n");
      out.write("<div class=\"viewprofile\">\n");
      out.write("    <div class=\"div1\">\n");
      out.write("        <img src=\"images/Crystal_Clear_user.gif\" ></img>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"div2\">\n");
      out.write("        <table>\n");
      out.write("            <tr><td> name</td></tr>\n");
      out.write("        </table>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("     \n");
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
