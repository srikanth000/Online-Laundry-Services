package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.security.*;

public final class payumoney_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}


	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
		MessageDigest algorithm = MessageDigest.getInstance(type);
		algorithm.reset();
		algorithm.update(hashseq);
		byte messageDigest[] = algorithm.digest();
            
		

		for (int i=0;i<messageDigest.length;i++) {
			String hex=Integer.toHexString(0xFF & messageDigest[i]);
			if(hex.length()==1) hexString.append("0");
			hexString.append(hex);
		}
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();


	}

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');
 	
	String merchant_key="vZ00sdDc";
	String salt="Zda0pGKpWw";
	String action1 ="";
	String base_url="https://secure.payu.in";
	int error=0; 
        String udf2="";
	String hashString="";
	
 

	
	Enumeration paramNames = request.getParameterNames();
	Map<String,String> params= new HashMap<String,String>();
    	while(paramNames.hasMoreElements()) 
	{
      		String paramName = (String)paramNames.nextElement();
      
      		String paramValue = request.getParameter(paramName);

		params.put(paramName,paramValue);
	}
	String txnid ="";
	if(empty(params.get("txnid"))){
		Random rand = new Random();
		String rndm = Integer.toString(rand.nextInt())+(System.currentTimeMillis() / 1000L);
		txnid=hashCal("SHA-256",rndm).substring(0,20);
	}
	else
		txnid=params.get("txnid");
        udf2 = txnid;
	String txn="abcd";
	String hash="";
	String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
	if(empty(params.get("hash")) && params.size()>0)
	{
		if( empty(params.get("key"))
			|| empty(params.get("txnid"))
			|| empty(params.get("amount"))
			|| empty(params.get("firstname"))
			|| empty(params.get("email"))
			|| empty(params.get("phone"))
			
	)
			
			error=1;
		else{
			String[] hashVarSeq=hashSequence.split("\\|");
			
			for(String part : hashVarSeq)
			{
				hashString= (empty(params.get(part)))?hashString.concat(""):hashString.concat(params.get(part));
				hashString=hashString.concat("|");
			}
			hashString=hashString.concat(salt);
			

			 hash=hashCal("SHA-512",hashString);
			action1=base_url.concat("/_payment");
		}
	}
	else if(!empty(params.get("hash")))
	{
		hash=params.get("hash");
		action1=base_url.concat("/_payment");
	}

        
       out.println("action url"+action1);
        
       

      out.write("\n");
      out.write("<html>\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/responsiveslides.css\">\n");
      out.write("    <script>\n");
      out.write("    var hash = '");
      out.print( hash);
      out.write("';\n");
      out.write("    function submitPayuForm() {\n");
      out.write("\n");
      out.write("        if (hash == '')\n");
      out.write("            return;\n");
      out.write("\n");
      out.write("        var payuForm = document.forms.payuForm;\n");
      out.write("        payuForm.submit();\n");
      out.write("    }\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("    <body onload=\"submitPayuForm();\">\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <div class=\"header-top\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <a href=\"index.html\"><img src=\"images/logo.png\" alt=\"\"/></a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"telephone\">\n");
      out.write("                        <span>Contact us</span><span class=\"number\">7093941934, 9000620356</span>\n");
      out.write("                    </div>\n");
      out.write("                    <div style=\"float:right; margin-top: 7px;\">         <a href=\"#\" target=\"_blank\"><img src=\"images/payment.png\" style=\"width:200px;height:35px;\" alt=\"advance booking\"></a></div>\n");
      out.write("                    <div class=\"clear\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"menu\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"top-nav\">\n");
      out.write("                        <ul class=\"nav\">\n");
      out.write("                            <li class=\"active\"><a href=\"index.html\">Home</a></li>\n");
      out.write("                            <li><a href=\"about.html\">About</a></li>\n");
      out.write("                            <li ><a href=\"services.html\">Services</a></li>\n");
      out.write("                            <li><a href=\"career.html\">Career</a></li>\n");
      out.write("                            <li><a href=\"contact.html\">Contact</a></li>\n");
      out.write("                            <li><a href=\"teachertraining.html\">Teacher's Training </a></li>\n");
      out.write("                            <div class=\"clear\"></div>\n");
      out.write("                        </ul>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form action=\"");
      out.print( action1);
      out.write("\" method=\"post\" name=\"payuForm\">\n");
      out.write("            <input type=\"hidden\" name=\"key\" value=\"");
      out.print( merchant_key);
      out.write("\" />\n");
      out.write("            <input type=\"hidden\" name=\"hash\" value=\"");
      out.print( hash);
      out.write("\"/>\n");
      out.write("            <input type=\"hidden\" name=\"txnid\" value=\"");
      out.print( txnid);
      out.write("\" />\n");
      out.write("            <input type=\"hidden\" name=\"udf2\" value=\"");
      out.print( txnid);
      out.write("\" />\n");
      out.write("            <input type=\"hidden\" name=\"service_provider\" value=\"payu_paisa\" />\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td><b>Mandatory Parameters</b></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Amount: </td>\n");
      out.write("                    <td><input name=\"amount\" value=\"");
      out.print( (empty(params.get("amount"))) ? "" : params.get("amount"));
      out.write("\" /></td>\n");
      out.write("                    <td>First Name: </td>\n");
      out.write("                    <td><input name=\"firstname\" id=\"firstname\" value=\"");
      out.print( (empty(params.get("firstname"))) ? "" : params.get("firstname"));
      out.write("\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email: </td>\n");
      out.write("                    <td><input name=\"email\" id=\"email\" value=\"");
      out.print( (empty(params.get("email"))) ? "" : params.get("email"));
      out.write("\" /></td>\n");
      out.write("                    <td>Phone: </td>\n");
      out.write("                    <td><input name=\"phone\" value=\"");
      out.print( (empty(params.get("phone"))) ? "" : params.get("phone"));
      out.write("\" /></td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" hidden>Success URI: </td>\n");
      out.write("                    <td colspan=\"2\" hidden><input name=\"surl\" value=\"http://www.dharamshalaflying.com/paymentdone.php\" size=\"64\" hidden/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" hidden>Failure URI: </td>\n");
      out.write("                    <td colspan=\"2\" hidden><input name=\"furl\" value=\"http://www.dharamshalaflying.com/paymentfailed.php\" size=\"64\" hidden/></td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    ");
 if (empty(hash)) { 
      out.write("\n");
      out.write("                    <td colspan=\"4\"><input type=\"submit\" value=\"Submit\" /></td>\n");
      out.write("                        ");
 }
      out.write("\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("    </body>\n");
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
