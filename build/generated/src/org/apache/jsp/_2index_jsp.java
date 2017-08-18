package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class _2index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <link rel=\"shortcut icon\" href=\"assets/ico/favicon.png\">\n");
      out.write("\n");
      out.write("    <title>Fabrinz Laundry Services</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"assets/css/main.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link href=\"assets/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("    \n");
      out.write("    <script src=\"assets/js/modernizr.custom.js\"></script>\n");
      out.write("    \n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("\t<!-- Menu -->\n");
      out.write("\t<nav class=\"menu\" id=\"theMenu\">\n");
      out.write("\t\t<div class=\"menu-wrap\">\n");
      out.write("\t\t\t<h1 class=\"logo\"><a href=\"index.html#home\">LINK</a></h1>\n");
      out.write("\t\t\t<i class=\"fa fa-arrow-right menu-close\"></i>\n");
      out.write("\t\t\t<a href=\"index.html\">Home</a>\n");
      out.write("\t\t\t<a href=\"services.html\">Services</a>\n");
      out.write("\t\t\t<a href=\"portfolio.html\">Portfolio</a>\n");
      out.write("\t\t\t<a href=\"fsignup.html\">About</a>\n");
      out.write("\t\t\t<a href=\"#contact\">Contact</a>\n");
      out.write("\t\t\t<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t<a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t<a href=\"#\"><i class=\"fa fa-dribbble\"></i></a>\n");
      out.write("\t\t\t<a href=\"#\"><i class=\"fa fa-envelope\"></i></a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- Menu button -->\n");
      out.write("\t\t<div id=\"menuToggle\"><i class=\"fa fa-bars\"></i></div>\n");
      out.write("\t</nav>\n");
      out.write("\t\n");
      out.write("\t<!-- MAIN IMAGE SECTION -->\n");
      out.write("\t<div id=\"headerwrap\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-lg-8 col-lg-offset-2\">\n");
      out.write("\t\t\t\t\t<h1>Fabrinz</h1>\n");
      out.write("\t\t\t\t\t<h2>A Laundry Service provider</h2>\n");
      out.write("\t\t\t\t\t<div class=\"spacer\"></div>\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-angle-down\"></i>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div><!-- row -->\n");
      out.write("\t\t</div><!-- /container -->\n");
      out.write("\t</div><!-- /headerwrap -->\n");
      out.write("\n");
      out.write("\t<!-- WELCOME SECTION -->\n");
      out.write("    \n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t<!-- SOCIAL FOOTER --->\n");
      out.write("\t<section id=\"contact\"></section>\n");
      out.write("\t<div id=\"sf\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-lg-4 dg\">\n");
      out.write("\t\t\t\t\t<h4 class=\"ml\">FACEBOOK</h4>\n");
      out.write("\t\t\t\t\t<p class=\"centered\"><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></p>\n");
      out.write("\t\t\t\t\t<p class=\"ml\">> Become A Friend</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-lg-4 lg\">\n");
      out.write("\t\t\t\t\t<h4 class=\"ml\">TWITTER</h4>\n");
      out.write("\t\t\t\t\t<p class=\"centered\"><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></p>\n");
      out.write("\t\t\t\t\t<p class=\"ml\">> Follow Us</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-lg-4 dg\">\n");
      out.write("\t\t\t\t\t<h4 class=\"ml\">GOOGLE +</h4>\n");
      out.write("\t\t\t\t\t<p class=\"centered\"><a href=\"#\"><i class=\"fa fa-google-plus\"></i></a></p>\n");
      out.write("\t\t\t\t\t<p class=\"ml\">> Add Us To Your Circle</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div><!-- row -->\n");
      out.write("\t\t</div><!-- container -->\n");
      out.write("\t</div><!-- Social Footer -->\n");
      out.write("\t\n");
      out.write("\t<!-- CONTACT FOOTER --->\n");
      out.write("\t<div id=\"cf\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-lg-8\">\n");
      out.write("\t\t        \t<div id=\"mapwrap\">\n");
      out.write("\t\t\t\t\t\t<iframe height=\"400\" width=\"100%\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"https://www.google.es/maps?t=m&amp;ie=UTF8&amp;ll=52.752693,22.791016&amp;spn=67.34552,156.972656&amp;z=6&amp;output=embed\"></iframe>\n");
      out.write("\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t</div><!--col-lg-8-->\n");
      out.write("\t\t\t\t<div class=\"col-lg-4\">\n");
      out.write("\t\t\t\t\t<h4>ADDRESS<br/>Minsk - Head Office</h4>\n");
      out.write("\t\t\t\t\t<br>\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\tBusiness Center, SomeAve 987,<br/>\n");
      out.write("\t\t\t\t\t\tMinsk, Belarus.\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t<p>\n");
      out.write("\t\t\t\t\t\tP: +55 4839-4390<br/>\n");
      out.write("\t\t\t\t\t\tF: +55 4333-4345<br/>\n");
      out.write("\t\t\t\t\t\tE: <a href=\"mailto:#\">hello@linkagency.com</a>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t\t<p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>\n");
      out.write("\t\t\t\t</div><!--col-lg-4-->\n");
      out.write("\t\t\t</div><!-- row -->\n");
      out.write("\t\t</div><!-- container -->\n");
      out.write("\t</div><!-- Contact Footer -->\n");
      out.write("\t\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript\n");
      out.write("    ================================================== -->\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-1.10.2.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/main.js\"></script>\n");
      out.write("\t<script src=\"assets/js/masonry.pkgd.min.js\"></script>\n");
      out.write("\t<script src=\"assets/js/imagesloaded.js\"></script>\n");
      out.write("    <script src=\"assets/js/classie.js\"></script>\n");
      out.write("\t<script src=\"assets/js/AnimOnScroll.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t\tnew AnimOnScroll( document.getElementById( 'grid' ), {\n");
      out.write("\t\t\tminDuration : 0.4,\n");
      out.write("\t\t\tmaxDuration : 0.7,\n");
      out.write("\t\t\tviewportFactor : 0.2\n");
      out.write("\t\t} );\n");
      out.write("\t</script>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
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
