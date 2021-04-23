package cat.tecnocampus.rooms.application.dtos;

import cat.tecnocampus.rooms.domain.Tabaco;

import java.util.List;

public class TabacoDTO {
    private String id;
    private String name;
    private String name_api;
    private String descripcion;
    private List<FormatoDTO> formatos;
    private List<ValoracionTabacoDTO> valoraciones;

    public TabacoDTO(){}

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName_api() {
        return name_api;
    }

    public void setName_api(String name_api) {
        this.name_api = name_api;
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

    public List<ValoracionTabacoDTO> getValoraciones() {
        return valoraciones;
    }

    public void setValoraciones(List<ValoracionTabacoDTO> valoraciones) {
        this.valoraciones = valoraciones;
    }
}
