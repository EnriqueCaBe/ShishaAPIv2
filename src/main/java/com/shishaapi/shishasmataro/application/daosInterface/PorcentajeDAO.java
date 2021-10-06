package com.shishaapi.shishasmataro.application.daosInterface;

import com.shishaapi.shishasmataro.application.dtos.PorcentajeDTO;

import java.util.List;

public interface PorcentajeDAO {

    List<PorcentajeDTO> getPorcentajesByMezclaId(int id);

}
