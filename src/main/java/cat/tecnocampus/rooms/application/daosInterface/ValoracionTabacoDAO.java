package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.ValoracionDTO;
import cat.tecnocampus.rooms.application.dtos.ValoracionTabacoDTO;

import java.util.List;

public interface ValoracionTabacoDAO {
    List<ValoracionTabacoDTO> getValoracionesByTabacoId(String tabaco);
    void postValoracionTabaco(ValoracionTabacoDTO valoracion);
}
