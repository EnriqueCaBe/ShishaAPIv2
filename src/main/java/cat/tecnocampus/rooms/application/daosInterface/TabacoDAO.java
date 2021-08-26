package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoSearchDTO;

import java.util.Collection;
import java.util.List;

public interface TabacoDAO {

    void insertTabaco(TabacoDTO tabaco);

    boolean isTabacoExists(TabacoDTO tabacoDTO);

    List<TabacoDTO> getAllTabaco();

    List<TabacoDTO> getTabacosByMarca(MarcaDTO marca);

    void updateImage(String imagen, int id);

    TabacoDTO getTabacoById(int id);

    List<TabacoDTO> getTabacosBySearch(TabacoSearchDTO tabacoSearchDTO);

    List<TabacoDTO> getTabacosByName(String tabaco_name);

    Collection<? extends TabacoDTO> getTabacosByMarcaName(String marca);

    Collection<? extends TabacoDTO> getTabacosByGramos(double gramos);

    Collection<? extends TabacoDTO> getTabacosByPrecio(double precio);

    void updateTabaco(TabacoDTO tabacoDTO);

    boolean canUpdate(TabacoDTO tabacoDTO);

    List<TabacoDTO> getNewTabacos(String lastWeekDate,String actualDateTime);
}
