package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.FormatoDTO;

import java.util.List;

public interface FormatoDAO {

    void insertFormato(FormatoDTO formatoDTO);

    boolean isFormatoExists(FormatoDTO formatoDTO);

    List<FormatoDTO> getAllFormatos();
}
