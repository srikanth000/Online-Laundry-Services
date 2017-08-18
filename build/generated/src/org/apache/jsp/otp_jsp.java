package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class otp_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fabrinz","root","");
    Statement st=con.createStatement();
    

      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("\n");
      out.write("<html class=\"no-js\" lang=\"en\"><!--<![endif]-->\n");
      out.write("<!-- the \"no-js\" class is for Modernizr. --> \n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->\n");
      out.write("\t\n");
      out.write("\t<!-- Important stuff for SEO, don't neglect. (And don't dupicate values across your site!) -->\n");
      out.write("\t<title>Fabrinz- Sign Up</title>\n");
      out.write("\t<meta name=\"author\" content=\"\" />\n");
      out.write("\t <meta name=\"description\" content=\"fabrinz- On-Demand Laundry & Dry Cleaning Services.\"/>\n");
      out.write("        <meta name=\"keywords\" content=\"laundry, dry cleaning, washing, ironing, laundry mobile app, laundry india, fabrinz, doorstep laundry, online laundry\" />\n");
      out.write("        \n");
      out.write("\t\n");
      out.write("\t<meta name=\"google-site-verification\" content=\"\" /> \n");
      out.write("\t\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/login_1.css\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.2.6.min.js\"></script>\n");
      out.write("\t \n");
      out.write("<style>\n");
      out.write(".inputbox\n");
      out.write("{\n");
      out.write("    width: 100%;\n");
      out.write("    height: 20px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<script type=\"text/javascript\" src=\"js/login.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("</head>\n");

   // Random rand = new Random();
    //int n = rand.nextInt(900000) + 100000;
    //out.println(n);
    if(request.getParameter("Submit")!=null)
    {
         String email="shekhar.goud9@gmail.com";//(String)session.getAttribute("email");
          int status=1;
           int i= st.executeUpdate("update user set status=1 where Email="+email+"");
      String otp=request.getParameter("otp");
      out.println((String)session.getAttribute("otp"));
      if(otp.equals((String)session.getAttribute("otp")))
      {
         
          response.sendRedirect("fabrinz_custm_login.jsp");
      }
      else{
          
      out.write("\n");
      out.write("          <script language=\"javascript\">\n");
      out.write("    alert(\"You entered wrong OTP.please enter correct one.\" );\n");
      out.write("   \n");
      out.write("    \n");
      out.write("        </script>\n");
      out.write("      ");

         }
    }
    
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div id=\"slideshow\">\n");
      out.write("<img class=\"active\" src=\"bg/03.jpg\"/>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("    <BR/>\n");
      out.write("    \n");
      out.write("\t<div class='loginwrap'>\n");
      out.write("            <a href=\"index.jsp\"><img src='img/logologin.png' align='center' style=\"margin-top: 20px;\"/></a><BR/>\n");
      out.write("\t\t \n");
      out.write("            <div class='login' style=\"border-color: yellow;\">\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class='loginhead' >\n");
      out.write("\t\t\t\t<h2 style=\"color: white;\">REGISTER</h2>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class='loginbody clearfix'>\t\t\t\n");
      out.write("                            <form method='post' action='' name=\"signup_new_custm\" id=\"signup_new_custm\">\n");
      out.write("                                    <input type='text' placeholder='otp' name=\"otp\" id=\"otp\" />\n");
      out.write("                                  \n");
      out.write("\t\t\t\t\t\n");
      out.write("                                    <div class='clearfix'>\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                            <input type=\"checkbox\" name=\"terms\" id=\"terms\" ><a href='tos.jsp' style=\"color:#333; font-size: 13px; text-decoration: none; font-family: 'Lato-Lig-webfont'\" >I agree to the terms &amp; conditions</a>\n");
      out.write("                                  \n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                        \n");
      out.write("                                    <input class='big' type='submit' name=\"Submit\" value='Submit' id=\"custmReg\" />\n");
      out.write("                                    <div class='clearfix'></div>\n");
      out.write("\t\t\t\t\t<div>\n");
      out.write("                                           \n");
      out.write("\t\t\t\t\t<a href='fabrinz_custm_login.jsp' class='blk'>Already Registered?   Sign In</a>\n");
      out.write("                                        </div>\n");
      out.write("                                        \n");
      out.write("                            \n");
      out.write("\t\t\t<div class='loginfooter clearfix'>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li><a href='index.jsp#services'>Services</a></li>\n");
      out.write("\t\t\t\t\t<li><a href='tos.jsp'>Terms &amp; Conditions</a></li>\n");
      out.write("\t\t\t\t\t<li class='last'><a href='contact.jsp'>Contact</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t                                    </form>\n");
      out.write("                        </div>\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("\n");
      out.write("$(window).load(function(){\n");
      out.write("\n");
      out.write("    $('.loginwrap').css({\n");
      out.write("        position:'absolute',\n");
      out.write("        left: ($(window).width() - $('.loginwrap').outerWidth())/2,\n");
      out.write("        top: ($(window).height() - $('.loginwrap').outerHeight())/2\n");
      out.write("    });\n");
      out.write("\n");
      out.write("});\n");
      out.write("\n");
      out.write("// To initially run the function:\n");
      out.write("$(window).resize();\t\t\n");
      out.write("</script> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\n");
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
