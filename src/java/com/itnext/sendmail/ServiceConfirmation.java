package com.itnext.sendmail;

import com.itnext.entities.User;
import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class ServiceConfirmation {
    
    
    public boolean sendReply(String nameTo,String emailTo ,String serviceStatus, String msg)
    {
        boolean test=false;
        
        String toName=nameTo;
        String toEmail=emailTo;
        String ss=serviceStatus;
        String fromEmail="abhishekkumawat9696@gmail.com";
        String password="abhishek12345";
        
        Properties props=new Properties();
        
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "465");
        props.put("mail.smtp.auth","true");
       // props.put("mail.smtp.starttls.enable","true");
        props.put("mail.smtp.ssl.enable","true");
        
        
        Session session=Session.getDefaultInstance(props,new javax.mail.Authenticator() {
        
        protected PasswordAuthentication getPasswordAuthentication()
        {
            return new PasswordAuthentication(fromEmail,password);
        }
        
        });
        try{
            MimeMessage message=new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmail));
            message.setSubject("ItNext Service");
            message.setText("Welcome "+nameTo+" in ItNext Service Website \n"
                    + "Your Service Request is "+ss+"\n"
                    + ""+msg+"\n\n\n"
                            + "Thank You Connecting with us.\n\n"
                            + "Regards : IT Next Team\n"
                            + "                 Abhishek kumawat\n"
                            + "                 9828132618");
            
            
            Transport.send(message);
            
            test=true;
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return test;
    }
    
    
    
    
    
    
}
