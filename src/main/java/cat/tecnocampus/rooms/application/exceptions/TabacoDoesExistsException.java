package cat.tecnocampus.rooms.application.exceptions;

public class TabacoDoesExistsException extends RuntimeException{
    public TabacoDoesExistsException(String name) {
        super("Tabaco " + name + " does exist");
    }
}
