package com.shishaapi.example.application.dtos;

import java.util.List;

public class MarcaDTO {

    private int id;
    private String name_marca;
    private String pais;
    private String pais_api;
    private String descripcion;
    private String imagen;
    private String imagen_flag;
    private List<TabacoDTO> tabacos;

    public MarcaDTO(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName_marca() {
        return name_marca;
    }

    public void setName_marca(String name_marca) {
        this.name_marca = name_marca;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getPais_api() {
        return pais_api;
    }

    public void setPais_api(String pais_api) {
        this.pais_api = pais_api;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getImagen_flag() {
        return imagen_flag;
    }

    public void setImagen_flag(String imagen_flag) {
        this.imagen_flag = imagen_flag;
    }

    public List<TabacoDTO> getTabacos() {
        return tabacos;
    }

    public void setTabacos(List<TabacoDTO> tabacos) {
        this.tabacos = tabacos;
    }
}
