package cat.tecnocampus.rooms.application.dtos;

public class FlagDTO {
    private String pais;
    private String flag_image;

    public FlagDTO() {}

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getFlag_image() {
        return flag_image;
    }

    public void setFlag_image(String flag_image) {
        this.flag_image = flag_image;
    }
}
