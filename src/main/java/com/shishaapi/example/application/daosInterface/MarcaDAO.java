package com.shishaapi.example.application.daosInterface;

import com.shishaapi.example.application.dtos.MarcaDTO;

import java.util.List;

public interface MarcaDAO {

    List<MarcaDTO> getAllMarcas();

    void insertMarca(MarcaDTO marcaDTO);

    boolean isMarcaExists(MarcaDTO marcaDTO);

    List<MarcaDTO> getMarcasAndTabacos();

    MarcaDTO getMarcaById(int id);

    MarcaDTO getMarcaByName(String marca);

    void getConnected();

    void deleteMarca(int id);
}
