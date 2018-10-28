package utils;

//Source :: 4th year project
// Status : ok 
//In main method ::  
//int status = send("ymamuns@yahoo.com", "Hello", "customised");
//System.out.println(status);
import java.util.Date;
import javax.mail.*;
import java.util.Properties;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.security.auth.Subject;

public class SendEmail {
    String to,subject,msg;

    public SendEmail(){}
    public SendEmail(String to, String subject, String msg) throws MessagingException {
        this.to = to;
        this.subject = subject;
        this.msg = msg;
        send(to, subject, msg);
    }


    //ok from java class, Not Working for jsp
    public  void send(String to, String subject, String msg) throws AddressException, MessagingException {
        final String username = "sensordeveloper";
        final String password = "devadmin@2018";
        final String from = "sensordeveloper@gmail.com";

        // Set properties
        Properties props = new Properties();
        props.put("mail.smtp.auth", true);
        props.put("mail.smtp.starttls.enable", true);
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }

        });
       
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(msg);
            Transport.send(message);


    }

    
}
