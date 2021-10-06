package com.shishaapi.example.application.daosInterface;

import com.shishaapi.example.application.dtos.SaborDTO;

import java.util.List;

public interface SaborDAO {
    List<SaborDTO> getAllSabores();
    void insertSabor(SaborDTO sabor);
    boolean existSabor(String sabor);
}
