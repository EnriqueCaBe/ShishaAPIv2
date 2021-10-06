package com.shishaapi.shishasmataro.application.daosInterface;

import com.shishaapi.shishasmataro.application.dtos.AssFormatoDTO;

public interface AssFormatoDAO {

    void insertAssFormato(AssFormatoDTO assFormatoDTO);

    boolean isAssFormatoExists(AssFormatoDTO assFormatoDTO);
}
