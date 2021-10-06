package com.shishaapi.example.application.daosInterface;

import com.shishaapi.example.application.dtos.FormatoDTO;
import com.shishaapi.example.application.dtos.TabacoDTO;

import java.util.List;

public interface FormatoDAO {

    void insertFormato(FormatoDTO formatoDTO);

    boolean isFormatoExists(FormatoDTO formatoDTO);

    List<FormatoDTO> getAllFormatos();

    List<FormatoDTO> getFormatosByTabaco(TabacoDTO tabacoDTO);
}
