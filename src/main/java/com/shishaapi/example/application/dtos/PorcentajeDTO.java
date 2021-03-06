package com.shishaapi.example.application.dtos;

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

    @Override
    public String toString() {
        return "PorcentajeDTO{" +
                "id=" + id +
                ", porcentaje=" + porcentaje +
                ", tabaco=" + tabaco +
                ", tabaco_name='" + tabaco_name + '\'' +
                ", mezcla=" + mezcla +
                '}';
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

    public int getTabaco() {
        return tabaco;
    }

    public void setTabaco(int tabaco) {
        this.tabaco = tabaco;
    }
}
