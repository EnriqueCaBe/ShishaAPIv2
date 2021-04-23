package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.EmailService;
import cat.tecnocampus.rooms.application.UserController;
import cat.tecnocampus.rooms.application.dtos.UserDTO;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Validated
@RestController
@CrossOrigin(origins = "*")
public class UserRESTController {
    UserController userController;
    EmailService emailService;

    public UserRESTController(UserController userController,EmailService emailService) {
        this.userController = userController;
        this.emailService = emailService;
    }

    @GetMapping("/0/users")
    public List<UserDTO> getAllUsers(){
        return userController.getAllUsers();
    }

    @GetMapping("/0/users/{username}")
    public UserDTO getUseByUsername(@PathVariable String username){
        return userController.getUserByUsername(username);
    }

    @PostMapping("/2/users")
    public void postUser(@RequestBody UserDTO userDTO) throws MessagingException {
        userController.postUser(userDTO);
        emailService.sendMail(userDTO);
    }

    @GetMapping("/1/me")
    public UserDTO getMe(Principal principal){
        return userController.getUserByUsername(principal.getName());
    }
}
