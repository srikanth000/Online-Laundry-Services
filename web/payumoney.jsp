<%-- 
    Document   : payumoney
    Created on : Jul 14, 2017, 1:28:21 AM
    Author     : shekhar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>

<%!
public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}
%>
<%!
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
%>
<% 	
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
        
       
%>
<html>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/responsiveslides.css">
    <script>
    var hash = '<%= hash%>';
    function submitPayuForm() {

        if (hash == '')
            return;

        var payuForm = document.forms.payuForm;
        payuForm.submit();
    }
    </script>

    <body onload="submitPayuForm();">
        <div class="header">
            <div class="wrap">
                <div class="header-top">
                    <div class="logo">
                        <a href="index.html"><img src="images/logo.png" alt=""/></a>
                    </div>
                    <div class="telephone">
                        <span>Contact us</span><span class="number">7093941934, 9000620356</span>
                    </div>
                    <div style="float:right; margin-top: 7px;">         <a href="#" target="_blank"><img src="images/payment.png" style="width:200px;height:35px;" alt="advance booking"></a></div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="menu">
                <div class="wrap">
                    <div class="top-nav">
                        <ul class="nav">
                            <li class="active"><a href="index.html">Home</a></li>
                            <li><a href="about.html">About</a></li>
                            <li ><a href="services.html">Services</a></li>
                            <li><a href="career.html">Career</a></li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="teachertraining.html">Teacher's Training </a></li>
                            <div class="clear"></div>
                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>


        <form action="<%= action1%>" method="post" name="payuForm">
            <input type="hidden" name="key" value="<%= merchant_key%>" />
            <input type="hidden" name="hash" value="<%= hash%>"/>
            <input type="hidden" name="txnid" value="<%= txnid%>" />
            <input type="hidden" name="udf2" value="<%= txnid%>" />
            <input type="hidden" name="service_provider" value="payu_paisa" />
            <table>
                <tr>
                    <td><b>Mandatory Parameters</b></td>
                </tr>
                <tr>
                    <td>Amount: </td>
                    <td><input name="amount" value="<%= (empty(params.get("amount"))) ? "" : params.get("amount")%>" /></td>
                    <td>First Name: </td>
                    <td><input name="firstname" id="firstname" value="<%= (empty(params.get("firstname"))) ? "" : params.get("firstname")%>" /></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input name="email" id="email" value="<%= (empty(params.get("email"))) ? "" : params.get("email")%>" /></td>
                    <td>Phone: </td>
                    <td><input name="phone" value="<%= (empty(params.get("phone"))) ? "" : params.get("phone")%>" /></td>
                </tr>

                <tr>
                    <td colspan="2" hidden>Success URI: </td>
                    <td colspan="2" hidden><input name="surl" value="http://localhost:8080/Fabrinz/sms2.jsp" size="64" hidden/></td>
                </tr>
                <tr>
                    <td colspan="2" hidden>Failure URI: </td>
                    <td colspan="2" hidden><input name="furl" value="http://www.dharamshalaflying.com/paymentfailed.php" size="64" hidden/></td>
                </tr>

                <tr>
                    <% if (empty(hash)) { %>
                    <td colspan="4"><input type="submit" value="Submit" /></td>
                        <% }%>
                </tr>
            </table>

    </body>
</html>
