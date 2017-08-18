package org.apache.jsp.CustomerPannel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class customerdeshboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/CustomerPannel/header.jsp");
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
      out.write("\n");
      out.write("\t<head>\n");
      out.write("\t\t\n");
      out.write("\t\t<title>Fabrinz</title>\n");
      out.write("       \n");
      out.write("        <!-- CSS Reset -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/reset.css\" tppabs=\"http://www.xooom.pl/work/magicadmin/css/reset.css\" media=\"screen\" />\n");
      out.write("       \n");
      out.write("        <!-- Fluid 960 Grid System - CSS framework -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/grid.css\" tppabs=\"http://www.xooom.pl/work/magicadmin/css/grid.css\" media=\"screen\" />\n");
      out.write("\t\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/styles.css\" tppabs=\"http://www.xooom.pl/work/magicadmin/css/styles.css\" media=\"screen\" />\n");
      out.write("        \n");
      out.write("        <!-- WYSIWYG editor stylesheet -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/jquery.wysiwyg.css\" tppabs=\"http://www.xooom.pl/work/magicadmin/css/jquery.wysiwyg.css\" media=\"screen\" />\n");
      out.write("        \n");
      out.write("        <!-- Table sorter stylesheet -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/tablesorter.css\" tppabs=\"http://www.xooom.pl/work/magicadmin/css/tablesorter.css\" media=\"screen\" />\n");
      out.write("        \n");
      out.write("        <!-- Thickbox stylesheet -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/thickbox.css\" tppabs=\"http://www.xooom.pl/work/magicadmin/css/thickbox.css\" media=\"screen\" />\n");
      out.write("        \n");
      out.write("        <!-- Themes. Below are several color themes. Uncomment the line of your choice to switch to different color. All styles commented out means blue theme. -->\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../css/theme-blue.css\" tppabs=\"http://www.xooom.pl/work/magicadmin/css/theme-blue.css\" media=\"screen\" />\n");
      out.write("        <!--<link rel=\"stylesheet\" type=\"text/css\" href=\"css/theme-red.css\" media=\"screen\" />-->\n");
      out.write("        <!--<link rel=\"stylesheet\" type=\"text/css\" href=\"css/theme-yellow.css\" media=\"screen\" />-->\n");
      out.write("        <!--<link rel=\"stylesheet\" type=\"text/css\" href=\"css/theme-green.css\" media=\"screen\" />-->\n");
      out.write("        <!--<link rel=\"stylesheet\" type=\"text/css\" href=\"css/theme-graphite.css\" media=\"screen\" />-->\n");
      out.write("        \n");
      out.write("\t\t<!-- JQuery engine script-->\n");
      out.write("                <script type=\"text/javascript\" src=\"../js/jquery-1.3.2.min.js\" tppabs=\"http://www.xooom.pl/work/magicadmin/js/jquery-1.3.2.min.js\"></script>\n");
      out.write("        \n");
      out.write("\t\t<!-- JQuery WYSIWYG plugin script -->\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"../js/jquery.wysiwyg.js\" tppabs=\"http://www.xooom.pl/work/magicadmin/js/jquery.wysiwyg.js\"></script>\n");
      out.write("        \n");
      out.write("        <!-- JQuery tablesorter plugin script-->\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"../js/jquery.tablesorter.min.js\" tppabs=\"http://www.xooom.pl/work/magicadmin/js/jquery.tablesorter.min.js\"></script>\n");
      out.write("        \n");
      out.write("\t\t<!-- JQuery pager plugin script for tablesorter tables -->\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"../js/jquery.tablesorter.pager.js\" tppabs=\"http://www.xooom.pl/work/magicadmin/js/jquery.tablesorter.pager.js\"></script>\n");
      out.write("        \n");
      out.write("\t\t<!-- JQuery password strength plugin script -->\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"../js/jquery.pstrength-min.1.2.js\" tppabs=\"http://www.xooom.pl/work/magicadmin/js/jquery.pstrength-min.1.2.js\"></script>\n");
      out.write("        \n");
      out.write("\t\t<!-- JQuery thickbox plugin script -->\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"../js/thickbox.js\" tppabs=\"http://www.xooom.pl/work/magicadmin/js/thickbox.js\"></script>\n");
      out.write("        \n");
      out.write("        <!-- Initiate WYIWYG text area -->\n");
      out.write("\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t\t$(function()\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t$('#wysiwyg').wysiwyg(\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\tcontrols : {\n");
      out.write("\t\t\tseparator01 : { visible : true },\n");
      out.write("\t\t\tseparator03 : { visible : true },\n");
      out.write("\t\t\tseparator04 : { visible : true },\n");
      out.write("\t\t\tseparator00 : { visible : true },\n");
      out.write("\t\t\tseparator07 : { visible : false },\n");
      out.write("\t\t\tseparator02 : { visible : false },\n");
      out.write("\t\t\tseparator08 : { visible : false },\n");
      out.write("\t\t\tinsertOrderedList : { visible : true },\n");
      out.write("\t\t\tinsertUnorderedList : { visible : true },\n");
      out.write("\t\t\tundo: { visible : true },\n");
      out.write("\t\t\tredo: { visible : true },\n");
      out.write("\t\t\tjustifyLeft: { visible : true },\n");
      out.write("\t\t\tjustifyCenter: { visible : true },\n");
      out.write("\t\t\tjustifyRight: { visible : true },\n");
      out.write("\t\t\tjustifyFull: { visible : true },\n");
      out.write("\t\t\tsubscript: { visible : true },\n");
      out.write("\t\t\tsuperscript: { visible : true },\n");
      out.write("\t\t\tunderline: { visible : true },\n");
      out.write("            increaseFontSize : { visible : false },\n");
      out.write("            decreaseFontSize : { visible : false }\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t} );\n");
      out.write("\t\t\t});\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        <!-- Initiate tablesorter script -->\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\t\t\t$(document).ready(function() { \n");
      out.write("\t\t\t\t$(\"#myTable\") \n");
      out.write("\t\t\t\t.tablesorter({\n");
      out.write("\t\t\t\t\t// zebra coloring\n");
      out.write("\t\t\t\t\twidgets: ['zebra'],\n");
      out.write("\t\t\t\t\t// pass the headers argument and assing a object \n");
      out.write("\t\t\t\t\theaders: { \n");
      out.write("\t\t\t\t\t\t// assign the sixth column (we start counting zero) \n");
      out.write("\t\t\t\t\t\t6: { \n");
      out.write("\t\t\t\t\t\t\t// disable it by setting the property sorter to false \n");
      out.write("\t\t\t\t\t\t\tsorter: false \n");
      out.write("\t\t\t\t\t\t} \n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}) \n");
      out.write("\t\t\t.tablesorterPager({container: $(\"#pager\")}); \n");
      out.write("\t\t}); \n");
      out.write("\t\t</script>\n");
      out.write("        \n");
      out.write("        <!-- Initiate password strength script -->\n");
      out.write("\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t\t$(function() {\n");
      out.write("\t\t\t$('.password').pstrength();\n");
      out.write("\t\t\t});\n");
      out.write("        </script>\n");
      out.write("\t</head>\n");
      out.write("\t<body>\n");
      out.write("         \n");
      out.write("<!-- Header -->\n");
      out.write("<div id=\"header\">\n");
      out.write("        \n");
      out.write("            <!-- Header. Status part -->\n");
      out.write("            <div id=\"header-status\">\n");
      out.write("                <img src=\"../img/logofr.png\" id=\"logofr\">\n");
      out.write("                <div class=\"container_12\">\n");
      out.write("                    <div class=\"grid_8\">\n");
      out.write("\t\t\t\t\t&nbsp;\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"grid_4\">\n");
      out.write("                        <a href=\"indexcustomer.jsp\" id=\"logout\">\n");
      out.write("                        Logout\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div style=\"clear:both;\"></div>\n");
      out.write("            </div> <!-- End #header-status -->\n");
      out.write("            \n");
      out.write("            <!-- Header. Main part -->\n");
      out.write("            <div id=\"header-main\">\n");
      out.write("                <div class=\"container_12\">\n");
      out.write("                    <div class=\"grid_12\">\n");
      out.write("                        <div id=\"logo\">\n");
      out.write("                          \n");
      out.write("                        </div><!-- End. #Logo -->\n");
      out.write("                    </div><!-- End. .grid_12-->\n");
      out.write("                    <div style=\"clear: both;\"></div>\n");
      out.write("                </div><!-- End. .container_12 -->\n");
      out.write("            </div> <!-- End #header-main -->\n");
      out.write("            <div style=\"clear: both;\"></div>\n");
      out.write("            <!-- Sub navigation -->\n");
      out.write("            <div id=\"subnav\">\n");
      out.write("                <div class=\"container_12\">\n");
      out.write("                    <div class=\"grid_12\">\n");
      out.write("                        <ul>\n");
      out.write("                              \n");
      out.write("                                <li id=\"current\"><a href=\"\">Dashboard</a></li>\n");
      out.write("                                <li><a href=\"\">Articles</a></li>\n");
      out.write("                                <li><a href=\"\">Files</a></li>\n");
      out.write("                                <li><a href=\"\">Profile</a></li>\n");
      out.write("                                <li><a href=\"\">Settings</a></li>\n");
      out.write("                            \n");
      out.write("                        </ul>\n");
      out.write("                        \n");
      out.write("                    </div><!-- End. .grid_12-->\n");
      out.write("                </div><!-- End. .container_12 -->\n");
      out.write("                <div style=\"clear: both;\"></div>\n");
      out.write("            </div> <!-- End #subnav -->\n");
      out.write("        </div> <!-- End #header -->\n");
      out.write("        ");
      out.write("\n");
      out.write("\t<div class=\"container_12\">\n");
      out.write("         <!-- Dashboard icons -->\n");
      out.write("            <div class=\"grid_7\">\n");
      out.write("            \t<a href=\"\" class=\"dashboard-module\">\n");
      out.write("                    <img src=\"../images/Crystal_Clear_write.gif\" tppabs=\"http://www.xooom.pl/work/magicadmin/images/Crystal_Clear_write.gif\" width=\"64\" height=\"64\" alt=\"edit\" />\n");
      out.write("                \t<span>New article</span>\n");
      out.write("                </a>\n");
      out.write("                \n");
      out.write("                <a href=\"\" class=\"dashboard-module\">\n");
      out.write("                \t<img src=\"../images/Crystal_Clear_file.gif\" tppabs=\"http://www.xooom.pl/work/magicadmin/images/Crystal_Clear_file.gif\" width=\"64\" height=\"64\" alt=\"edit\" />\n");
      out.write("                \t<span>Upload file</span>\n");
      out.write("                </a>\n");
      out.write("                \n");
      out.write("                <a href=\"\" class=\"dashboard-module\">\n");
      out.write("                \t<img src=\"../images/Crystal_Clear_files.gif\" tppabs=\"http://www.xooom.pl/work/magicadmin/images/Crystal_Clear_files.gif\" width=\"64\" height=\"64\" alt=\"edit\" />\n");
      out.write("                \t<span>Articles</span>\n");
      out.write("                </a>\n");
      out.write("                \n");
      out.write("                <a href=\"\" class=\"dashboard-module\">\n");
      out.write("                \t<img src=\"../images/Crystal_Clear_calendar.gif\" tppabs=\"http://www.xooom.pl/work/magicadmin/images/Crystal_Clear_calendar.gif\" width=\"64\" height=\"64\" alt=\"edit\" />\n");
      out.write("                \t<span>Calendar</span>\n");
      out.write("                </a>\n");
      out.write("                \n");
      out.write("                <a href=\"viewCustomerProfile.jsp\" class=\"dashboard-module\">\n");
      out.write("                \t<img src=\"../images/Crystal_Clear_user.gif\" tppabs=\"http://www.xooom.pl/work/magicadmin/images/Crystal_Clear_user.gif\" width=\"64\" height=\"64\" alt=\"edit\" />\n");
      out.write("                \t<span>My profile</span>\n");
      out.write("                </a>\n");
      out.write("                \n");
      out.write("                <a href=\"\" class=\"dashboard-module\">\n");
      out.write("                    <img src=\"../images/Crystal_Clear_stats.gif\" tppabs=\"http://www.xooom.pl/work/magicadmin/images/Crystal_Clear_stats.gif\" width=\"64\" height=\"64\" alt=\"edit\" />\n");
      out.write("                \t<span>Stats</span>\n");
      out.write("                </a>\n");
      out.write("                \n");
      out.write("                <a href=\"\" class=\"dashboard-module\">\n");
      out.write("                \t<img src=\"../images/Crystal_Clear_settings.gif\" tppabs=\"http://www.xooom.pl/work/magicadmin/images/Crystal_Clear_settings.gif\" width=\"64\" height=\"64\" alt=\"edit\" />\n");
      out.write("                \t<span>Settings</span>\n");
      out.write("                </a>\n");
      out.write("                <div style=\"clear: both\"></div>\n");
      out.write("            </div> <!-- End .grid_7 -->\n");
      out.write("            \n");
      out.write("            <!-- Account overview -->\n");
      out.write("            <div class=\"grid_5\">\n");
      out.write("                <div class=\"module\">\n");
      out.write("                        <h2><span>Account overview</span></h2>\n");
      out.write("                        \n");
      out.write("                        <div class=\"module-body\">\n");
      out.write("                        \n");
      out.write("                        \t<p>\n");
      out.write("                                <strong>User: </strong>User X<br />\n");
      out.write("                                <strong>Your last visit was on: </strong>20 January 2010,<br />\n");
      out.write("                                <strong>From IP: </strong>000.000.00.00\n");
      out.write("                            </p>\n");
      out.write("                        \n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("                <div style=\"clear:both;\"></div>\n");
      out.write("            </div> <!-- End .grid_5 -->\n");
      out.write("            \n");
      out.write("            </body>\n");
      out.write("</html>");
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
