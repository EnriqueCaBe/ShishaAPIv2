package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.*;
import cat.tecnocampus.rooms.application.exceptions.FormatoDoesExistsException;
import cat.tecnocampus.rooms.persistence.*;
import org.springframework.stereotype.Component;

@Component
public class FormatoController {

    FormatoDAO formatoDAO;

    public FormatoController(FormatoDAO formatoDAO) {
        this.formatoDAO = formatoDAO;
    }

    public void postFormato(FormatoDTO formatoDTO) {
        if(!formatoDAO.isFormatoExists(formatoDTO)){
            formatoDAO.insertFormato(formatoDTO);
        }
        else{
            throw new FormatoDoesExistsException();
        }
    }
}
