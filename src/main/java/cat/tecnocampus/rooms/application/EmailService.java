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
        helper.setSubject("Bienvenido a ShishaMixer");
        helper.setText("<!DOCTYPE html>\n" +
                "    <head>\n" +
                "\n" +
                "    </head>\n" +
                "    <body style=\"font-family:'Calibri';\">\n" +
                "        <center><div style=\"background-color: rgba(0, 0, 0, 0.432); border: 2px rgba(255, 255, 255, 0.637) solid; border-radius: 20px; width: 50%;\">\n" +
                "            <img src=\"https://i.ibb.co/SX7GkQp/Shisha-Mixer.jpg\" style=\"width: 25%; border-radius: 50%; border:4px solid rgba(0, 0, 0, 0.753); margin: 30px;\" >\n" +
                "            <h1>Welcome to ShishaMixer</h1>\n" +
                "            <div style=\"text-align: left; padding: 10px\">\n" +
                "                <h2>Hi "+userDTO.getUsername()+",</h2>\n" +
                "                <p style=\"text-align: justify; font-size: 20px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed sem sit amet mauris volutpat efficitur. Ut vehicula quam non turpis consectetur consectetur. Nullam nec leo tincidunt, imperdiet elit vitae, tempor libero. Quisque sagittis neque mi, scelerisque elementum est feugiat sed. In vitae velit efficitur, rhoncus est nec, luctus lorem. Aliquam volutpat mi sed velit hendrerit molestie. Aenean non sagittis lacus, id accumsan metus. Praesent ut condimentum quam.</p>\n" +
                "            </div>\n" +
                "        </div></center>\n" +
                "\n" +
                "\n" +
                "    </body>\n" +
                "</html>", true);

        javaMailSender.send(message);
    }
}
