package cat.tecnocampus.rooms.application.dtos;

import java.util.List;

public class MezclaDTO {
    private int id;
    private String name;
    private String estilo;
    private String paqueo;
    private List<PorcentajeDTO> tabacos;

    public MezclaDTO() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEstilo() {
        return estilo;
    }

    public void setEstilo(String estilo) {
        this.estilo = estilo;
    }

    public String getPaqueo() {
        return paqueo;
    }

    public void setPaqueo(String paqueo) {
        this.paqueo = paqueo;
    }

    public List<PorcentajeDTO> getTabacos() {
        return tabacos;
    }

    public void setTabacos(List<PorcentajeDTO> tabacos) {
        this.tabacos = tabacos;
    }

}
