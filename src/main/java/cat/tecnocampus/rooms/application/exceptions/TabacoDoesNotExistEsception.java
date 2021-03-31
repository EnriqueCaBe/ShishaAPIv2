package cat.tecnocampus.rooms.application.exceptions;

public class TabacoDoesNotExistEsception extends RuntimeException{
    public TabacoDoesNotExistEsception(String name) {
        super("Tabaco " + name + " doesn't exist");
    }
}
