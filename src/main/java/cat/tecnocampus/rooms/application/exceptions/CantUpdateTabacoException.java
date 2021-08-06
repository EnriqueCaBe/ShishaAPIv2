package cat.tecnocampus.rooms.application.exceptions;

import cat.tecnocampus.rooms.application.dtos.TabacoDTO;

public class CantUpdateTabacoException extends RuntimeException{
    public CantUpdateTabacoException(TabacoDTO tabacoDTO) {
        super("No se puede actualizar el tabaco "+tabacoDTO.getName_tabaco());
    }
}
