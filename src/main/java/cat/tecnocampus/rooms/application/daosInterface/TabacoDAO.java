package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.FormatoDTO;
import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.domain.Tabaco;

import java.util.List;

public interface TabacoDAO {

    void insertTabaco(TabacoDTO tabaco);

    boolean isTabacoExists(TabacoDTO tabacoDTO);

    List<TabacoDTO> getAllTabaco();

    List<TabacoDTO> getTabacosByMarca(MarcaDTO marcaDTO);
}
