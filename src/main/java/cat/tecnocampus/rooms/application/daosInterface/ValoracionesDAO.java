package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.ValoracionDTO;

import java.util.List;

public interface ValoracionesDAO {
    List<ValoracionDTO> getValoracionesByMezclaName(String mezclaname);
    void postValoracion(ValoracionDTO valoracion,String user, String mezcla);
}
