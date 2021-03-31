package cat.tecnocampus.rooms.application.dtos;

import cat.tecnocampus.rooms.domain.Tabaco;

import java.util.List;

public class TabacoDTO {
    private String name;
    private String descripcion;
    private List<FormatoDTO> formatos;

    public TabacoDTO(){}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<FormatoDTO> getFormatos() {
        return formatos;
    }

    public void setFormatos(List<FormatoDTO> formatos) {
        this.formatos = formatos;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
