package Functions;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class Mail {
    public static void send_Email_Without_Attach(String toEmail, String subject, String body) throws Exception {

        Properties props = new Properties();
        props.put("mail.smtp.auth", true);
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.starttls.enable", true);
        final String userName = "karobest3@gmail.com";
        final String password = "KKkk0902";
    
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
        	@Override 
        	protected PasswordAuthentication getPasswordAuthentication() {
        		return new PasswordAuthentication(userName, password);
        	}
        });
// — Create a new message –
        Message msg = new MimeMessage(session);
// — Set the FROM and TO fields –
        msg.setFrom(new InternetAddress(toEmail));
        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(userName));
        MimeBodyPart textPart = new MimeBodyPart();
        Multipart multipart = new MimeMultipart();
        textPart.setText(body);
        multipart.addBodyPart(textPart);
        msg.setText(body);
// — Set the subject and body text –
        msg.setSubject(subject);
        msg.setHeader("X-Mailer", "LOTONtechEmail");
        msg.saveChanges();
// — Send the message –
        Transport.send(msg);
    }
}
