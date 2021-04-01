package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.daosInterface.UserDAO;
import cat.tecnocampus.rooms.application.dtos.UserDTO;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserController {

    UserDAO userDAO;
    private BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

    public UserController(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    public List<UserDTO> getAllUsers() {
        return userDAO.getAllUsers();
    }

    public UserDTO getUserByUsername(String username) {
        return userDAO.getUserByUsername(username);
    }

    public void postUser(UserDTO userDTO) {
        UserDTO user = new UserDTO();
        user.setEmail(userDTO.getEmail());
        user.setUsername(userDTO.getUsername());
        System.out.println(userDTO.getPassword());
        user.setPassword("{bcrypt}"+encoder.encode(userDTO.getPassword()));
        userDAO.postUser(user);
    }

}
