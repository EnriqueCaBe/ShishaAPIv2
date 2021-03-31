package cat.tecnocampus.rooms.domain;

import java.util.ArrayList;
import java.util.List;

public class Marca {
    private String name;
    private String pais;
    private String descripcion;
    private List<Tabaco> tabacos;

    public Marca(){}

    public Marca(String name,String pais,String descripcion){
        this.name = name;
        this.pais = pais;
        this.descripcion = descripcion;
        this.tabacos = new ArrayList<Tabaco>();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public List<Tabaco> getTabacos() {
        return tabacos;
    }

    public void setTabacos(List<Tabaco> tabacos) {
        this.tabacos = tabacos;
    }
}
