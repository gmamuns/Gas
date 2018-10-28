<%-- 
    Document   : sendmail
    Created on : Sep 9, 2018, 12:51:37 AM
    Author     : mamuns
--%>
<%@page import="static utils.TestSampleEmail.main"%>

<%@page import="javax.mail.*"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>

<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%@page import="utils.SendEmail"%>
<%@page import="utils.Test"%>
<%@page import="dao.RegistrationDao"%>
<%@page import="dao.SmokeDao"%>
<%@page import="model.SmokeModel"%>
<%@include file="../properties.jsp" %> %>

<%

    String toEmail = "ymamuns@yahoo.com";
    String emailSubject = "Danger";
    String emailMsg = "Danger : Check your device.";
/*
RegistrationDao dao = new RegistrationDao(driver, url, user, password);
int stat = dao.sendMail(toEmail, emailSubject, emailMsg);
out.println(stat);
  */
//SendEmail sent = new SendEmail(toEmail, emailSubject, emailMsg);
utils.TestSampleEmail tst = new utils.TestSampleEmail();
tst.main();

out.println("Sent");
%>