package cat.tecnocampus.rooms.application.exceptions;

public class AlreadyValoredThisMixException extends RuntimeException{
    public AlreadyValoredThisMixException() {
        super("You have already valued this mix");
    }

}
