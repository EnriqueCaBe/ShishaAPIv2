package cat.tecnocampus.rooms.application.exceptions;

public class TabacoDoesNotExistException extends RuntimeException{
    public TabacoDoesNotExistException(String name) {
        super("Tabaco " + name + " doesn't exist");
    }
}
