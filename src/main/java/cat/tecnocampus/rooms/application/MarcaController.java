package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.exceptions.MarcaDoesExistsException;
import cat.tecnocampus.rooms.persistence.MarcaDAO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MarcaController {

    private MarcaDAO marcaDAO;

    public MarcaController(MarcaDAO marcaDAO) {
        this.marcaDAO = marcaDAO;
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
}
