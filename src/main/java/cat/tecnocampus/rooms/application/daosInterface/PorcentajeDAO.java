package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.PorcentajeDTO;

import java.util.List;

public interface PorcentajeDAO {

    List<PorcentajeDTO> getPorcentajesByMezclaId(int id);

}
