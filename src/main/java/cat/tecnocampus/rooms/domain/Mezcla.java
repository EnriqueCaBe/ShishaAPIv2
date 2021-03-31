package cat.tecnocampus.rooms.domain;

import java.util.List;

public class Mezcla {

    private String name;
    private List<Porcentage> partes;

    public Mezcla(List<Porcentage> partes) {
        this.partes = partes;
    }

    public List<Porcentage> getPartes() {
        return partes;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPartes(List<Porcentage> partes) {
        this.partes = partes;
    }

    public class Porcentage {
        private String tabaco;
        private double porcentaje;

        public Porcentage(String tabaco, double porcentaje) {
            this.tabaco = tabaco;
            this.porcentaje = porcentaje;
        }

        public String getTabaco() {
            return tabaco;
        }

        public void setTabaco(String tabaco) {
            this.tabaco = tabaco;
        }

        public double getPorcentaje() {
            return porcentaje;
        }

        public void setPorcentaje(double porcentaje) {
            this.porcentaje = porcentaje;
        }
    }
}
