package com.shishaapi.example.application;

import com.shishaapi.example.application.dtos.FormatoDTO;
import com.shishaapi.example.application.exceptions.FormatoDoesExistsException;
import com.shishaapi.example.persistence.FormatoDAO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class FormatoController {

    private final FormatoDAO formatoDAO;

    public FormatoController(FormatoDAO formatoDAO) {
        this.formatoDAO = formatoDAO;
    }

    public void postFormato(FormatoDTO formatoDTO) {
        if(!formatoDAO.isFormatoExists(formatoDTO)){
            formatoDAO.insertFormato(formatoDTO);
        }
        else{
            throw new FormatoDoesExistsException();
        }
    }

    public List<FormatoDTO> getAllFormato() {
        return formatoDAO.getAllFormatos();
    }
}
