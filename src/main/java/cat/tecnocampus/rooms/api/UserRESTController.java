package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.UserController;
import cat.tecnocampus.rooms.application.dtos.UserDTO;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Validated
@RestController
public class UserRESTController {
    UserController userController;

    public UserRESTController(UserController userController) {
        this.userController = userController;
    }

    @GetMapping("/0/users")
    public List<UserDTO> getAllUsers(){
        return userController.getAllUsers();
    }

    @GetMapping("/0/users/{username}")
    public UserDTO getUseByUsername(@PathVariable String username){
        return userController.getUserByUsername(username);
    }

    @PostMapping("/1/users")
    public void postUser(@RequestBody UserDTO userDTO){
        userController.postUser(userDTO);
    }
}
