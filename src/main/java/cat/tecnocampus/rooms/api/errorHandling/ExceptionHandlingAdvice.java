package cat.tecnocampus.rooms.api.errorHandling;

import cat.tecnocampus.rooms.application.exceptions.*;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.text.Normalizer;

@ControllerAdvice
public class ExceptionHandlingAdvice {

    @ExceptionHandler({ MarcaDoesExistsException.class, TabacoDoesExistsException.class, FormatoDoesExistsException.class})
    @ResponseBody
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    String objectDoesntExists(Exception exception) {
        return exception.getMessage();
    }
}
