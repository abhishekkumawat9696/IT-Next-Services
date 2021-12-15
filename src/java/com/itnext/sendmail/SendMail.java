
package com.itnext.sendmail;

import com.itnext.entities.User;
import java.util.Properties;
import java.util.Random;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
    
    public String getRandom()
    {
        Random rnd=new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }
    
    
    public boolean sendEmail(User user)
    {
        boolean test=false;
        
        String toEmail=user.getEmail();
        String fromEmail="yourmail@gmail.com";
        String password="**********";
        
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
            message.setText("Welcome "+ user.getName()+"in ItNext Service Website \n"
                    + "You have right platform to get best service for related to your All IT Services.\n\n\nPlease verify your account using this code : "+ user.getAuthCode());
            
            
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
