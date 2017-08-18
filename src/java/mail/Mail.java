package mail;



import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

	public class Mail {

		public Mail() {
		}
		
		
		public boolean mailconfirmation(String to,String name,String mobile) throws MessagingException
		{
                    System.out.println("hii rangu");
			String host="smtp.gmail.com";
String username="margamsrikanth7@gmail.com";
			String password="7418529630";//emailid password
String from="margamsrikanth7@gmail.com";// email from which u have to send	
String subject="Confirmation mail by Fabrinze";
String body="Dear  "+name+",Your account has been registered successfully with mobile number:"+mobile+" ";
	boolean sessionDebug=false;
	Properties props=System.getProperties();
	props.put("mail.host",host);
	props.put("mail.transport.protocol","smtp");
	props.put("mail.smtp.starttls.enable","true");
	props.put("mail.smtp.auth", "true");
props.put("mail.smtp.debug", "true");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.port", "25"); 
Session mailSession=Session.getDefaultInstance(props,null);
mailSession.setDebug(sessionDebug);
Message msg=new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress [] address={new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO,address);
msg.setSubject(subject);
msg.setSentDate(new Date());
msg.setText(body);
Transport tr=mailSession.getTransport("smtp");
tr.connect(host,username,password);
msg.saveChanges();
tr.sendMessage(msg,msg.getAllRecipients());
tr.close();
			//Transport.send(msg);
			return true;
		}
                
                
                public boolean forgotpassword(String to,String passwd) throws MessagingException
		{
                    System.out.println("hii rangu");
			String host="smtp.gmail.com";
String username="margamsrikanth7@gmail.com";
			String password="7418529630";//emailid password
String from="margamsrikanth7@gmail.com";// email from which u have to send	
String subject="Forgot password";
String body="Your password is:"+passwd+" ";
	boolean sessionDebug=false;
	Properties props=System.getProperties();
	props.put("mail.host",host);
	props.put("mail.transport.protocol","smtp");
	props.put("mail.smtp.starttls.enable","true");
	props.put("mail.smtp.auth", "true");
props.put("mail.smtp.debug", "true");
props.put("mail.smtp.socketFactory.port", "465");
props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.port", "25"); 
Session mailSession=Session.getDefaultInstance(props,null);
mailSession.setDebug(sessionDebug);
Message msg=new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress [] address={new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO,address);
msg.setSubject(subject);
msg.setSentDate(new Date());
msg.setText(body);
Transport tr=mailSession.getTransport("smtp");
tr.connect(host,username,password);
msg.saveChanges();
tr.sendMessage(msg,msg.getAllRecipients());
tr.close();
			//Transport.send(msg);
			return true;
		}
	}	

		