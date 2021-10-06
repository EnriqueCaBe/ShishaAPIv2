package com.shishaapi.example.domain;

public class Formato {
    private double gramos;
    private double precio;
    private String imagen;

    public Formato(double gramos, double precio, String imagen) {
        this.gramos = gramos;
        this.precio = precio;
        this.imagen = imagen;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
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
