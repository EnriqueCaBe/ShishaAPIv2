package cat.tecnocampus.rooms.application.dtos;

import java.util.List;

public class MezclaDTO {
    private String name;
    private List<PorcentajeDTO> partes;
    private List<ValoracionDTO> valoraciones;

    public MezclaDTO(List<PorcentajeDTO> partes) {
        this.partes = partes;
    }

    public MezclaDTO() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<PorcentajeDTO> getPartes() {
        return partes;
    }

    public void setPartes(List<PorcentajeDTO> partes) {
        this.partes = partes;
    }

    public List<ValoracionDTO> getValoraciones() {
        return valoraciones;
    }

    public void setValoraciones(List<ValoracionDTO> valoraciones) {
        this.valoraciones = valoraciones;
    }
}
