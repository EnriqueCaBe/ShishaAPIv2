package com.shishaapi.shishasmataro.application.daosInterface;

import com.shishaapi.shishasmataro.application.dtos.MarcaDTO;
import com.shishaapi.shishasmataro.application.dtos.TabacoDTO;
import com.shishaapi.shishasmataro.application.dtos.UsuarioDTO;

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
