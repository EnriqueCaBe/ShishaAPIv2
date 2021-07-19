package cat.tecnocampus.rooms.application.exceptions;

public class FormatoDoesExistsException extends RuntimeException{
    public FormatoDoesExistsException() {
        super("Formato does exists");
    }
}
