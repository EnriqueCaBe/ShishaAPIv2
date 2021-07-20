package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.AssFormatoDTO;

import java.util.List;

public interface AssFormatoDAO {

    void insertAssFormato(AssFormatoDTO assFormatoDTO);

    boolean isAssFormatoExists(AssFormatoDTO assFormatoDTO);
}
