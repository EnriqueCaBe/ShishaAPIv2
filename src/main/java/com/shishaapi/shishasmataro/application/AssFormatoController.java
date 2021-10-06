package com.shishaapi.shishasmataro.application;

import com.shishaapi.shishasmataro.application.daosInterface.AssFormatoDAO;
import com.shishaapi.shishasmataro.application.dtos.AssFormatoDTO;
import com.shishaapi.shishasmataro.application.exceptions.AssFormatoDoesExistsException;
import org.springframework.stereotype.Component;

@Component
public class AssFormatoController {

    private final AssFormatoDAO assFormatoDAO;

    public AssFormatoController(AssFormatoDAO assFormatoDAO) {
        this.assFormatoDAO = assFormatoDAO;
    }

    public void insertAssFormato(AssFormatoDTO assFormatoDTO){
        if(!assFormatoDAO.isAssFormatoExists(assFormatoDTO)){
            assFormatoDAO.insertAssFormato(assFormatoDTO);
        }
        else{
            throw new AssFormatoDoesExistsException();
        }
    }
}
