package com.shishaapi.shishasmataro.application.daosInterface;

import com.shishaapi.shishasmataro.application.dtos.SaborDTO;

import java.util.List;

public interface SaborDAO {
    List<SaborDTO> getAllSabores();
    void insertSabor(SaborDTO sabor);
    boolean existSabor(String sabor);
}
