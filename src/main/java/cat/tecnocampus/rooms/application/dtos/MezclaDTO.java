package cat.tecnocampus.rooms.application.dtos;

import java.util.List;

public class MezclaDTO {
    private int id;
    private String name;
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

    public List<PorcentajeDTO> getTabacos() {
        return tabacos;
    }

    public void setTabacos(List<PorcentajeDTO> tabacos) {
        this.tabacos = tabacos;
    }
}
