package com.shishaapi.shishasmataro.application.dtos;

public class TabacoSearchDTO {
    private String tabaco_name;
    private String marca;
    private double precio;
    private double gramos;

    public TabacoSearchDTO() {
    }

    public String getTabaco_name() {
        return tabaco_name;
    }

    public void setTabaco_name(String tabaco_name) {
        this.tabaco_name = tabaco_name;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public double getGramos() {
        return gramos;
    }

    public void setGramos(double gramos) {
        this.gramos = gramos;
    }
}
