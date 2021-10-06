package com.shishaapi.shishasmataro.application.exceptions;

import com.shishaapi.shishasmataro.application.dtos.TabacoDTO;

public class CantUpdateTabacoException extends RuntimeException{
    public CantUpdateTabacoException(TabacoDTO tabacoDTO) {
        super("No se puede actualizar el tabaco "+tabacoDTO.getName_tabaco());
    }
}
