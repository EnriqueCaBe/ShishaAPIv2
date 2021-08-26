package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.MezclaDTO;
import cat.tecnocampus.rooms.application.dtos.PorcentajeDTO;

import java.util.List;

public interface MezclaDAO {
    List<MezclaDTO> getAllMezclas();

    MezclaDTO getMezclaById(int id);

    void insertMezcla(MezclaDTO mezclaDTO);

    int getMezclaIdByName(String name);

    void insertPorcentajesByMezcla(int mezcla, List<PorcentajeDTO> list);
}
