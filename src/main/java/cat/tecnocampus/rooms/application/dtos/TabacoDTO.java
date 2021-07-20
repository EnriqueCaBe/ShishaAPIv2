package cat.tecnocampus.rooms.application.dtos;

import java.util.List;

public class TabacoDTO {

    private int id;
    private String name_tabaco;
    private String name_api;
    private String descripcion;
    private String marca;
    private List<FormatoDTO> formatos;


    public TabacoDTO(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName_tabaco() {
        return name_tabaco;
    }

    public void setName_tabaco(String name_tabaco) {
        this.name_tabaco = name_tabaco;
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

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
}
