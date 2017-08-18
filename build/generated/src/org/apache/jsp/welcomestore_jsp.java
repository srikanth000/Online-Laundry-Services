package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class welcomestore_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/includes/storeheader.jsp");
    _jspx_dependants.add("/storeslistt.jsp");
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
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Welcome to FabRinz...</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/global.css\">\n");
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
      out.write("<div id=\"main\">\n");
      out.write("<div id=\"homegrid\">\n");
      out.write("<table align=\"left\">\n");
      out.write("  <tr>\n");
      out.write("\n");
      out.write(" \n");
      out.write("              <td>\n");
      out.write("    <div class=\"homeanchor\">\n");
      out.write("    <a href=\"viewcustumers.jsp\"><img src=\"homegrid/viewstore.png\" class=\"homegrid\"/><br />\n");
      out.write("Total Custumers(<!--?php $sql=mysql_query(\"select * from custumers where user_id='\".$_SESSION['user'].\"'\"); $num=mysql_num_rows($sql); echo $num;?-->)</div></a> </td>\n");
      out.write("   \n");
      out.write("              <td>\n");
      out.write("    <div class=\"homeanchor\">\n");
      out.write("    <a href=\"cll.jsp\"><img src=\"homegrid/washicon.png\" class=\"homegrid\"/><br />\n");
      out.write("Confirmed List(\n");
      out.write("      (<!--?php $sql=mysql_query(\"select * from invoice_list where user_id='\".$_SESSION['user'].\"' and confirm_status=1\"); $num=mysql_num_rows($sql); echo $num;?-->)</a></div> </td>\n");
      out.write("   \n");
      out.write("   \n");
      out.write("   \n");
      out.write("              <td>\n");
      out.write("    <div class=\"homeanchor\">\n");
      out.write("    <a href=\"wc.jsp\"><img src=\"homegrid/viewcustomers.png\" class=\"homegrid\"/><br />\n");
      out.write(" Wrong Count(\n");
      out.write("     (<!--?php $sql=mysql_query(\"select * from invoice_list where user_id='\".$_SESSION['user'].\"' and confirm_status=2\"); $num=mysql_num_rows($sql); echo $num;?-->)</a></div> </td>\n");
      out.write("      \n");
      out.write("        <td>\n");
      out.write("    <div class=\"homeanchor\">\n");
      out.write("    <a href=\"admincl.jsp\"><img src=\"homegrid/confirmlist.png\" class=\"homegrid\"/><br />\n");
      out.write(" Pending List(\n");
      out.write("      <!--?php $sql=mysql_query(\"select * from invoice_list  where user_id='\".$_SESSION['user'].\"' and confirm_status=0\"); $num=mysql_num_rows($sql); echo $num;?-->)</a></div> </td>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("        <td>\n");
      out.write("    <div class=\"homeanchor\">\n");
      out.write("    <a href=\"adminpro.jsp\"><img src=\"homegrid/profile.png\" class=\"homegrid\"/><br />\n");
      out.write("  My profile</a></div> </td>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("      \n");
      out.write("        <td>\n");
      out.write("    <div class=\"homeanchor\">\n");
      out.write("    <a href=\"del.jsp\"><img src=\"homegrid/nonconfirm.png\" class=\"homegrid\"/><br />\n");
      out.write("  TotalDelivered(\n");
      out.write("     <!--?php $sql=mysql_query(\"select * from invoice_list where user_id='\".$_SESSION['user'].\"' and confirm_status=3\"); $num=mysql_num_rows($sql); echo $num;?--> ) </a></div> </td>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("\n");
      out.write("        <td>\n");
      out.write("    <div class=\"homeanchor\">\n");
      out.write("    <a href=\"cc.jsp\"><img src=\"homegrid/pendinglist.png\" class=\"homegrid\"/><br />\n");
      out.write("   Pending Deliveries(\n");
      out.write("     <!--?php $sql=mysql_query(\"select * from invoice_list where user_id='\".$_SESSION['user'].\"' and confirm_status!=3 and delivery_date<curdate()\"); $num=mysql_num_rows($sql); echo $num;?-->)</a></div> </td>\n");
      out.write("       \n");
      out.write("        <td>\n");
      out.write("    <div class=\"homeanchor\">\n");
      out.write("    <a href=\"viewinvoices.jsp\"><img src=\"homegrid/viewlist.png\" class=\"homegrid\"/><br />\n");
      out.write("    Total Invoices(<!--?php $sql=mysql_query(\"select * from invoice_list where user_id='\".$_SESSION['user'].\"'\"); $num=mysql_num_rows($sql); echo $num;?-->)</a></div> </td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("      <td>\n");
      out.write("    <div class=\"homeanchor\">\n");
      out.write("    <a href=\"#\"><img src=\"homegrid/reports.png\" class=\"homegrid\"/><br />\n");
      out.write("    Reports</a></div> \n");
      out.write("    </td>\n");
      out.write("    <td>\n");
      out.write("    <div class=\"homeanchor\">\n");
      out.write("    <a href=\"#\"><img src=\"homegrid/settings.png\" class=\"homegrid\"/><br />\n");
      out.write("    Settings</a></div> \n");
      out.write("    </td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("<table align=\"left\">\n");
      out.write("  <tr>\n");
      out.write("    <td><h3>Account overview</h3></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td><div class=\"accounthead\">User :</div> <!--?php echo $_SESSION['fname'];?--></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td><div class=\"accounthead\">Your last visit was on : </div><!--?php echo $_SESSION['lastlogin'];?--> </strong> </td>\n");
      out.write("  <tr>\n");
      out.write("    <td><div class=\"accounthead\">From IP : </div><!--?php echo $_SESSION['ip'];?--> </td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
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
