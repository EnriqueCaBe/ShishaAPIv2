package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.daosInterface.SaborDAO;
import cat.tecnocampus.rooms.application.dtos.SaborDTO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class SaborController {

    private final SaborDAO saborDAO;

    public SaborController(SaborDAO saborDAO) {
        this.saborDAO = saborDAO;
    }

    public List<SaborDTO> getAllSabores(){
        return this.saborDAO.getAllSabores();
    }
}
