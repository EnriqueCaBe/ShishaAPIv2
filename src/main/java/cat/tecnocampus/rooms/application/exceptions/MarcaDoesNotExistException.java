package cat.tecnocampus.rooms.application.exceptions;

public class MarcaDoesNotExistException extends RuntimeException{
    public MarcaDoesNotExistException(String name) {
        super("Marca " + name + " doesn't exist");
    }

}
