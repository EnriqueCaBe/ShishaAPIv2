package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoSearchDTO;
import cat.tecnocampus.rooms.application.dtos.UsuarioDTO;

import java.util.Collection;
import java.util.List;

public interface TabacoDAO {

    void insertTabaco(TabacoDTO tabaco);

    boolean isTabacoExists(TabacoDTO tabacoDTO);

    List<TabacoDTO> getAllTabaco();

    List<TabacoDTO> getTabacosByMarca(MarcaDTO marca);

    void updateImage(String imagen, int id);

    TabacoDTO getTabacoById(int id);

    void updateTabaco(TabacoDTO tabacoDTO);

    boolean canUpdate(TabacoDTO tabacoDTO);

    List<TabacoDTO> getNewTabacos();

    void updateNovedades(List<TabacoDTO> list);

    List<TabacoDTO> getLastNovedades(String last2WeeksDateTime, String lastWeekDateTime);

    List<TabacoDTO> getTabacosBySabor(String sabor);

    UsuarioDTO getUsuarioByName(String username);
}
