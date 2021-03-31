package cat.tecnocampus.rooms.application.dtos;

public class FormatoDTO {
    private double gramos;
    private double precio;
    private String imagen;

    public FormatoDTO(){}

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

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
}
