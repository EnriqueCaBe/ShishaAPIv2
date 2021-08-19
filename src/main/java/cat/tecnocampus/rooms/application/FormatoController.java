package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.*;
import cat.tecnocampus.rooms.application.exceptions.FormatoDoesExistsException;
import cat.tecnocampus.rooms.persistence.*;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class FormatoController {

    private final FormatoDAO formatoDAO;

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

    public List<FormatoDTO> getAllFormato() {
        return formatoDAO.getAllFormatos();
    }
}
