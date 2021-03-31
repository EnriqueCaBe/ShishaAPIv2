package cat.tecnocampus.rooms.application.dtos;

import java.util.List;

public class PorcentajeDTO {
    private String tabaco;
    private double porcentaje;

    public PorcentajeDTO(String tabaco, double porcentaje) {
        this.tabaco = tabaco;
        this.porcentaje = porcentaje;
    }

    public PorcentajeDTO() {
    }

    public String getTabaco() {
        return tabaco;
    }

    public void setTabaco(String tabaco) {
        this.tabaco = tabaco;
    }

    public double getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(double porcentaje) {
        this.porcentaje = porcentaje;
    }
}
