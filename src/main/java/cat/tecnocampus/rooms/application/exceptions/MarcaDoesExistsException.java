package cat.tecnocampus.rooms.application.exceptions;

public class MarcaDoesExistsException extends RuntimeException{
    public MarcaDoesExistsException(String name) {
        super("Marca " + name + " does exist");
    }

}
