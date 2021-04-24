package cat.tecnocampus.rooms.application.dtos;

import cat.tecnocampus.rooms.domain.Tabaco;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

public class MarcaDTO {
    @NotNull
    private String name;
    private String pais;
    private String pais_api;
    private String descripcion;
    private String imagen;
    private String imagen_flag;
    private List<TabacoDTO> tabacos;

    public MarcaDTO(){}

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

    public String getPais_api() {
        return pais_api;
    }

    public void setPais_api(String pais_api) {
        this.pais_api = pais_api;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public List<TabacoDTO> getTabacos() {
        return tabacos;
    }

    public void setTabacos(List<TabacoDTO> tabacos) {
        this.tabacos = tabacos;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
}
