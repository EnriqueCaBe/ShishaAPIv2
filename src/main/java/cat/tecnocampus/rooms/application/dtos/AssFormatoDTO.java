package cat.tecnocampus.rooms.application.dtos;

public class AssFormatoDTO {

    private int id;
    private int tabaco_id;
    private int formato_id;

    public AssFormatoDTO() {
    }

    public AssFormatoDTO(int tabaco_id, int formato_id) {
        this.tabaco_id = tabaco_id;
        this.formato_id = formato_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTabaco_id() {
        return tabaco_id;
    }

    public void setTabaco_id(int tabaco_id) {
        this.tabaco_id = tabaco_id;
    }

    public int getFormato_id() {
        return formato_id;
    }

    public void setFormato_id(int formato_id) {
        this.formato_id = formato_id;
    }
}
