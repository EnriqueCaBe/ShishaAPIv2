package cat.tecnocampus.rooms.application.exceptions;

public class UserAlreadyExistsException extends RuntimeException{
    public UserAlreadyExistsException(String name) {
        super("User " + name + " already exist");
    }

}
