package com.shishaapi.example.application.daosInterface;

import com.shishaapi.example.application.dtos.AssFormatoDTO;

public interface AssFormatoDAO {

    void insertAssFormato(AssFormatoDTO assFormatoDTO);

    boolean isAssFormatoExists(AssFormatoDTO assFormatoDTO);
}
