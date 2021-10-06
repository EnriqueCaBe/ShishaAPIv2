package com.shishaapi.example.api.errorHandling;

import cat.tecnocampus.rooms.application.exceptions.*;
import com.shishaapi.example.application.exceptions.FormatoDoesExistsException;
import com.shishaapi.example.application.exceptions.MarcaDoesExistsException;
import com.shishaapi.example.application.exceptions.TabacoDoesExistsException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ExceptionHandlingAdvice {

    @ExceptionHandler({ MarcaDoesExistsException.class, TabacoDoesExistsException.class, FormatoDoesExistsException.class})
    @ResponseBody
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    String objectDoesntExists(Exception exception) {
        return exception.getMessage();
    }
}
