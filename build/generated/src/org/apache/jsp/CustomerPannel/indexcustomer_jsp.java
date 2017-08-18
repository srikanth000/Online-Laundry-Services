package org.apache.jsp.CustomerPannel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class indexcustomer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Welcome to Fabrinz..</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/global.css\"/>\n");
      out.write("<link rel=\"stylesheet\" href=\"../css/login.css\">\n");
      out.write("<script type=\"text/javascript\" src=\"../js/jquery-1.2.6.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function slideSwitch() {\n");
      out.write("    var $active = $('#slideshow IMG.active');\n");
      out.write("    if ( $active.length === 0 ) $active = $('#slideshow IMG:last');\n");
      out.write("    var $next =  $active.next().length ? $active.next()\n");
      out.write("        : $('#slideshow IMG:first');\n");
      out.write("    $active.addClass('last-active');\n");
      out.write("    $next.css({opacity: 0.0})\n");
      out.write("        .addClass('active')\n");
      out.write("        .animate({opacity: 1.0}, 2000, function() {\n");
      out.write("            $active.removeClass('active last-active');\n");
      out.write("        });\n");
      out.write("}\n");
      out.write("$(function() {\n");
      out.write("    setInterval( \"slideSwitch()\", 5000 );\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"slideshow\">\n");
      out.write("    <img class=\"active\" src=\"../bg/01.jpg\"/>\n");
      out.write("<img src=\"../bg/02.jpg\"/>\n");
      out.write("<img src=\"../bg/03.jpg\"/>\n");
      out.write("</div>\n");
      out.write("<div id=\"loginform\">\n");
      out.write("  <form method=\"POST\" action=\"logincustomer.jsp\">\n");
      out.write("    <table align=\"center\" style=\"margin-top:-65%; border:hidden;padding:1% 3%; color:#FFFFFF; border-collapse:inherit;\">\n");
      out.write("      <tr>\n");
      out.write("          <td align=\"center\"><img src=\"../img/logologin.png\"  style=\"width: 100%; height: auto;margin:0px 0px 0px 0px;\"></td>\n");
      out.write("      </tr>\n");
      out.write("     \n");
      out.write("      <tr>\n");
      out.write("        <td><input type=\"text\" name=\"email\" placeholder=\"Email Id\"></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td><input type=\"password\" name=\"password\" placeholder=\"Password\"></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td align=\"right\"><input type=\"submit\" name=\"submit\" value=\"Login\"></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("          <td align=\"left\"><center><a href=\"#\">Register</a><span style=\"color:#000000;\"> |</span> <a href=\"#\">Forgot Password</a><span style=\"color:#000000;\"> |</span> <a href=\"../index.html\" style=\"color: red; font-size: 15px;\">Admin Login</a>/<center></td>\n");
      out.write("      </tr>\n");
      out.write("    </table>\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("    <div id=\"bottom_nav\"> <img src=\"../img/footerlogo.png\" align=\"left\" style=\"margin:5px 0px;\">\n");
      out.write("  <ul>\n");
      out.write("    <li><a href=\"#\">User Agreement</a></li>\n");
      out.write("    <li><a href=\"#\">Privacy Policy</a></li>\n");
      out.write("    <li><a href=\"#\">Community Guidelines</a></li>\n");
      out.write("    <li><a href=\"#\">Copyright Policy</a></li>\n");
      out.write("    <li><a href=\"#\">Register Policy</a></li>\n");
      out.write("    <li><a href=\"#\">Visit FabRinz</a></li>\n");
      out.write("  </ul>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
