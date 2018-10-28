package utils;



import dao.RegistrationDao;
import javax.mail.MessagingException;
import utils.SendEmail;

public class Test {

    public static void main(String[] args) throws MessagingException {
        
        final String username = "sensordeveloper";
        final String password = "devadmin@2018";
        final String from = "sensordeveloper@gmail.com";
        String toEmail = "ymamuns@yahoo.com";
        String emailSubject = "Danger";
        String emailMsg = "Danger : Check your device.";
/*
        SendEmail sendEmail = new SendEmail(); //for send mail
        int stat = sendEmail.send(toEmail, emailSubject, emailMsg);
        System.out.println(stat);
  */    
        RegistrationDao dao = new RegistrationDao();
         String stat = dao.sendMail(toEmail, emailSubject, emailMsg);
         System.out.println(stat);
        
         //System.out.println( System.getProperty("user.name"));
    }

}
