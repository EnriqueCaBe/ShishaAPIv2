package cat.tecnocampus.rooms.api.errorHandling;

import cat.tecnocampus.rooms.application.exceptions.MarcaDoesNotExistException;
import cat.tecnocampus.rooms.application.exceptions.TabacoDoesNotExistException;
import cat.tecnocampus.rooms.application.exceptions.UserDoesNotExistException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ExceptionHandlingAdvice {

    @ExceptionHandler({ MarcaDoesNotExistException.class, TabacoDoesNotExistException.class, UserDoesNotExistException.class})
    @ResponseBody
    @ResponseStatus(HttpStatus.NOT_FOUND)
    String objectAlreadyExists(Exception exception) {
        return exception.getMessage();
    }
}
