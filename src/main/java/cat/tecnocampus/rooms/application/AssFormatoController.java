package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.daosInterface.AssFormatoDAO;
import cat.tecnocampus.rooms.application.dtos.AssFormatoDTO;
import cat.tecnocampus.rooms.application.exceptions.AssFormatoDoesExistsException;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class AssFormatoController {

    private final AssFormatoDAO assFormatoDAO;

    public AssFormatoController(AssFormatoDAO assFormatoDAO) {
        this.assFormatoDAO = assFormatoDAO;
    }

    public void insertAssFormato(AssFormatoDTO assFormatoDTO){
        if(!assFormatoDAO.isAssFormatoExists(assFormatoDTO)){
            assFormatoDAO.insertAssFormato(assFormatoDTO);
        }
        else{
            throw new AssFormatoDoesExistsException();
        }
    }
}
