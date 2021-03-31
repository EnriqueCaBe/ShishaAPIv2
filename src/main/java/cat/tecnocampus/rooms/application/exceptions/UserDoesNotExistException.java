package cat.tecnocampus.rooms.application.exceptions;

public class UserDoesNotExistException extends RuntimeException{
    public UserDoesNotExistException(String username) {
        super("User " + username + " doesn't exist");
    }

}
