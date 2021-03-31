package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.UserDTO;

import java.util.List;

public interface UserDAO {
    List<UserDTO> getAllUsers();
    UserDTO getUserByUsername(String username);
    void postUser(UserDTO user);
}
