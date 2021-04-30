package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.FormatoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.domain.Tabaco;

import java.util.List;

public interface TabacoDAO {
    public List<TabacoDTO> getTabacos();
    void postTabaco(TabacoDTO tabaco, String marca);

    void deleteTabaco(String tabaco);

    List<TabacoDTO> getTabacoByMarca(String marca);

    TabacoDTO postFormato(FormatoDTO formatoDTO, String tabaco, String marca);

    TabacoDTO getTabacoByName(String tabaco, String marca);

    TabacoDTO getTabacoByID(String id);

    void updateNotaMedia(String tabaco, double notaMedia);
}
