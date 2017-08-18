package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class addlocation_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/connection.jsp");
    _jspx_dependants.add("/includes/header.jsp");
    _jspx_dependants.add("/includes/adminlistt.jsp");
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

      out.write('\n');
 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/febrinz","root","pass");
    Statement st=con.createStatement();
    

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
      out.write("\t\t\t\t\tdocument.getElementById('addu').style.display=\"block\";\n");
      out.write("                                        document.getElementById('disploc').style.display=\"none\";\n");
      out.write("                                        document.getElementById('delloc').style.display=\"none\";\n");
      out.write("                                        \n");
      out.write("\t\t\t}\n");
      out.write("                        function del()\n");
      out.write("\t\t\t{\n");
      out.write("                                        document.getElementById('delloc').style.display=\"block\";\n");
      out.write("\t\t\t\t\tdocument.getElementById('addu').style.display=\"none\";\n");
      out.write("                                        document.getElementById('disploc').style.display=\"none\";\n");
      out.write("                                        \n");
      out.write("\t\t\t}\n");
      out.write("\t\t\tfunction ok()\n");
      out.write("\t\t\t{\n");
      out.write("                                document.getElementById('disploc').style.display=\"block\";\n");
      out.write("\t\t\t\tdocument.getElementById('addu').style.display=\"none\";\n");
      out.write("                                document.getElementById('delloc').style.display=\"none\";\n");
      out.write("                                \n");
      out.write("\t\t\t}\n");
      out.write("                        \n");
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
      out.write("<script language=\"javascript\" type=\"text/javascript\">\n");
      out.write("function getXMLHTTP() { //fuction to return the xml http object\n");
      out.write("\n");
      out.write("\t\tvar xmlhttp=false;\t\n");
      out.write("\t\ttry{\n");
      out.write("\t\t\txmlhttp=new XMLHttpRequest();\n");
      out.write("\t\t}\n");
      out.write("\t\tcatch(e)\t{\t\t\n");
      out.write("\t\t\ttry{\t\t\t\n");
      out.write("\t\t\t\txmlhttp= new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\tcatch(e){\n");
      out.write("\t\t\t\ttry{\n");
      out.write("\t\t\t\txmlhttp = new ActiveXObject(\"Msxml2.XMLHTTP\");\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t\tcatch(e1){\n");
      out.write("\t\t\t\t\txmlhttp=false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t}\n");
      out.write("\t\t}\n");
      out.write("\t\t \t\n");
      out.write("\t\treturn xmlhttp;\n");
      out.write("    }\n");
      out.write("\t\n");
      out.write("\tfunction getState(countryId) {\t\t\n");
      out.write("\t\n");
      out.write("\t\tvar strURL=\"findState.php?country=\"+countryId;\n");
      out.write("\t\tvar req = getXMLHTTP();\n");
      out.write("\t\t\n");
      out.write("\t\tif (req) {\n");
      out.write("\t\t\t\n");
      out.write("\t\t\treq.onreadystatechange = function() {\n");
      out.write("\t\t\t\tif (req.readyState == 4) {\n");
      out.write("\t\t\t\t\t// only if \"OK\"\n");
      out.write("\t\t\t\t\tif (req.status == 200) {\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\tdocument.getElementById('statediv').innerHTML=req.responseText;\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t} else {\n");
      out.write("\t\t\t\t\t\talert(\"There was a problem while using XMLHTTP:\\n\" + req.statusText);\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t}\t\t\t\t\n");
      out.write("\t\t\t}\t\t\t\n");
      out.write("\t\t\treq.open(\"GET\", strURL, true);\n");
      out.write("\t\t\treq.send(null);\n");
      out.write("\t\t}\t\t\n");
      out.write("\t}\n");
      out.write("        \n");
      out.write("        function dellocation()\n");
      out.write("        {\n");
      out.write("          int i = st.executeUpdate(\"delete from location where location_name=\"+lc);\n");
      out.write("    if (i != 0) {\n");
      out.write("        response.sendRedirect(\"jdbcData.jsp\");\n");
      out.write("    } else {\n");
      out.write("        out.print(\"Data not deleted successfully\");\n");
      out.write("    }\n");
      out.write("        }\n");
      out.write("\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");

    
    if ((session.getAttribute("username")== null)||(session.getAttribute("username")==""))
    {
        
     
 
      out.write("\n");
      out.write(" You are Not Logged in <br/>\n");
      out.write(" <a href=\"index.html\"> Please Login</a>\n");
      out.write(" ");
}
     else{
 
      out.write("\n");
      out.write("             welcome ");
      out.print(session.getAttribute("username"));
      out.write("\n");
      out.write("             <a href=\"logout.jsp\">Logout</a>\n");
      out.write(" ");
 
 }
    
      out.write("\n");
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
      out.write("    <a href=\"logout.jsp\"><img src=\"icons/logoutiic.png\" class=\"notifications\"></a>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"nav\">\n");
      out.write("    ");
      out.write("<ul>\n");
      out.write("    <li><a href=\"admindeshboard.jsp\">Dashboard</a></li>\n");
      out.write("  <li><a href=\"#\">Create Master <img src=\"icons/uptriangle.png\" class=\"dropicon\"></a>\n");
      out.write("    <ul>\n");
      out.write("      <li><a href=\"addlocation.jsp\">Add Location</a></li>\n");
      out.write("      <li><a href=\"addbranch.jsp\">Add Branch</a></li>\n");
      out.write("      <li><a href=\"addstore.jsp\">Add Store</a></li>\n");
      out.write("      <!--li><a href=\"addwash.jsp\">Add Wash</a></li-->\n");
      out.write("      <li><a href=\"additemlist.jsp\">Add Item</a></li>\n");
      out.write("    </ul>\n");
      out.write("  </li>\n");
      out.write("    <li><a href=\"custumersadmin.jsp\">View Custumers </a>\n");
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
      out.write("        <div id=\"delloc\" style=\"display: none\">\n");
      out.write("    <form action=\"\">\n");
      out.write("  <table width=\"100%\" border=\"1px\" id=\"myTable\" class=\"tablesorter\" >\n");
      out.write("      <tr class=\"trheads\">\n");
      out.write("        <td>S.No</td>\n");
      out.write("        <td>Location Name</td> \n");
      out.write("             <td>Action</td> \n");
      out.write("         </tr>\n");
      out.write("    <tbody>\n");
      out.write("      \n");

    ResultSet r= st.executeQuery("Select * from location ");
    int i=1;
    while(r.next())
{ 

      out.write("\n");
      out.write("\n");
      out.write("<form method=\"post\" action=\"dellocation.jsp\">\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"align-center\"><input type=\"text\" name=\"location_id\" value=");
      out.print(r.getInt("location_id"));
      out.write("</td>\n");
      out.write("        <td><input type=\"text\" name=\"location_name\" value=");
      out.print(r.getInt("location_name"));
      out.write("</td>\n");
      out.write("        \n");
      out.write("         <td><input type=\"submit\" name=\"delete\" value=\"Delete\"/></td>\n");
      out.write("      </tr>   \n");
      out.write("</form>\n");
      out.write("   ");

       i++;
 }

      out.write("\n");
      out.write("    </tbody>\n");
      out.write("  </table>\n");
      out.write("    <table align=\"right\" style=\"margin-bottom:10px;\">\n");
      out.write("  <tr>\n");
      out.write("    <td><input type=\"button\" onclick=\"ok()\" name=\"remove\" value=\"Done\"></td>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("  </tr>\n");
      out.write("    </table>\n");
      out.write("</form>\n");
      out.write("    </div>\n");
      out.write("    <div>\n");
      out.write("<form action=\"\" id=\"disploc\">\n");
      out.write("  <table width=\"100%\" border=\"1px\" id=\"myTable\" class=\"tablesorter\" >\n");
      out.write("      <tr class=\"trheads\">\n");
      out.write("        <td>S.No</td>\n");
      out.write("        <td>Location Name</td> \n");
      out.write("         </tr>\n");
      out.write("    <tbody>\n");
      out.write("      \n");

      ResultSet rs= st.executeQuery("Select * from location ");
    i=1;
      while(rs.next())
{
      out.write("\n");
      out.write(" \n");
      out.write("      <tr>\n");
      out.write("        <td class=\"align-center\">");
      out.print( i );
      out.write("</td>\n");
      out.write("        <td>");
      out.print( rs.getString(2));
      out.write("</td>\n");
      out.write("        \n");
      out.write("      </tr>\n");
      out.write("   ");
 i++;
 }

      out.write("\n");
      out.write("    </tbody>\n");
      out.write("  </table>\n");
      out.write("      <table align=\"right\" style=\"margin-bottom:10px;\">\n");
      out.write("  <tr>\n");
      out.write("    <td><input type=\"button\" onclick=\"show()\" name=\"remove\" value=\"Add Location\"></td>\n");
      out.write("    <td><input type=\"button\" onclick=\"del()\" name=\"remove\" value=\"Remove\">\n");
      out.write("            <td><a href=\"addbranch.jsp\"><input type=\"button\" name=\"next\" value=\"Next\"></a></td>\n");
      out.write("  </tr>\n");
      out.write("  </tr>\n");
      out.write("  \n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("   \n");
      out.write("    \n");
      out.write("  \n");
      out.write("<div id=\"addu\" style=\"display:none;\">\n");
      out.write("  <form action=\"addloc.jsp\" METHOD=\"POST\">\n");
      out.write("    <table border=\"1px\" width=\"100%\" style=\"margin-bottom:10px;\">\n");
      out.write("      <tr class=\"trheads\">\n");
      out.write("        <td>Location Name</td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("        <td>\n");
      out.write("        <input type=\"text\" name=\"location\" placeholder=\"Location Name\" required=\"true\"/>\n");
      out.write("        </td>\n");
      out.write("      <tr>\n");
      out.write("        <td><input type=\"submit\" name=\"submit\" value=\"submit\"/></td>\n");
      out.write("      </tr>\n");
      out.write("    </table>\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write(" <div id=\"containerrr6\" style=\"float:left; width:100%;\"></div>\n");
      out.write(" ");
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
