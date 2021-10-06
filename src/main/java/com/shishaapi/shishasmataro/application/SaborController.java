package com.shishaapi.shishasmataro.application;

import com.shishaapi.shishasmataro.application.daosInterface.SaborDAO;
import com.shishaapi.shishasmataro.application.dtos.SaborDTO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class SaborController {

    private final SaborDAO saborDAO;

    public SaborController(SaborDAO saborDAO) {
        this.saborDAO = saborDAO;
    }

    public List<SaborDTO> getAllSabores(){
        return this.saborDAO.getAllSabores();
    }
}
