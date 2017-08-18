package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class viewinvoice_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connection.jsp");
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
      out.write('\n');
 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fabrinz","root","pass");
    Statement st=con.createStatement();
    

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("\n");
      out.write("  <HEAD>\n");
      out.write("       <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Welcome to FabRinz...</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/global.css\"/>\n");
      out.write("<script type=\"text/javascript\" src=\"jquery.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"EditDeletepage.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"pagination.css\" />\n");
      out.write("   \n");
      out.write("  </HEAD>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write(" <div id=\"main\" >\n");
      out.write("     <div id=\"detail\" style=\"width: 90%; height: auto; margin-left: 5%; margin-right: 5%; border: 1px solid black; padding: 5px;\">\n");
      out.write("   ");

   String orderid= "2";
ResultSet rr=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rr.next())
{  String sid=rr.getString("sid");
    ResultSet rsr=st.executeQuery("select * from store where uid='"+sid+"'");
if(rsr.next())
{  

      out.write("\n");
      out.write("      <table width=\"100%\"  id=\"myTable\" class=\"tablesorter\" >\n");
      out.write("                                 <tr>\n");
      out.write("                                     <td ><br/>\n");
      out.write("                                         <h1>Store Details: </h1>\n");
      out.write("                                         <h1>");
      out.print(rsr.getString("store_name"));
      out.write("</h1>\n");
      out.write("                                         ");
      out.print(rsr.getString("owner_name"));
      out.write(",<br/>\n");
      out.write("                                         ");
      out.print(rsr.getString("branch_name"));
      out.write(" - ");
      out.print(rsr.getString("location_name"));
      out.write(",<br/>\n");
      out.write("                                         Email : fabrinzlaundryservices@gmail.com\n");
      out.write("                                         \n");
      out.write("                                     </td>\n");
      out.write("                                         <td align=\"right\"><img src=\"img/printlogo.png\"/></td>\n");
      out.write("                                 </tr>\n");
      out.write("</table>   \n");

}
}

      out.write("\n");
      out.write("            \n");


ResultSet rs=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rs.next())
{

      out.write("\n");
      out.write("<h1 align=\"center\">Bill/Memo</h1>\n");
      out.write("\n");
      out.write("                        <table width=\"100%\" border=\"1px\" id=\"myTable\" class=\"tablesorter\" >\n");
      out.write("                                 <tr>\n");
      out.write("                                     <td >Order No. : &nbsp;&nbsp;    ");
      out.print(rs.getString("orderid"));
      out.write("</td>\n");
      out.write("                                     <td >Customer Name   :&nbsp;&nbsp; &nbsp;");
      out.print(rs.getString("custname"));
      out.write("</td>\n");
      out.write("                                 </tr>\n");
      out.write("                                 <tr>\n");
      out.write("                                      <td >Location.    : &nbsp;&nbsp;  ");
      out.print(rs.getString("location"));
      out.write("</td>\n");
      out.write("                                 <td >Address.    : &nbsp;&nbsp;  ");
      out.print(rs.getString("address"));
      out.write(" &nbsp;, ");
      out.print(rs.getString("pin") );
      out.write("</td>\n");
      out.write("                                 </tr>\n");
      out.write("                               <tr>\n");
      out.write("                                      <td >Email.    : &nbsp;&nbsp;  ");
      out.print(rs.getString("email"));
      out.write("</td>\n");
      out.write("                                  <td >Contact No.   : &nbsp;&nbsp; ");
      out.print(rs.getString("mobile") );
      out.write(" </td>\n");
      out.write("                               </tr>\n");
      out.write("                               <tr>\n");
      out.write("                                      \n");
      out.write("                                  \n");
      out.write("                               </tr>\n");
      out.write("                               \n");
      out.write("                                   \n");
      out.write("         ");

  }

      out.write("\n");
      out.write("       \n");
      out.write("                        </table><h1>Items :</h1>\n");
      out.write("\n");
      out.write("<table width=\"100%\" border=\"1px\" id=\"myTable\" class=\"tablesorter\" >\n");
      out.write("                                          <tr class=\"trheads\">\n");
      out.write("                                                <td>S.No.</td>\n");
      out.write("                                                <td>ITEM</td>\n");
      out.write("                                                <td>ACTIVITY</td>\n");
      out.write("\t\t\t\t\t\t<td>RATE</td>\n");
      out.write("\t\t\t\t\t\t<td>QUANTITY</td>\n");
      out.write("\t\t\t\t\t\t<td>TOTAL</td>\n");
      out.write("                                          </tr>\n");
      out.write("                                          \n");
      out.write("                                          ");

                                              int i=1;
                                                    ResultSet rss=st.executeQuery("select * from orderlistitem where orderid='"+orderid+"'");
                                                    while(rss.next())
                                                 {
                                                
      out.write("\n");
      out.write("                                                <tr>\n");
      out.write("                                                    <td style=\"text-align: center;\">");
      out.print(i);
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rss.getString(1));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rss.getString(2));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rss.getString(3));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rss.getString(4));
      out.write("</td>\n");
      out.write("                                                    <td>");
      out.print(rss.getString(5));
      out.write("</td>\n");
      out.write("                                                </tr>\n");
      out.write("                                                ");
 i++;}
      out.write("\n");
      out.write("                                      </table><br/>\n");
      out.write("                                     ");

ResultSet rs1=st.executeQuery("select * from orderlist where orderid='"+orderid+"'");
if(rs1.next())
{

      out.write(" \n");
      out.write("                                      \n");
      out.write("                                   <table width=\"100%\" border=\"1px\" id=\"myTable\" class=\"tablesorter\" >\n");
      out.write("                                  \n");
      out.write("                                      <tr><td >Total Qty : ");
      out.print(rs1.getString("tqty"));
      out.write("</td>  \n");
      out.write("                                    <td >Total Amount : ");
      out.print(rs1.getString("tamount"));
      out.write(" </td>\n");
      out.write("                                      </tr>\n");
      out.write("                                      <tr>\n");
      out.write("                                    <td >Order Status : ");
      out.print(rs1.getString("orderstatus"));
      out.write("</td>\n");
      out.write("                                     <td >Payment Status : ");
      out.print(rs1.getString("paystatus"));
      out.write("</td>\n");
      out.write("                                      </tr>\n");
      out.write("                                   \n");
      out.write("         ");

  }

      out.write("\n");
      out.write("       \n");
      out.write("                        </table>\n");
      out.write("<br/>\n");
      out.write("<table align=\"right\" style=\"margin-bottom:10px;\">\n");
      out.write("<tr>\n");
      out.write("    Regards, <br/>\n");
      out.write("    Fabrinz- Laundry Services.\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("<p>Note : This is electronic generated bill. There are no need for seel & signature's.</p>\n");
      out.write("        </div>\n");
      out.write(" \n");
      out.write("     <center>\n");
      out.write("           <input type=\"button\" id=\"print\" value=\"PRINT\" onclick=\"window.print()\">\n");
      out.write("\n");
      out.write("           </center>   \n");
      out.write("                            \n");
      out.write("</body>\n");
      out.write("\n");
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
