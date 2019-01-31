import java.io.IOException;
import java.util.Properties;
import javax.mail.AuthenticationFailedException;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//go to admin.google.com allow less secure apps

@WebServlet(name = "EmailServlet", urlPatterns = {"/EmailServlet"})
public class EmailSend extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        final String err = "/error.jsp";   // eror page show :: request.getAttribute("ErrorMessage")
        final String succ = "/success.jsp"; // success page

        //http://163.47.39.66:8080/JavaEmail/EmailServlet?to=ymamuns@yahoo.com"&subject="Danger"&message="Warnning : Your Device at risk"
        // send a mail to ymamuns@yahoo.com with subject and message
        String to = request.getParameter("to");
        String subject = request.getParameter("subject");
        //String subject = "Caution: Danger";
        String message = request.getParameter("message");
        //String message = "Warnning : Your Device at risk";
        
       // 
        String from = "sensordeveloper@gmail.com";  // email address
        String login ="sensordeveloper";  //prefix of email      
        String password ="********"; //email password

        RequestDispatcher dispatcher = request.getRequestDispatcher(succ);

        try {
            Properties props = new Properties();            
            props.setProperty("mail.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");
            props.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");
            props.setProperty("mail.smtp.starttls.enable", "true");
            
            Authenticator auth = new SMTPAuthenticator(login, password);

            Session session = Session.getInstance(props, auth);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(message);
            msg.setSubject(subject);
            msg.setFrom(new InternetAddress(from));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            Transport.send(msg);

        } catch (AuthenticationFailedException ex) {
           
            request.setAttribute("ErrorMessage", "Authentication failed");
            dispatcher = request.getRequestDispatcher(err);
           

        } catch (AddressException ex) {
            
            request.setAttribute("ErrorMessage", "Wrong email address");
            dispatcher = request.getRequestDispatcher(err);


        } catch (MessagingException ex) {
           
            request.setAttribute("ErrorMessage", ex.getMessage());
            dispatcher = request.getRequestDispatcher(err);

        }

        dispatcher.forward(request, response);
        
        
    }

    private class SMTPAuthenticator extends Authenticator {

        private PasswordAuthentication authentication;

        public SMTPAuthenticator(String login, String password) {
            authentication = new PasswordAuthentication(login, password);
        }

        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return authentication;
        }
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
