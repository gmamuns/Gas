package utils;

import java.util.Properties;
import javax.mail.AuthenticationFailedException;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;

public class Mail {
    String to ;

    public Mail(String to) {
        this.to = to;
    }
    
    public int sendMail() {
        int status = 0;

        String from = "sensordeveloper@gmail.com";
        String subject = "Caution: Danger";
        String message = "Warnning : Your Device at risk";
        String login = "sensordeveloper";
        String password = "devadmin@2018";

        try {
            Properties props = new Properties();
            props.setProperty("mail.host", "smtp.gmail.com");
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.auth", "true");
            props.setProperty("mail.smtp.starttls.enable", "true");

            Authenticator auth = new SMTPAuthenticator(login, password);

            Session session = Session.getInstance(props, auth);

            MimeMessage msg = new MimeMessage(session);
            msg.setText(message);
            msg.setSubject(subject);
            msg.setFrom(new InternetAddress(from));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            Transport.send(msg);
            status = 1;

        } catch (AuthenticationFailedException ex) {
            System.out.println("Authentication failed");
        } catch (AddressException ex) {
            System.out.println("Wrong email address");
        } catch (MessagingException ex) {
            System.out.println(ex.getMessage());

        }

        return status;
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

}
