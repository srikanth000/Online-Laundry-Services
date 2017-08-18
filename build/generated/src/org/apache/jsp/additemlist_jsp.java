package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class additemlist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
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
      out.write("\t\t\t\t\tdocument.getElementById('additemlist').style.display=\"block\";\n");
      out.write("                                        document.getElementById('dispitemlist').style.display=\"none\";\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t\n");
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
      out.write("\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

    
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
      out.write("  ");
      out.write("<ul>\n");
      out.write("    <li><a href=\"admindeshboard.jsp\">Dashboard</a></li>\n");
      out.write("  <li><a href=\"#\">Create Master <img src=\"icons/uptriangle.png\" class=\"dropicon\"></a>\n");
      out.write("    <ul>\n");
      out.write("      <li><a href=\"addlocation.jsp\">Add Location</a></li>\n");
      out.write("      <li><a href=\"addbranch.jsp\">Add Branch</a></li>\n");
      out.write("      <li><a href=\"addstore.jsp\">Add Store</a></li>\n");
      out.write("      <!--li><a href=\"addwash.jsp\">Add Wash</a></li-->\n");
      out.write("      <li><a href=\"additem.jsp\">Add Item</a></li>\n");
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
      out.write("    <div id=\"dispitemlist\" style=\"display: block;\">\n");
      out.write("  <form action=\"\" METHOD=\"POST\">\n");
      out.write("    <table border=\"1px\" width=\"100%\" style=\"margin-bottom:10px;\">\n");
      out.write("      <tr class=\"trheads\">\n");
      out.write("        <td>S.No.</td>\n");
      out.write("          <td>Item Name</td>\n");
      out.write("      </tr>\n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/febrinz","root","pass");
    Statement st=con.createStatement();
    ResultSet r= st.executeQuery("Select * from itemlist ");
    while(r.next())
        
{ int i=0; 
        
      out.write("\n");
      out.write(" \n");
      out.write("      <tr>\n");
      out.write("        <td class=\"align-center\">'\"+i+\"'</td>\n");
      out.write("        <td>");
      out.print( r.getString(1));
      out.write("</td>\n");
      out.write("        <td><input type=\"button\" name=\"delete\" value=\"Delete\"/></td>\n");
      out.write("      </tr>   \n");
      out.write("      \n");
      out.write("   ");

 }

      out.write("\n");
      out.write("      </tr>\n");
      out.write("    </table>\n");
      out.write("  </form>\n");
      out.write("      <table align=\"right\" style=\"margin-bottom:10px;\">\n");
      out.write("  <tr>\n");
      out.write("    <td><input type=\"button\" onclick=\"show()\" name=\"remove\" value=\"Add Item\"></td>\n");
      out.write("      </tr>\n");
      out.write("  </tr>\n");
      out.write("  \n");
      out.write("</table>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("<div id=\"additemlist\" style=\"display:none;\">\n");
      out.write("  <form action=\"add_item_list.jsp\" METHOD=\"POST\">\n");
      out.write("    <table border=\"1px\" width=\"100%\" style=\"margin-bottom:10px;\">\n");
      out.write("      <tr class=\"trheads\">\n");
      out.write("        <td>Item Name</td>\n");
      out.write("      </tr>\n");
      out.write("        <tr>\n");
      out.write("        <td>\n");
      out.write("        <input type=\"text\" name=\"Item_Name\" placeholder=\"Item Name\" required=\"true\"/>\n");
      out.write("        </td>\n");
      out.write("        </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td><input type=\"submit\" name=\"submit\" value=\"Submit\"/></td>\n");
      out.write("      </tr>\n");
      out.write("    </table>\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write(" <div id=\"containerrr6\" style=\"float:left; width:100%;\"></div>\n");
      out.write("\n");
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
