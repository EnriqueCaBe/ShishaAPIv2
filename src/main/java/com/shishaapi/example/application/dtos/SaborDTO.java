package com.shishaapi.example.application.dtos;

public class SaborDTO {
    private int id;
    private String sabor_desc;

    public SaborDTO() {
    }

    public SaborDTO(String sabor_desc) {
        this.sabor_desc = sabor_desc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSabor_desc() {
        return sabor_desc;
    }

    public void setSabor_desc(String sabor_desc) {
        this.sabor_desc = sabor_desc;
    }
}
