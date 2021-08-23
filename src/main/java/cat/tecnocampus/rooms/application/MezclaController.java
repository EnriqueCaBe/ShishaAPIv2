package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.daosInterface.MezclaDAO;
import cat.tecnocampus.rooms.application.daosInterface.PorcentajeDAO;
import cat.tecnocampus.rooms.application.dtos.MezclaDTO;
import cat.tecnocampus.rooms.application.dtos.PorcentajeDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.persistence.TabacoDAO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MezclaController {

    private final MezclaDAO mezclaDAO;
    private final PorcentajeDAO porcentajeDAO;
    private final TabacoDAO tabacoDAO;

    public MezclaController(MezclaDAO mezclaDAO, PorcentajeDAO porcentajeDAO, TabacoDAO tabacoDAO) {
        this.mezclaDAO = mezclaDAO;
        this.porcentajeDAO = porcentajeDAO;
        this.tabacoDAO = tabacoDAO;
    }

    public List<MezclaDTO> getAllMezclas(){
        return mezclaDAO.getAllMezclas();
    }

    public MezclaDTO getMezclaById(int id){
        MezclaDTO mezclaDTO = mezclaDAO.getMezclaById(id);
        mezclaDTO.setTabacos(porcentajeDAO.getPorcentajesByMezclaId(id));
        for(PorcentajeDTO porcentajeDTO: mezclaDTO.getTabacos()){
            TabacoDTO tabacoDTO = tabacoDAO.getTabacoById(porcentajeDTO.getTabacoDTO());
            porcentajeDTO.setTabaco_name(tabacoDTO.getName_tabaco());
        }
        return mezclaDTO;
    }

    public int insertMezcla(MezclaDTO mezclaDTO) {
        mezclaDAO.insertMezcla(mezclaDTO);
        return mezclaDAO.getMezclaIdByName(mezclaDTO.getName());
    }
}
