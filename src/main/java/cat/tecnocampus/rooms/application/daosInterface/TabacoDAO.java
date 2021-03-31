package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.FormatoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.domain.Tabaco;

import java.util.List;

public interface TabacoDAO {
    public TabacoDTO getTabacoByName(String name);
    public List<TabacoDTO> getTabacos();
    void postTabaco(TabacoDTO tabaco, String marca);

    void deleteTabaco(String tabaco);

    List<TabacoDTO> getTabacoByMarca(String marca);

    TabacoDTO postFormato(FormatoDTO formatoDTO, String tabaco);
}
