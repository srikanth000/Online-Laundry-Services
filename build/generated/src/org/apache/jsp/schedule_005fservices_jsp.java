package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class schedule_005fservices_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t<!-- Don't forget to set your site up: http://google.com/webmasters -->\n");
      out.write("\t<meta name=\"google-site-verification\" content=\"gQDRuTb92Z_QKSnLwG2Wc-qJDOGaefJY9RBRG0BVEaA\" /> \n");
      out.write("\t<!-- Who owns the content of this site? -->\n");
      out.write("\n");
      out.write("\t<!--  Mobile Viewport\n");
      out.write("\thttp://j.mp/mobileviewport & http://davidbcalhoun.com/2010/viewport-metatag\n");
      out.write("\tdevice-width : Occupy full width of the screen in its current orientation\n");
      out.write("\tinitial-scale = 1.0 retains dimensions instead of zooming out if page height > device height\n");
      out.write("\tmaximum-scale = 1.0 retains dimensions instead of zooming in if page width < device width (wrong for most sites)\n");
      out.write("\t-->\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/deshboard.css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/ui.css\" />\n");
      out.write("        <!-- Facebook Pixel Code -->\n");
      out.write("<script>\n");
      out.write("!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?\n");
      out.write("n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;\n");
      out.write("n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;\n");
      out.write("t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,\n");
      out.write("document,'script','//connect.facebook.net/en_US/fbevents.js');\n");
      out.write("\n");
      out.write("fbq('init', '1619496634975726');\n");
      out.write("fbq('track', \"PageView\");</script>\n");
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
      out.write("\t\t<article>\n");
      out.write("                  <h3>SCHEDULE A SERVICE</h3>\n");
      out.write("                     <div id=\"errorMsg\" class=\"message\" > </div>   \n");
      out.write("                     <div class=\"inner\">\n");
      out.write("                         <div class=\"col4 last panel\" style=\"width: 100%;\">\n");
      out.write("                        <h4 class=\"panel-header\" >Schedule Order</h4>\n");
      out.write("                         \n");
      out.write("                        \n");
      out.write("                        <form method=\"post\" action=\"custm_order.jsp\">\n");
      out.write("                            ");
 ResultSet rs= st.executeQuery("select * from user where userid='"+session.getAttribute("userid")+"'");
                            if(rs.next())
                            {
                            
      out.write("\n");
      out.write("                               <div class=\"panel-body\">\n");
      out.write("                              \n");
      out.write("                             \n");
      out.write("                                   <input type=\"text\" placeholder=\"Custumer Name\" value=\"");
      out.print(rs.getString("Name"));
      out.write("\" id=\"custname\" name=\"custname\" /> \n");
      out.write("                            \n");
      out.write("                            <input type=\"text\"  placeholder=\"Email\" value=\"");
      out.print(rs.getString("Email"));
      out.write("\" id=\"custemail\" name=\"custemail\"  />\n");
      out.write("                            \n");
      out.write("                              \n");
      out.write("                            <input type=\"text\" placeholder=\"Mobile No\" id=\"custmobile\" name=\"custmobile\" value=\"");
      out.print(rs.getString("Mobile"));
      out.write("\"  />\n");
      out.write("                            \n");
      out.write("                            \n");
      out.write("                            <input type=\"text\" placeholder=\"Pincode\" id=\"custpin\" name=\"custpin\" value=\"");
      out.print(rs.getString("Pincode"));
      out.write("\"  />\n");
      out.write("                            \n");
      out.write("                              \n");
      out.write("                            <input type =\"text\" placeholder=\"Address\" id=\"custadd\" name=\"custadd\" value=\"");
      out.print(rs.getString("Address"));
      out.write("\" /> \n");
      out.write("\n");
      out.write("                            <select  id=\"picuptime\" name=\"picuptime\" >\n");
      out.write("                                <option>-Select Picup Time-</option>\n");
      out.write("                                <option>08:00 AM To 12:00 PM</option>\n");
      out.write("                                <option>12:00 PM To 04:00 PM</option>\n");
      out.write("                                <option>04:00 PM To 08:00 PM</option>\n");
      out.write("                            </select> \n");
      out.write("                            <div class=\"panel-body\"> \n");
      out.write("                                <table class=\"table table-bordered table-hover\">\n");
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
      out.write("                                        <tbody>\n");
      out.write("\t\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td><input class=\"case\" type=\"checkbox\"/></td>\n");
      out.write("                                                        <td><select id=\"item\" name=\"item\" >\n");
      out.write("                                                                <option value=\"\"></option>\n");
      out.write("                                                    \n");
      out.write("                                                                \n");
      out.write("                                                    </select></td>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                                                        <td></td>\n");
      out.write("\t\t\t\t\t\t\t<td></td>\n");
      out.write("\t\t\t\t\t\t\t<td></td>\n");
      out.write("\t\t\t\t\t\t\t<td></td>\n");
      out.write("\t\t\t\t\t\t</tr>\n");
      out.write("<?php } ?>\n");
      out.write("\t\t\t\t\t</tbody>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\n");
      out.write("                           </div>\n");
      out.write("                               \n");
      out.write("                            \n");
      out.write("                         </div>\n");
      out.write("                             <input type=\"submit\" value=\"submit\" id=\"custmAccount\">\n");
      out.write("                            ");
}
      out.write("\n");
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
      out.write("        \t<script>\n");
      out.write("\t\t    (function(i, s, o, g, r, a, m) {\n");
      out.write("\t\t        i['GoogleAnalyticsObject'] = r;\n");
      out.write("\t\t        i[r] = i[r] || function() {\n");
      out.write("\t\t            (i[r].q = i[r].q || []).push(arguments)\n");
      out.write("\t\t        }, i[r].l = 1 * new Date();\n");
      out.write("\t\t        a = s.createElement(o),\n");
      out.write("\t\t                m = s.getElementsByTagName(o)[0];\n");
      out.write("\t\t        a.async = 1;\n");
      out.write("\t\t        a.src = g;\n");
      out.write("\t\t        m.parentNode.insertBefore(a, m)\n");
      out.write("\t\t    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');\n");
      out.write("\n");
      out.write("\t\t    ga('create', 'UA-57639059-1', 'auto');\n");
      out.write("\t\t    ga('send', 'pageview');\n");
      out.write("\n");
      out.write("\t\t</script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("/* <![CDATA[ */\n");
      out.write("var google_conversion_id = 945558947;\n");
      out.write("var google_custom_params = window.google_tag_params;\n");
      out.write("var google_remarketing_only = true;\n");
      out.write("/* ]]> */\n");
      out.write("</script>\n");
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
