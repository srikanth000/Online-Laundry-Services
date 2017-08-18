package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class ProcessOrder_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    

      out.write('\n');

  
    String orderid=request.getParameter("OrderId");
    String IN=request.getParameter("item");
    String action=request.getParameter("action");
    String rate=request.getParameter("rate");
    String qty=request.getParameter("qty");
    String total=request.getParameter("total");
    String tqty=request.getParameter("tqty");
    String tamount=request.getParameter("tamount");
    String paymode=request.getParameter("paymode");
    String orderstatus="Not PicUp From Destination";
    String paystatus="Not paid";
    
    int i=st.executeUpdate("update orderlist SET tqty='"+tqty+"', tamount='"+tamount+"', paymode'"+paymode+"', paystatus='"+paystatus+"', orderstatus='"+orderstatus+"'  WHERE orderid='"+orderid+"' ");
    if(i>0)
    {
      
    int j=st.executeUpdate("insert into orderlistitem values ('"+IN+"','"+action+"','"+rate+"','"+qty+"','"+total+"','"+orderid+"')");
    if(i>0)
    {
        if ("cod".equals(paymode))
        {
            
      out.write("\n");
      out.write("        <script language=\"javascript\">\n");
      out.write("        alert(\"Your Service Scheduled Successfulluy!! We Contact You Sortly!!\");\n");
      out.write("        window.location.href=\"fabrinz-custm-deshboard.jsp\";\n");
      out.write("</script>\n");

        }
        else
        {
            
      out.write("\n");
      out.write("        <script language=\"javascript\">\n");
      out.write("        alert(\"Your Service Scheduled Successfulluy!! Pay Now!!\");\n");
      out.write("        window.location.href=\"fabrinz-custm-deshboard.jsp\";\n");
      out.write("</script>\n");

   }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
