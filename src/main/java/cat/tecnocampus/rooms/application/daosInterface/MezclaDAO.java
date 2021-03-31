package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.MezclaDTO;

import java.util.List;

public interface MezclaDAO {
    List<MezclaDTO> getAllMixes();
    void postMix(MezclaDTO mezcla);
}
