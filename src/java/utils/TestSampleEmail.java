package utils;


import dao.RegistrationDao;
import javax.mail.MessagingException;
import utils.SendEmail;

public class TestSampleEmail {

    public static void main() throws MessagingException {
        
        final String username = "sensordeveloper";
        final String password = "devadmin@2018";
        final String from = "sensordeveloper@gmail.com";
       
        String toEmail = "ymamuns@yahoo.com";
        String emailSubject = "Danger";
        String emailMsg = "Danger : Check your device.";
        
        SendEmail sendEmail = new SendEmail(); //for send mail
        sendEmail.send(toEmail, emailSubject, emailMsg);
        System.out.println("Mail send !!!");
        
       /* 
       String toEmail = args[0];
        String emailSubject = args[1];
        String emailMsg = args[2];
        System.out.println("args1 : "+args[0]+"args 2 : "+args[1]+"args3 : "+args[2]);

        SendEmail sendEmail = new SendEmail(); //for send mail
        sendEmail.send(toEmail, emailSubject, emailMsg);
        System.out.println("Mail send !!!");
    
        /*
        RegistrationDao dao = new RegistrationDao();
         String stat = dao.sendMail(toEmail, emailSubject, emailMsg);
         System.out.println(stat);
        */
         //System.out.println( System.getProperty("user.name"));
    }

}
