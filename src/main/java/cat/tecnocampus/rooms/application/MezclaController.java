package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.daosInterface.MezclaDAO;
import cat.tecnocampus.rooms.application.daosInterface.PorcentajeDAO;
import cat.tecnocampus.rooms.application.dtos.MezclaDTO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MezclaController {

    MezclaDAO mezclaDAO;
    PorcentajeDAO porcentajeDAO;

    public MezclaController(MezclaDAO mezclaDAO, PorcentajeDAO porcentajeDAO) {
        this.mezclaDAO = mezclaDAO;
        this.porcentajeDAO = porcentajeDAO;
    }

    public List<MezclaDTO> getAllMezclas(){
        return mezclaDAO.getAllMezclas();
    }

    public MezclaDTO getMezclaById(int id){
        MezclaDTO mezclaDTO = mezclaDAO.getMezclaById(id);
        mezclaDTO.setTabacos(porcentajeDAO.getPorcentajesByMezclaId(id));
        return mezclaDTO;
    }
}
