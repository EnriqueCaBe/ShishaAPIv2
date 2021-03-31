package cat.tecnocampus.rooms.domain;

import java.util.ArrayList;
import java.util.List;

public class Tabaco {
    private String name;
    private String descripcion;
    private List<Formato> formatos;

    public Tabaco(){

    }

    public Tabaco(TabacoBuilder builder){
        name = builder.name;
        descripcion = builder.descripcion;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Formato> getFormatos() {
        return formatos;
    }

    public void setFormatos(List<Formato> formatos) {
        this.formatos = formatos;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public static class TabacoBuilder {
        private String name;
        private double gramos;
        private double precio;
        private String descripcion;

        public TabacoBuilder() {
        }

        public Tabaco.TabacoBuilder name(String name) {
            this.name = name;
            return this;
        }

        public Tabaco.TabacoBuilder gramos(double gramos) {
            this.gramos = gramos;
            return this;
        }

        public Tabaco.TabacoBuilder precio(double precio) {
            this.precio = precio;
            return this;
        }

        public Tabaco.TabacoBuilder descripcion(String descripcion) {
            this.descripcion = descripcion;
            return this;
        }

        public Tabaco build() {
            return new Tabaco(this);
        }
    }
}
