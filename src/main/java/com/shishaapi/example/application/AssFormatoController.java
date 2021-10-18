package com.shishaapi.example.application;

import com.shishaapi.example.application.daosInterface.AssFormatoDAO;
import com.shishaapi.example.application.dtos.AssFormatoDTO;
import com.shishaapi.example.application.dtos.FormatoDTO;
import com.shishaapi.example.application.exceptions.AssFormatoDoesExistsException;
import com.shishaapi.example.persistence.FormatoDAO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class AssFormatoController {

    private final AssFormatoDAO assFormatoDAO;
    private final FormatoDAO formatoDAO;

    public AssFormatoController(AssFormatoDAO assFormatoDAO, FormatoDAO formatoDAO) {
        this.assFormatoDAO = assFormatoDAO;
        this.formatoDAO = formatoDAO;
    }

    public void insertAssFormato(AssFormatoDTO assFormatoDTO){
        if(!assFormatoDAO.isAssFormatoExists(assFormatoDTO)){
            assFormatoDAO.insertAssFormato(assFormatoDTO);
        }
        else{
            throw new AssFormatoDoesExistsException();
        }
    }

    public void insertFormatoTabaco(int tabaco, List<FormatoDTO> formatos) {
        for(FormatoDTO formatoDTO: formatos) {
            if (!formatoDAO.isFormatoExists(formatoDTO)) {
                formatoDAO.insertFormato(formatoDTO);
            }
            AssFormatoDTO ass = new AssFormatoDTO(tabaco, formatoDTO.getId());
            if (!assFormatoDAO.isAssFormatoExists(ass)) {
                assFormatoDAO.insertAssFormato(ass);
            }
        }
    }
}
