<%-- 
    Document   : mail
    Created on : Sep 15, 2018, 6:50:26 PM
    Author     : mamuns
--%>


<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.AuthenticationFailedException"%>
<%@page import="javax.mail.internet.AddressException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="java.util.Properties"%>
<%

        final String err = "/error.jsp";
        final String succ = "/success.jsp";

        String from = request.getParameter("from");
        String to = request.getParameter("to");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        String login = request.getParameter("login");
        String password = request.getParameter("password");

        RequestDispatcher dispatcher = request.getRequestDispatcher(succ);

        try {
            Properties props = new Properties();            
            props.setProperty("mail.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");
            props.setProperty("mail.smtp.starttls.enable", "true");
            
            
            
            Authenticator auth = new SMTPAuthenticator(login, password);
            

            Session session1 = Session.getInstance(props, auth);

            MimeMessage msg = new MimeMessage(session1);
            msg.setText(message);
            msg.setSubject(subject);
            msg.setFrom(new InternetAddress(from));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            Transport.send(msg);

        } catch (AuthenticationFailedException ex) {
            out.println("Authentication failed");
            
           // request.setAttribute("ErrorMessage", "Authentication failed");

            //dispatcher = request.getRequestDispatcher(err);

        } catch (AddressException ex) {
             out.println("Wrong email address");
            //request.setAttribute("ErrorMessage", "Wrong email address");

            //dispatcher = request.getRequestDispatcher(err);

        } catch (MessagingException ex) {
             out.println("ErrorMessage");
           // request.setAttribute("ErrorMessage", ex.getMessage());
           
           // dispatcher = request.getRequestDispatcher(err);
        }

       // dispatcher.forward(request, response);
       out.println("Mail Sent Successfully");


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
