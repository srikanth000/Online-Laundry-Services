<%-- 
    Document   : sms store.jsp
    Created on : Jul 24, 2017, 11:13:26 PM
    Author     : shekhar
--%>

<%@page import="java.util.Random"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.sql.*"%>

<%

// Replace with your username
String user = "sirkanth007";

// Replace with your API KEY (We have sent API KEY on activation email, also available on panel)
String apikey = "N5GUXlZVSlcBP6AiYiNC";

// Replace with the destination mobile Number to which you want to send sms
String mobile = (String)session.getAttribute("fmobile");

// Replace if you have your own Sender ID, else donot change
String senderid = "MYTEXT";

// Replace with your Message content
 Random rand = new Random();
   int n = rand.nextInt(900000) + 100000;
String   message = Integer.toString(n);

session.setAttribute("otp",message);
String pass=(String)session.getAttribute("password");
String message1="WelCome to Fabrinz.Your password is"+" :"+pass;
// For Plain Text, use "txt" ; for Unicode symbols or regional Languages like hindi/tamil/kannada use "uni"
String type="txt";

//Prepare Url
URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;

//encoding message 
String encoded_message=URLEncoder.encode(message1);

//Send SMS API
String mainUrl="http://smshorizon.co.in/api/sendsms.php?";

//Prepare parameter string 
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("user="+user); 
sbPostData.append("&apikey="+apikey);
sbPostData.append("&message="+encoded_message);
sbPostData.append("&mobile="+mobile);
sbPostData.append("&senderid="+senderid);
sbPostData.append("&type="+type);

//final string
mainUrl = sbPostData.toString();
try
{
    //prepare connection
    myURL = new URL(mainUrl);
    myURLConnection = myURL.openConnection();
    myURLConnection.connect();
    reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
    //reading response 
    String respose;
    while ((respose = reader.readLine()) != null) 
    //print response 
    System.out.println(response);
    
    //finally close connection
    reader.close();
    response.sendRedirect("flogin.jsp");
} 
catch (IOException e) 
{ 
	e.printStackTrace();
} 

%>