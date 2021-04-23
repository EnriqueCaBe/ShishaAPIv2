package cat.tecnocampus.rooms.application.dtos;

import java.util.UUID;

public class ValoracionDTO {
    private String id;
    private double nota;
    private String comentario;
    private String usuario;
    private String mezcla;

    public ValoracionDTO(){
        this.id = UUID.randomUUID().toString();
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getMezcla() {
        return mezcla;
    }

    public void setMezcla(String mezcla) {
        this.mezcla = mezcla;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
