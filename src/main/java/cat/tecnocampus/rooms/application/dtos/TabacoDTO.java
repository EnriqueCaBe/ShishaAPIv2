package cat.tecnocampus.rooms.application.dtos;

import cat.tecnocampus.rooms.domain.Tabaco;

import javax.validation.constraints.NotNull;
import java.util.List;

public class TabacoDTO {
    @NotNull
    private String name;
    @NotNull
    private String name_api;
    @NotNull
    private String descripcion;
    @NotNull
    private MarcaDTO marca;
    private List<FormatoDTO> formatos;


    public TabacoDTO(){}

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

    public MarcaDTO getMarca() {
        return marca;
    }

    public void setMarca(MarcaDTO marca) {
        this.marca = marca;
    }
}
