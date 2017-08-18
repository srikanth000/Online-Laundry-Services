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
	String merchant_key="7H6cCy";
	String salt="LBvXBhaX";
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
                        
			
	){
			
			error=1;}
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

        
       //out.println("action url"+action1);
        
       
%>
<html>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/responsiveslides.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
              <!-- <div class="header-top">
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
        </div>-->
         <div class="col-sm-4 ">
     
    </div> <div class="col-sm-4 ">
        <center> <h2>Pay Online</h2><br></center>
   

     <form action="<%= action1%>" method="post" name="payuForm">
            <input type="hidden" name="key" value="<%= merchant_key%>" />
            <input type="hidden" name="hash" value="<%= hash%>"/>
            <input type="hidden" name="txnid" value="<%= txnid%>" />
            <input type="hidden" name="udf2" value="<%= txnid%>" />
            <input type="hidden" name="service_provider" value="payu_paisa" />
           
              
                    
                <br>
                 <div class="form-group">
                     <label for="amount">amount:</label>
                   
                    <input name="amount"  class="form-control" value="<%= (empty(params.get("amount"))) ? session.getAttribute("amount") : params.get("amount")%>" />
                 </div>
                  <div class="form-group">
                     <label for="firstname">Name:</label>
                    
                     <input name="firstname" class="form-control" id="firstname" value="<%= (empty(params.get("firstname"))) ?session.getAttribute("Name") : params.get("firstname")%>" />
                </div>
                
                    <div class="form-group">
                     <label for="email">Email:</label>
                     <input name="email" class="form-control" id="email" value="<%= (empty(params.get("email"))) ? session.getAttribute("email") : params.get("email")%>" />
                 </div>
                   <div class="form-group">
                     <label for="phone">Phone:</label> 
                    
                    <input name="phone" class="form-control" value="<%= (empty(params.get("phone"))) ? session.getAttribute("omobile") : params.get("phone")%>" />
                   </div>
               <table>
                <tr>
                    <td colspan="2" hidden>Success URI: </td>
                    <td colspan="2" hidden><input name="surl" value="http://localhost:8080/Fabrinz/sms2.jsp" size="64" hidden/></td>
                </tr>
                <tr>
                    <td colspan="2" hidden>Failure URI: </td>
                    <td colspan="2" hidden><input name="furl" value="http://localhost:8080/Fabrinz/payumoney1.jsp" size="64" hidden/></td>
                </tr>

                <tr>
                    <% if (empty(hash)) { %>
                    <td colspan="4"><input type="submit" class="btn btn-success" value="Submit" /></td>
                        <% }%>
                </tr>
            </table>
                </form>
                </div>
                <div class="col-sm-4 ">
     
    </div>

    </body>
</html>
