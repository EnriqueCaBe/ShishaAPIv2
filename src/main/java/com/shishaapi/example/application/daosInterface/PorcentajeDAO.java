package com.shishaapi.example.application.daosInterface;

import com.shishaapi.example.application.dtos.PorcentajeDTO;

import java.util.List;

public interface PorcentajeDAO {

    List<PorcentajeDTO> getPorcentajesByMezclaId(int id);

}
