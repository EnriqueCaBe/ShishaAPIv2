package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.exceptions.MarcaDoesExistsException;
import cat.tecnocampus.rooms.persistence.MarcaDAO;
import cat.tecnocampus.rooms.persistence.TabacoDAO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MarcaController {

    private MarcaDAO marcaDAO;

    private TabacoDAO tabacoDAO;

    public MarcaController(MarcaDAO marcaDAO, TabacoDAO tabacoDAO) {
        this.marcaDAO = marcaDAO;
        this.tabacoDAO = tabacoDAO;
    }

    public void postMarca(MarcaDTO marca) {
        if(!marcaDAO.isMarcaExists(marca)) {
            marcaDAO.insertMarca(marca);
        }
        else throw new MarcaDoesExistsException(marca.getName_marca());
    }

    public List<MarcaDTO> getAllMarcas() {
        return marcaDAO.getAllMarcas();
    }

    public List<MarcaDTO> getMarcasAndTabacos() {
         List<MarcaDTO> marcas = marcaDAO.getMarcasAndTabacos();
         for (MarcaDTO marcaDTO: marcas){
             marcaDTO.setTabacos(tabacoDAO.getTabacosByMarca(marcaDTO));
         }
         return marcas;
    }
}
