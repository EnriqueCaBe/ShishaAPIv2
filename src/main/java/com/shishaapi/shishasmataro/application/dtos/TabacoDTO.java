package com.shishaapi.shishasmataro.application.dtos;

import java.util.List;

public class TabacoDTO {

    private int id;
    private String name_tabaco;
    private String name_api;
    private String descripcion;
    private String sabor1;
    private String sabor2;
    private String sabor3;
    private String sabor4;
    private String sabor5;
    private String marca;
    private String imagen;
    private String imagen_flag;
    private String fecha_publicacion;
    private String novedad;
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

    public String getSabor1() {
        return sabor1;
    }

    public void setSabor1(String sabor1) {
        this.sabor1 = sabor1;
    }

    public String getSabor2() {
        return sabor2;
    }

    public void setSabor2(String sabor2) {
        this.sabor2 = sabor2;
    }

    public String getSabor3() {
        return sabor3;
    }

    public void setSabor3(String sabor3) {
        this.sabor3 = sabor3;
    }

    public String getSabor4() {
        return sabor4;
    }

    public void setSabor4(String sabor4) {
        this.sabor4 = sabor4;
    }

    public String getSabor5() {
        return sabor5;
    }

    public void setSabor5(String sabor5) {
        this.sabor5 = sabor5;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
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

    public String getFecha_publicacion() {
        return fecha_publicacion;
    }

    public void setFecha_publicacion(String fecha_publicacion) {
        this.fecha_publicacion = fecha_publicacion;
    }

    public String getNovedad() {
        return novedad;
    }

    public void setNovedad(String novedad) {
        this.novedad = novedad;
    }
}
