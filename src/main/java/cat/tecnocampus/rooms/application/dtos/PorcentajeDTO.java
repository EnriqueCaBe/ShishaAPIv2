package cat.tecnocampus.rooms.application.dtos;

public class PorcentajeDTO {
    private int id;
    private double porcentaje;
    private int tabacoDTO;
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
        return tabacoDTO;
    }

    public void setTabacoDTO(int tabacoDTO) {
        this.tabacoDTO = tabacoDTO;
    }

    public int getMezcla() {
        return mezcla;
    }

    public void setMezcla(int mezcla) {
        this.mezcla = mezcla;
    }
}
