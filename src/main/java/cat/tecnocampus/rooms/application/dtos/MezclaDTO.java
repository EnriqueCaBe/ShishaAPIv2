package cat.tecnocampus.rooms.application.dtos;

import java.util.List;

public class MezclaDTO {
    private String name;
    private List<PorcentajeDTO> partes;

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
}
