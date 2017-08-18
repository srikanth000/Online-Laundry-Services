package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class fabrinz_005fcustm_005forderhistory_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/connection.jsp");
    _jspx_dependants.add("/header-custm-deshboard.jsp");
    _jspx_dependants.add("/custm_side_nevbar.jsp");
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
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fabrinz","root","pass");
    Statement st=con.createStatement();
    

      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("        \n");
      out.write("<html class=\"no-js\" lang=\"en\"><!--<![endif]-->\n");
      out.write("<!-- the \"no-js\" class is for Modernizr. --> \n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->\n");
      out.write("\t\n");
      out.write("\t<!-- Important stuff for SEO, don't neglect. (And don't dupicate values across your site!) -->\n");
      out.write("\t<title>My Account</title>\n");
      out.write("\t<meta name=\"author\" content=\"\" />\n");
      out.write("\t<meta name=\"description\" content=\"\" />\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/deshboard.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/ui.css\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\n");
      out.write(" <link rel=\"stylesheet\" type=\"text/css\" href=\"css/jquery.datetimepicker.css\"/>\n");
      out.write("<script type=\"text/javascript\" src=\"js/custmAccount.js\"></script>\n");
      out.write("<script>\n");
      out.write("    function shownull()\n");
      out.write("    {\n");
      out.write("        document.getElementById('dispnull').style.display=\"block\";\n");
      out.write("        document.getElementById('disppen').style.display=\"none\";\n");
      out.write("        document.getElementById('dispcomp').style.display=\"none\";\n");
      out.write("    }\n");
      out.write("    function showpen()\n");
      out.write("    {\n");
      out.write("        document.getElementById('dispnull').style.display=\"none\";\n");
      out.write("        document.getElementById('disppen').style.display=\"block\";\n");
      out.write("        document.getElementById('dispcomp').style.display=\"none\";\n");
      out.write("    }\n");
      out.write("    function showcomp()\n");
      out.write("    {\n");
      out.write("        document.getElementById('dispnull').style.display=\"none\";\n");
      out.write("        document.getElementById('disppen').style.display=\"none\";\n");
      out.write("        document.getElementById('dispcomp').style.display=\"block\";\n");
      out.write("    }\n");
      out.write("    </script>\n");
      out.write("        <!-- Facebook Pixel Code -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- End Facebook Pixel Code --></head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    ");
      out.write("<header class='clearfix'>\n");
      out.write("\t\t<div class='logo'>\n");
      out.write("                    <a href=\"index.jsp\"><img src=\"images/log.png\" /></a><span class='tagline'></span>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class='fr'>\n");
      out.write("\t\t\t<div class='clearfix mvspace'>\n");
      out.write("\t\t\t\t<div class='fl'>\n");
      out.write("\t\t\t\t\t<div class='clearfix admimg'>\n");
      out.write("\t\t\t\t\t<!--<img src='images/icon/adming.gif' class='fl rndimg shspace' />-->\n");
      out.write("\t\t\t\t\t<div class='fl'>\n");
      out.write("\t\t\t\t\t\t<span class='blk svspace'><b class='gtxt'>");
      out.print(session.getAttribute("Name"));
      out.write("</b></span>\n");
      out.write("\t\t\t\t\t\t<!--<small class='blk'>Chennai</small>-->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class='fl'>\n");
      out.write("                                    <ul class='horiz pnk' >\n");
      out.write("                                            \n");
      out.write("                                        <li><span class='shspace iblk'><img src='images/icon/notifications.gif' /></span><a href='fabrinz_custm_orderpayment.jsp' style=\"color: #ce0000;\">Notfications</a></li> \n");
      out.write("                                        \n");
      out.write("                                        <li><a href='logout.jsp' style=\"color: #ce0000;\">Logout</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t</header>");
      out.write("\n");
      out.write("\t<section>\n");
      out.write("            ");
      out.write("<aside>\n");
      out.write("\t\t\t<nav>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("                                    <li><span><img src='images/icon/dashboard.png' /></span><a href='fabrinz-custm-deshboard.jsp'>Dashboard</a></li>\n");
      out.write("\t\t\t\t\n");
      out.write("                                    <li><span><img src='images/icon/account.png' /></span><a href='fabrinz_custm_account.jsp'>My Account</a></li>\n");
      out.write("\t\t\t\t<li><span><img src='images/icon/schicon.png' /></span><a href='#'>Schedule a Services</a></li>\n");
      out.write("\t\t\t\t<li><span><img src='images/icon/pckgs.png' /></span><a href='#'>Packages</a></li>\n");
      out.write("\t\t\t\t<li><span><img src='images/icon/wallet.png' /></span><a href='#'>Wallet</a></li>\n");
      out.write("\t\t\t\t<li><span><img src='images/icon/Faq-icon.png' /></span><a href='#'>FAQ's</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t\t</aside>");
      out.write("\n");
      out.write("            \n");
      out.write("            <div > <input type=\"redio\" onclick=\"shownull()\" checked=\"\" value=\"Incomplete Order \"> &nbsp; &nbsp; <input type=\"redio\" onclick=\"showpen()\" value=\"Pending Order \"> &nbsp; &nbsp;<input type=\"redio\" onclick=\"showcomp()\" value=\"Complete Order \"></div>           \n");
      out.write("            <article id=\"dispnull\" >\n");
      out.write("                  <h3>INCOMPLETE ORDER</h3>\n");
      out.write("                     <div id=\"errorMsg\" class=\"message\" > </div>   \n");
      out.write("                     <div class=\"inner\">\n");
      out.write("                                 \n");
      out.write("                         <div class=\"col4 last panel\" style=\"width: 100%; \" >\n");
      out.write("                             <div class=\"panel-body\"> \n");
      out.write("                                <table class=\"table table-bordered table-hover\" width=\"100%\" >\n");
      out.write("\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<th >S.No.</th>\n");
      out.write("\t\t\t\t\t\t\t<th>ORDER ID</th>\n");
      out.write("\t\t\t\t\t\t\t<th>STORE ID</th>\n");
      out.write("                                                        <th>CUSTOMER NAME</th>\n");
      out.write("\t\t\t\t\t\t\t<th>TOTAL QTY</th>\n");
      out.write("\t\t\t\t\t\t\t<th>TOTAL AMOUNT</th>\n");
      out.write("\t\t\t\t\t\t\t<th>PAY STATUS</th>\n");
      out.write("                                                        <th>ORDER STATUS</th>\n");
      out.write("                                                        <th>ACTION</th>\n");
      out.write("                                                        \n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t</thead>\n");
      out.write("                                         ");
 int i=1;
                                  ResultSet rs= st.executeQuery("select* from orderlist where uid='"+session.getAttribute("userid")+"' and orderstatus='null'");
                                  while(rs.next())
                                  {
                                      String sid= rs.getString("sid");
                                      String orderid= rs.getString("orderid");
                              
      out.write("\n");
      out.write("                              <tbody id=\"dataTable\" >\n");
      out.write("                             \n");
      out.write("                        \n");
      out.write("\t\t\t\t\t\t<tr  >\n");
      out.write("\t\t\t\t\t\t<td style=\"border: 1px solid gainsboro; ;\">");
      out.print(i);
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs.getString("orderid"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs.getString("sid"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs.getString("custname"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs.getString("tqty"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs.getString("tamount"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs.getString("paystatus"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs.getString("orderstatus"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\"><a href=\"editorder.jsp?orderid=");
      out.print(orderid);
      out.write("\">Edit</a> &nbsp;/ &nbsp;<a href=\"\">Delete</a> </td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("                                               \n");
      out.write("\t\t\t\t\t</tbody>\n");
      out.write("                                         ");
 i++;
                                                }
                                                
      out.write("\n");
      out.write("\t\t\t\t</table>\n");
      out.write("                             </div>\n");
      out.write("                         </div>\n");
      out.write("                     </div>\n");
      out.write("                                       \n");
      out.write("                    \n");
      out.write("\t\t</article>\n");
      out.write("                 <article id=\"disppen\" style=\"display: none;\">\n");
      out.write("                  <h3>PENDING ORDER.... </h3>\n");
      out.write("                     <div id=\"errorMsg\" class=\"message\" > </div>   \n");
      out.write("                     <div class=\"inner\">\n");
      out.write("                                 \n");
      out.write("                         <div class=\"col4 last panel\" style=\"width: 100%; \" >\n");
      out.write("                             <div class=\"panel-body\"> \n");
      out.write("                                <table class=\"table table-bordered table-hover\" width=\"100%\" >\n");
      out.write("\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<th >S.No.</th>\n");
      out.write("\t\t\t\t\t\t\t<th>ORDER ID</th>\n");
      out.write("\t\t\t\t\t\t\t<th>STORE ID</th>\n");
      out.write("                                                        <th>CUSTOMER NAME</th>\n");
      out.write("\t\t\t\t\t\t\t<th>TOTAL QTY</th>\n");
      out.write("\t\t\t\t\t\t\t<th>TOTAL AMOUNT</th>\n");
      out.write("\t\t\t\t\t\t\t<th>PAY STATUS</th>\n");
      out.write("                                                        <th>ORDER STATUS</th>\n");
      out.write("                                                        <th>ACTION</th>\n");
      out.write("                                                        \n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t</thead>\n");
      out.write("                                         ");
  i=1;
                                  ResultSet rs1= st.executeQuery("select* from orderlist where   orderstatus!='null' or orderstatus!='Complete' and uid='"+session.getAttribute("userid")+"'" );
                                  while(rs1.next())
                                  {
                                      String sid= rs1.getString("sid");
                                      String orderid= rs1.getString("orderid");
                              
      out.write("\n");
      out.write("                              <tbody id=\"dataTable\" >\n");
      out.write("                             \n");
      out.write("                        \n");
      out.write("\t\t\t\t\t\t<tr  >\n");
      out.write("\t\t\t\t\t\t<td style=\"border: 1px solid gainsboro; ;\">");
      out.print(i);
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs1.getString("orderid"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs1.getString("sid"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs1.getString("custname"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs1.getString("tqty"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs1.getString("tamount"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs1.getString("paystatus"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs1.getString("orderstatus"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\"><a href=\"vieworder.jsp?orderid=");
      out.print(orderid);
      out.write("\">View</a> </td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("                                               \n");
      out.write("\t\t\t\t\t</tbody>\n");
      out.write("                                         ");
 i++;
                                                }
                                                
      out.write("\n");
      out.write("\t\t\t\t</table>\n");
      out.write("                             </div>\n");
      out.write("                         </div>\n");
      out.write("                     </div>\n");
      out.write("                                       \n");
      out.write("                    \n");
      out.write("\t\t</article>\n");
      out.write("                \n");
      out.write("                 <article id=\"dispcomp\" style=\"display: none;\">\n");
      out.write("                  <h3>COMPLETE ORDER.... </h3>\n");
      out.write("                     <div id=\"errorMsg\" class=\"message\" > </div>   \n");
      out.write("                     <div class=\"inner\">\n");
      out.write("                                 \n");
      out.write("                         <div class=\"col4 last panel\" style=\"width: 100%; \" >\n");
      out.write("                             <div class=\"panel-body\"> \n");
      out.write("                                <table class=\"table table-bordered table-hover\" width=\"100%\" >\n");
      out.write("\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<th >S.No.</th>\n");
      out.write("\t\t\t\t\t\t\t<th>ORDER ID</th>\n");
      out.write("\t\t\t\t\t\t\t<th>STORE ID</th>\n");
      out.write("                                                        <th>CUSTOMER NAME</th>\n");
      out.write("\t\t\t\t\t\t\t<th>TOTAL QTY</th>\n");
      out.write("\t\t\t\t\t\t\t<th>TOTAL AMOUNT</th>\n");
      out.write("\t\t\t\t\t\t\t<th>PAY STATUS</th>\n");
      out.write("                                                        <th>ORDER STATUS</th>\n");
      out.write("                                                        <th>ACTION</th>\n");
      out.write("                                                        \n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t</thead>\n");
      out.write("                                         ");
  i=1;
                                  ResultSet rs2= st.executeQuery("select* from orderlist where orderstatus='Complete' and uid='"+session.getAttribute("userid")+"'" );
                                  while(rs2.next())
                                  {
                                      String sid= rs2.getString("sid");
                                      String orderid= rs2.getString("orderid");
                              
      out.write("\n");
      out.write("                              <tbody id=\"dataTable\" >\n");
      out.write("                             \n");
      out.write("                        \n");
      out.write("\t\t\t\t\t\t<tr  >\n");
      out.write("\t\t\t\t\t\t<td style=\"border: 1px solid gainsboro; ;\">");
      out.print(i);
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs2.getString("orderid"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs2.getString("sid"));
      out.write("</td>\n");
      out.write("\t\t\t\t\t\t<td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs2.getString("custname"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs2.getString("tqty"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs2.getString("tamount"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs2.getString("paystatus"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\">");
      out.print(rs2.getString("orderstatus"));
      out.write("</td>\n");
      out.write("                                                <td style=\"border: 1px solid gainsboro; ;\"><a href=\"viewinvoice.jsp?orderid=");
      out.print(orderid);
      out.write("\">Print</a> &nbsp;/ &nbsp;<a href=\"\">Delete</a> </td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("                                               \n");
      out.write("\t\t\t\t\t</tbody>\n");
      out.write("                                         ");
 i++;
                                                }
                                                
      out.write("\n");
      out.write("\t\t\t\t</table>\n");
      out.write("                             </div>\n");
      out.write("                         </div>\n");
      out.write("                     </div>\n");
      out.write("                                       \n");
      out.write("                    \n");
      out.write("\t\t</article>\n");
      out.write("                \n");
      out.write("                                <script src=\"js/jquery.datetimepicker.js\"></script>\n");
      out.write("<script>\n");
      out.write("   $('#custdob').datetimepicker({\n");
      out.write("lang:'en',\n");
      out.write(" i18n:{\n");
      out.write("  de:{\n");
      out.write("   months:[\n");
      out.write("    'Januar','Februar','März','April',\n");
      out.write("    'Mai','Juni','Juli','August',\n");
      out.write("    'September','Oktober','November','Dezember',\n");
      out.write("   ],\n");
      out.write("   dayOfWeek:[\n");
      out.write("    \"So.\", \"Mo\", \"Di\", \"Mi\", \n");
      out.write("    \"Do\", \"Fr\", \"Sa.\",\n");
      out.write("   ]\n");
      out.write("  }\n");
      out.write(" },\n");
      out.write(" timepicker:false,\n");
      out.write(" format:'Y-m-d'\n");
      out.write("\n");
      out.write("}); \n");
      out.write("</script>\n");
      out.write("\t\n");
      out.write("</section>\n");
      out.write("\t \n");
      out.write("\t \n");
      out.write("\t<script type=\"text/javascript\">\t\t\n");
      out.write("\t\t$('nav li').hover(function(){\n");
      out.write("\t\t\t$('nav li a').toggleClass('open');\n");
      out.write("\t\t});\t\n");
      out.write("\t\tvar navouter = $('nav').outerWidth();\n");
      out.write("\t\t \n");
      out.write("\t\t$('article').css('marginLeft',navouter);\n");
      out.write("\t\t$('.table tr:even').css('backgroundColor','#fff');\n");
      out.write("\t\t\t\n");
      out.write("\t</script> \n");
      out.write("\t<script>\n");
      out.write("\t$(window).scroll(function() {\n");
      out.write("\tif ($(this).scrollTop() > 1){  \n");
      out.write("\t\t$('aside nav').addClass(\"sticky\");\n");
      out.write("\t  }\n");
      out.write("\t  else{\n");
      out.write("\t\t$('aside nav').removeClass(\"sticky\");\n");
      out.write("\t  }\n");
      out.write("\t});\n");
      out.write("        $('.info').delay(4000).fadeOut();\n");
      out.write("          var scrollheight = 70;\n");
      out.write("\t\n");
      out.write("\t$(document).ready(function() {\n");
      out.write("\t$(window).scroll(function() {\n");
      out.write("\tvar scrollhead = getCurrentScroll();\n");
      out.write("\t//alert(scrollhead+\" px\");\n");
      out.write("\tif(scrollhead>=scrollheight) {\n");
      out.write("\t$('aside nav').addClass('sticky')\n");
      out.write("\t}\n");
      out.write("\telse {\n");
      out.write("\t\n");
      out.write("$('aside nav').removeClass('sticky')\n");
      out.write("\t}\n");
      out.write("\t});\n");
      out.write("\tfunction getCurrentScroll() {\n");
      out.write("\treturn window.pageYOffset || document.documentElement.scrollTop;\n");
      out.write("\t}\n");
      out.write("\t}); \n");
      out.write("\t</script>\n");
      out.write("        \n");
      out.write("<script type=\"text/javascript\" src=\"//www.googleadservices.com/pagead/conversion.js\">\n");
      out.write("</script>\n");
      out.write("<noscript>\n");
      out.write("<div style=\"display:inline;\">\n");
      out.write("<img height=\"1\" width=\"1\" style=\"border-style:none;\" alt=\"\" src=\"//googleads.g.doubleclick.net/pagead/viewthroughconversion/945558947/?value=0&amp;guid=ON&amp;script=0\"/>\n");
      out.write("</div>\n");
      out.write("</noscript>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\t");
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
