package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class addstore_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("\n");
      out.write('\n');
 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fabrinz","root","pass");
    Statement st=con.createStatement();
    

      out.write("\n");
      out.write("<head>\n");
      out.write("<title>Welcome to FabRinz...</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/global.css\"/>\n");
      out.write("<script type=\"text/javascript\" src=\"jquery.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"EditDeletepage.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"pagination.css\" />\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t\t\t$(function() {\n");
      out.write("\t\t\t$('.password').pstrength();\n");
      out.write("\t\t\t});\n");
      out.write("     \n");
      out.write("     \n");
      out.write("     var xmlHttp  \n");
      out.write("      var xmlHttp\n");
      out.write("      function showloc(str){\n");
      out.write("      if (typeof XMLHttpRequest != \"undefined\"){\n");
      out.write("      xmlHttp= new XMLHttpRequest();\n");
      out.write("      }\n");
      out.write("      else if (window.ActiveXObject){\n");
      out.write("      xmlHttp= new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("      }\n");
      out.write("      if (xmlHttp==null){\n");
      out.write("      alert(\"Browser does not support XMLHTTP Request\")\n");
      out.write("      return;\n");
      out.write("      } \n");
      out.write("      var url=\"location.jsp\";\n");
      out.write("      url +=\"?count=\" +str;\n");
      out.write("      xmlHttp.onreadystatechange = stateChange;\n");
      out.write("      xmlHttp.open(\"GET\", url, true);\n");
      out.write("      xmlHttp.send(null);\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      function stateChange(){   \n");
      out.write("      if (xmlHttp.readyState==4 || xmlHttp.readyState==\"complete\"){   \n");
      out.write("      document.getElementById(\"state\").innerHTML=xmlHttp.responseText   \n");
      out.write("      }   \n");
      out.write("      }\n");
      out.write("\n");
      out.write("      function stateChange1(){   \n");
      out.write("      if (xmlHttp.readyState==4 || xmlHttp.readyState==\"complete\"){   \n");
      out.write("      document.getElementById(\"city\").innerHTML=xmlHttp.responseText   \n");
      out.write("      }   \n");
      out.write("      }\n");
      out.write("      \n");
      out.write("        </script>\n");
      out.write("<script>\n");
      out.write("\t\t\tfunction addstore()\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\t\tdocument.getElementById('addstore').style.display=\"block\";\n");
      out.write("                                        document.getElementById('dispstore').style.display=\"none\";\n");
      out.write("                                        document.getElementById('delstore').style.display=\"none\";\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\tfunction dispstore()\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\t\tdocument.getElementById('addstore').style.display=\"none\";\n");
      out.write("                                        document.getElementById('dispstore').style.display=\"block\";\n");
      out.write("                                        document.getElementById('delstore').style.display=\"none\";\n");
      out.write("\t\t\t}\n");
      out.write("                        function delstore()\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\t\tdocument.getElementById('addstore').style.display=\"none\";\n");
      out.write("                                        document.getElementById('dispstore').style.display=\"none\";\n");
      out.write("                                        document.getElementById('delstore').style.display=\"block\";\n");
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
      out.write("<td style=\"color: sienna; font-size: 18px;\">\n");
      out.write("    ");
      out.print(session.getAttribute("storename") );
      out.write(" </td><td><a href=\"logout.jsp\"><img src=\"icons/logoutiic.png\" class=\"notifications\"></a>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div id=\"nav\"> \n");
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
      out.write("  \n");
      out.write("</div>\n");
      out.write("<div id=\"main\">\n");
      out.write(" <div id=\"dispstore\" >\n");
      out.write("     \n");
      out.write("       <table border=\"1px\" width=\"100%\" style=\"margin-bottom:10px;\">\n");
      out.write("        <tr class=\"trheads\">\n");
      out.write("          <td>S.No.</td>\n");
      out.write("           <td>Store Name</td>\n");
      out.write("          <td>Owner Name</td>\n");
      out.write("          <td>Email</td>\n");
      out.write("           <td>Mobile No</td>\n");
      out.write("            <td>Location</td>\n");
      out.write("                  <td>Branch</td>\n");
      out.write("                    </tr>\n");
      out.write("     ");
 int i=1;
         ResultSet rs= st.executeQuery("Select * from store where usertype=2");
    while(rs.next())
{
      out.write("\n");
      out.write("           <tr>\n");
      out.write("               <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("          <td>");
      out.print(rs.getString("store_name"));
      out.write(" </td>\n");
      out.write("          <td>");
      out.print(rs.getString("owner_name"));
      out.write(" </td>\n");
      out.write("          <td>");
      out.print(rs.getString("email"));
      out.write(" </td>\n");
      out.write("          <td>");
      out.print(rs.getString("mobile"));
      out.write(" </td>\n");
      out.write("          <td>");
      out.print(rs.getString("location_name"));
      out.write(" </td>\n");
      out.write("          <td>");
      out.print(rs.getString("branch_name"));
      out.write(" </td>\n");
      out.write("         </tr>\n");
      out.write("          ");
 i++;
          }

      out.write("\n");
      out.write("       </table>\n");
      out.write("   <BR/>\n");
      out.write("<table align=\"right\" style=\"margin-bottom:10px;\">\n");
      out.write("<tr>\n");
      out.write("    <td><input type=\"button\" onclick=\"addstore()\" name=\"add\" value=\"Add Store\"></td>\n");
      out.write("    <td><input type=\"button\" onclick=\"delstore()\" name=\"remove\" value=\"Remove\">\n");
      out.write("            <td><a href=\"add_item.jsp\"><input type=\"button\" name=\"next\" value=\"Next\"/></a></td>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</div>\n");
      out.write("<div id=\"addstore\" style=\"display:none;\">\n");
      out.write("      <form action=\"addstore_jsp.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("      <table border=\"1px\" width=\"100%\" style=\"margin-bottom:10px;\">\n");
      out.write("        <tr class=\"trheads\">\n");
      out.write("          <td>Store Name</td>\n");
      out.write("          <td>Owner Name</td>\n");
      out.write("          <td>Email</td>\n");
      out.write("            <td>Password</td>\n");
      out.write("              <td>Mobile No</td>\n");
      out.write("                 <td>Select Location</td>\n");
      out.write("                  <td>Select Branch</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                    <td><input type=\"text\" name=\"storename\" placeholder=\"Store Name\" required=\"true\"/></td>\n");
      out.write("          <td>\n");
      out.write("            <input type=\"text\" name=\"ownername\" placeholder=\"Owner Name\" required=\"true\"/>\n");
      out.write("          </td>\n");
      out.write("          <td>\n");
      out.write("            <input type=\"email\" name=\"em\" placeholder=\"Example@gmail.com\" required=\"true\"/></td>\n");
      out.write("        <td>\n");
      out.write("            <input type=\"password\" name=\"pass\" placeholder=\"Password(6-8 digit)\" required=\"true\"/></td>\n");
      out.write("        <td>\n");
      out.write("            <input type=\"tel\" name=\"mob\" placeholder=\"+91\" required=\"true\"/></td>\n");
      out.write("                    <td>\n");
      out.write("  \n");
      out.write("   <select name=\"loc\" id=\"selectpt\" onchange=\"showloc(this.value)\" >\n");
      out.write("        <option>--Select Location--</option>\n");
      out.write(" ");
     ResultSet rs1= st.executeQuery("Select * from location");
        while(rs1.next())
{
      out.write("\n");
      out.write(" \n");
      out.write("<option value=\"");
      out.print( rs1.getString("location_id"));
      out.write('"');
      out.write('>');
      out.print(rs1.getString("location_name"));
      out.write("</option>\n");
      out.write("      ");

 }

      out.write("\n");
      out.write("              \n");
      out.write("</select>\n");
      out.write("          </td>\n");
      out.write("          \n");
      out.write("   <td id=\"statediv\">\n");
      out.write("            <select name=\"bran\" id=\"branch_name\" placeholder=\"Branch Name\">\n");
      out.write("                <option value=\"-1\"></option>\n");
      out.write("            </select></td>\n");
      out.write("        </tr>\n");
      out.write("               \n");
      out.write("      </table>\n");
      out.write("            <input type=\"submit\" name=\"submit\" value=\"submit\"/>\n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write(" <div id=\"delstore\" >\n");
      out.write("     \n");
      out.write("       <table border=\"1px\" width=\"100%\" style=\"margin-bottom:10px;\">\n");
      out.write("        <tr class=\"trheads\">\n");
      out.write("          <td>S.No.</td>\n");
      out.write("           <td>Store Name</td>\n");
      out.write("          <td>Owner Name</td>\n");
      out.write("          <td>Email</td>\n");
      out.write("           <td>Mobile No</td>\n");
      out.write("            <td>Location</td>\n");
      out.write("             <td>Branch</td>\n");
      out.write("             <td>Action</td>\n");
      out.write("                    </tr>\n");
      out.write("     ");
 i=1;
         ResultSet r= st.executeQuery("Select * from store where usertype=2");
    while(r.next())
{
    String uid=rs.getString("uid");

      out.write("\n");
      out.write("           <tr>\n");
      out.write("               <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("          <td>");
      out.print(r.getString("store_name"));
      out.write(" </td>\n");
      out.write("          <td>");
      out.print(r.getString("owner_name"));
      out.write(" </td>\n");
      out.write("          <td>");
      out.print(r.getString("email"));
      out.write(" </td>\n");
      out.write("          <td>");
      out.print(r.getString("mobile"));
      out.write(" </td>\n");
      out.write("          <td>");
      out.print(r.getString("location_name"));
      out.write(" </td>\n");
      out.write("          <td>");
      out.print(r.getString("branch_name"));
      out.write(" </td>\n");
      out.write("          <td><a href=\"delstore.jsp?uid=");
      out.print(uid);
      out.write("\" onclick=\"return ConfirmDelete()\">Delete</a></td>\n");
      out.write("           </tr>\n");
      out.write("          ");
 i++;
          }

      out.write("\n");
      out.write("   </table>\n");
      out.write("   <BR/>\n");
      out.write("<table align=\"right\" style=\"margin-bottom:10px;\">\n");
      out.write("<tr>\n");
      out.write("    <td><input type=\"button\" onclick=\"dispstore()\" name=\"done\" value=\"Done\"/></td>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</div>           \n");
      out.write("</div>\n");
      out.write("<div id=\"containerrr4\" style=\"float:left; width:100%;\"></div>\n");
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
