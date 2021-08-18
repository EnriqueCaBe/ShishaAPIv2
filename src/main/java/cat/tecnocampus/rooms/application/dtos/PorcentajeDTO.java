package cat.tecnocampus.rooms.application.dtos;

public class PorcentajeDTO {
    private int id;
    private double porcentaje;
    private int tabaco;
    private String tabaco_name;
    private int mezcla;

    public PorcentajeDTO() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(double porcentaje) {
        this.porcentaje = porcentaje;
    }

    public int getTabacoDTO() {
        return tabaco;
    }

    public void setTabacoDTO(int tabacoDTO) {
        this.tabaco = tabacoDTO;
    }

    public String getTabaco_name() {
        return tabaco_name;
    }

    public void setTabaco_name(String tabaco_name) {
        this.tabaco_name = tabaco_name;
    }

    public int getMezcla() {
        return mezcla;
    }

    public void setMezcla(int mezcla) {
        this.mezcla = mezcla;
    }
}
