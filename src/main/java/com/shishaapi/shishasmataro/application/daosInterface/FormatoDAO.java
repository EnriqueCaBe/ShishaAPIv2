package com.shishaapi.shishasmataro.application.daosInterface;

import com.shishaapi.shishasmataro.application.dtos.FormatoDTO;
import com.shishaapi.shishasmataro.application.dtos.TabacoDTO;

import java.util.List;

public interface FormatoDAO {

    void insertFormato(FormatoDTO formatoDTO);

    boolean isFormatoExists(FormatoDTO formatoDTO);

    List<FormatoDTO> getAllFormatos();

    List<FormatoDTO> getFormatosByTabaco(TabacoDTO tabacoDTO);
}
