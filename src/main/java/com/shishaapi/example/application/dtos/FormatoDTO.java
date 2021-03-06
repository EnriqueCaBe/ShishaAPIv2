package com.shishaapi.example.application.dtos;

public class FormatoDTO {

    private int id;
    private double gramos;
    private double precio;

    public FormatoDTO(){}

    public FormatoDTO(int id, double gramos, double precio) {
        this.id = id;
        this.gramos = gramos;
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getGramos() {
        return gramos;
    }

    public void setGramos(double gramos) {
        this.gramos = gramos;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
}
