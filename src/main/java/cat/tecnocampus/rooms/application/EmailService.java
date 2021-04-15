package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.UserDTO;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

@Controller
public class EmailService {
    private JavaMailSender javaMailSender;

    public EmailService(JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    public void sendMail(UserDTO userDTO) throws MessagingException {

        MimeMessage message = javaMailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        helper.setTo(userDTO.getEmail());
        helper.setSubject("Welcome to ShishaMixer");
        helper.setText("<!DOCTYPE html>\n" +
                "    <head>\n" +
                "\n" +
                "    </head>\n" +
                "    <body >\n" +
                "        <center><div style=\"background-color: white; border: 2px black solid; border-radius: 20px;\">\n" +
                "            <h1>Welcome</h1>\n" +
                "        </div></center>\n" +
                "\n" +
                "\n" +
                "    </body>\n" +
                "</html>", true);

        helper.setFrom("shishamixer300@gmail.com");

        javaMailSender.send(message);
    }
}
