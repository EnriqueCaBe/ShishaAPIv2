package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.FormatoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;

import java.util.List;

public interface FormatoDAO {

    void insertFormato(FormatoDTO formatoDTO);

    boolean isFormatoExists(FormatoDTO formatoDTO);

    List<FormatoDTO> getAllFormatos();

    List<FormatoDTO> getFormatosByTabaco(TabacoDTO tabacoDTO);
}
