package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class schedule_005fservices1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <!-- Facebook Pixel Code -->\n");
      out.write("        ");

    String orderid="";
    String location=request.getParameter("location");
    String sid=request.getParameter("sid");
    String custname=request.getParameter("custname");
    String email=request.getParameter("custemail");
    String mobile=request.getParameter("custmobile");
    String pin=request.getParameter("custpin");
    String add=request.getParameter("custadd");
    String picuptime=request.getParameter("picuptime");
    
       
    int i=st.executeUpdate("insert into orderlist(location,sid,custname,email,mobile,pin,add,picuptime,uid) values ('"+location+"','"+sid+"','"+custname+"','"+email+"','"+mobile+"','"+pin+"','"+add+"','"+picuptime+"','"+session.getAttribute("uid")+"')");
    if(i>0)
    {
             ResultSet rs=st.executeQuery("select * from orderlist where location='"+location+"' and sid='"+sid+"' and custname='"+custname+"' and email='"+email+"' and mobile='"+mobile+" and pin='"+pin+"' and add='"+add+"' and picuptime='"+picuptime+"' and uid='"+session.getAttribute("uid")+"'");
             if(rs.next())
             {
                 orderid=rs.getString("orderid");
             }
             else
    {
        
      out.write("\n");
      out.write("        <script language=\"javascript\">\n");
      out.write("        alert(\"Sorry... Unable to Process!!! Try Again\");\n");
      out.write("        window.location.href=\"schedule_services.jsp\";\n");
      out.write("</script>\n");


    }        
}
else
    {
        
      out.write("\n");
      out.write("        <script language=\"javascript\">\n");
      out.write("        alert(\"Sorry... Unable to Process!!! Try Again\");\n");
      out.write("        window.location.href=\"schedule_services.jsp\";\n");
      out.write("</script>\n");

    }



      out.write("\n");
      out.write("<script>\n");
      out.write("var xmlHttp  ;\n");
      out.write("      var xmlHttp;\n");
      out.write("      function show_item_list(){\n");
      out.write("      var sid=document.getElementById('store_id').value;\n");
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
      out.write("      var url=\"sdl_Item_List.jsp\";\n");
      out.write("      url +=\"?count=\"+sid;\n");
      out.write("      xmlHttp.onreadystatechange = stateChange1;\n");
      out.write("      xmlHttp.open(\"GET\", url, true);\n");
      out.write("      xmlHttp.send(null);\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      function stateChange1(){   \n");
      out.write("      if (xmlHttp.readyState==4 || xmlHttp.readyState==\"complete\"){   \n");
      out.write("      document.getElementById(\"item\").innerHTML=xmlHttp.responseText   \n");
      out.write("      }   \n");
      out.write("  }\n");
      out.write("      \n");
      out.write("      function showAction(str){\n");
      out.write("      \n");
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
      out.write("      var url=\"ItemAction.jsp\";\n");
      out.write("      url +=\"?count=\"+str;\n");
      out.write("      xmlHttp.onreadystatechange = stateChange2;\n");
      out.write("      xmlHttp.open(\"GET\", url, true);\n");
      out.write("      xmlHttp.send(null);\n");
      out.write("      }\n");
      out.write("\n");
      out.write("      function stateChange2(){   \n");
      out.write("      if (xmlHttp.readyState==4 || xmlHttp.readyState==\"complete\"){   \n");
      out.write("      document.getElementById(\"Action\").innerHTML=xmlHttp.responseText   \n");
      out.write("      }   \n");
      out.write("      }     \n");
      out.write("        </script>\n");
      out.write("    \n");
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
      out.write("            <script type=\"text/javascript\" src=\"js/jquery.min.js\"></script>\n");
      out.write(" <link rel=\"stylesheet\" type=\"text/css\" href=\"css/jquery.datetimepicker.css\"/>\n");
      out.write("<script type=\"text/javascript\" src=\"js/custmAccount.js\"></script>\n");
      out.write("\n");
      out.write("                            \n");
      out.write("\t\t<article>\n");
      out.write("                  <h3>SCHEDULE A SERVICE</h3>\n");
      out.write("                     <div id=\"errorMsg\" class=\"message\" > </div>   \n");
      out.write("                     <div class=\"inner\">\n");
      out.write("                                 \n");
      out.write("                         <div class=\"col4 last panel\" style=\"width: 100%; \" >\n");
      out.write("                        <h4 class=\"panel-header\" >Schedule Order</h4>\n");
      out.write("                         \n");
      out.write("                        <form method=\"post\" action=\"ProcessOrder.jsp\">\n");
      out.write("                               <div class=\"panel-body\">\n");
      out.write("                                   <div>                      \n");
      out.write("                        \n");
      out.write("                                       Order ID :  <input type=\"number\" readonly=\"\" placeholder=\"Order Id\" id=\"OrderId\" name=\"OrderId\" style=\"width: 10%;\"   />  \n");
      out.write("                                         </div>\n");
      out.write("                          \n");
      out.write("                            <div class=\"panel-body\"> \n");
      out.write("                                <table class=\"table table-bordered table-hover\" >\n");
      out.write("\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t\t<th width=\"2%\"><input id=\"check_all\" class=\"formcontrol\" type=\"checkbox\"/></th>\n");
      out.write("\t\t\t\t\t\t\t<th width=\"15%\">ITEM</th>\n");
      out.write("\t\t\t\t\t\t\t<th width=\"38%\">ACTIVITY</th>\n");
      out.write("\t\t\t\t\t\t\t<th width=\"15%\">RATE</th>\n");
      out.write("\t\t\t\t\t\t\t<th width=\"15%\">QUANTITY</th>\n");
      out.write("\t\t\t\t\t\t\t<th width=\"15%\">TOTAL</th>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t</thead>\n");
      out.write("                                        <tbody id=\"dataTable\" >\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td><input class=\"case\" type=\"checkbox\"/></td>\n");
      out.write("                                                <td><select id='item' name='item[]' onchange=\"showAction(this.value)\">\n");
      out.write("                                                                <option value='-1'></option>\n");
      out.write("                                                    \n");
      out.write("                                                                \n");
      out.write("                                                    </select></td>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                                                    <td>\n");
      out.write("                                                        <select id=\"Action\" name=\"action[]\" onchange=\"ShowPrize(this.value)\">\n");
      out.write("                                                            <option value=\"\"></option>\n");
      out.write("                                                        </select>\n");
      out.write("                                                        \n");
      out.write("                                                    </td>\n");
      out.write("                                                    <td><input type=\"text\"  name=\"rate[]\" id=\"rate\"/></td>\n");
      out.write("                                                    <td><input type=\"text\"  name=\"qty[]\" id=\"qty\"/></td>\n");
      out.write("                                                    <td><input type=\"text\"  name=\"total[]\" id=\"total\"/></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t\t\t</tbody>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("                                <div>\n");
      out.write("                                    <INPUT type=\"button\" value=\"Add Row\" onclick=\"addRow('dataTable')\" />\n");
      out.write("                                \t<INPUT type=\"button\" value=\"Delete Row\" onclick=\"deleteRow('dataTable')\" /></div>\n");
      out.write("\n");
      out.write("                           </div>\n");
      out.write("                            <div> Total Qty. <input type=\"text\" readonly=\"\" name=\"tqty\" style=\"width:15%;\" /> &nbsp; Total Amount. (Rs.) <input type=\"text\" readonly=\"\" name=\"tamount\"  style=\"width:15%;\" > &nbsp;\n");
      out.write("                            Select Payment Mode : \n");
      out.write("                                <select id=\"paymode\" name=\"paymode\" style=\"width:30%;\">\n");
      out.write("                                    <option value=\"none\">--select--</option>\n");
      out.write("                                    <option value=\"cod\"> Cash On Delivery </option>\n");
      out.write("                                    <option value=\"cnline\">Pay Online</option>\n");
      out.write("                                    \n");
      out.write("                                </select>\n");
      out.write("                            \n");
      out.write("                            </div>               \n");
      out.write("                                    \n");
      out.write("                                \n");
      out.write("                         </div>\n");
      out.write("                            <input type=\"submit\" value=\"Save & Next\" style=\"width: 20%\">\n");
      out.write("                        </form>\n");
      out.write("                           \n");
      out.write("                    \n");
      out.write("\t\t</article>\n");
      out.write("                            <script src=\"js/jquery.datetimepicker.js\"></script>\n");
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
