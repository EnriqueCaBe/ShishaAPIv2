package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.exceptions.MarcaDoesExistsException;
import cat.tecnocampus.rooms.persistence.FormatoDAO;
import cat.tecnocampus.rooms.persistence.MarcaDAO;
import cat.tecnocampus.rooms.persistence.TabacoDAO;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Collections;
import java.util.List;

@Component
public class MarcaController {

    private final MarcaDAO marcaDAO;
    private final TabacoDAO tabacoDAO;
    private final FormatoDAO formatoDAO;

    public MarcaController(MarcaDAO marcaDAO, TabacoDAO tabacoDAO, FormatoDAO formatoDAO) {
        this.marcaDAO = marcaDAO;
        this.tabacoDAO = tabacoDAO;
        this.formatoDAO = formatoDAO;
    }

    public void postMarca(MarcaDTO marca) {
        if (!marcaDAO.isMarcaExists(marca)) {
            marcaDAO.insertMarca(marca);
        } else throw new MarcaDoesExistsException(marca.getName_marca());
    }

    public List<MarcaDTO> getAllMarcas() {
        return marcaDAO.getAllMarcas();
    }

    public List<MarcaDTO> getAllMarcasAndTabacos() {
        List<MarcaDTO> marcas = marcaDAO.getAllMarcas();
        for (MarcaDTO marca : marcas) {
            marca.setTabacos(tabacoDAO.getTabacosByMarca(marca));
        }
        return marcas;
    }

    public List<MarcaDTO> getAll() {
        List<MarcaDTO> marcas = marcaDAO.getAllMarcas();
        for (MarcaDTO marca : marcas) {
            marca.setTabacos(tabacoDAO.getTabacosByMarca(marca));
            for (TabacoDTO tabacoDTO : marca.getTabacos()) {
                tabacoDTO.setFormatos(formatoDAO.getFormatosByTabaco(tabacoDTO));
            }
        }
        return marcas;
    }

    public MarcaDTO getMarcaAndTabacos(int id) {
        MarcaDTO marca = marcaDAO.getMarcaById(id);
        marca.setTabacos(tabacoDAO.getTabacosByMarca(marca));
        return marca;
    }

    @Scheduled(fixedRate = 60000)
    public static void getStatus(){
        try {
            URL urlObj = new URL("https://frogsmoke.herokuapp.com/");
            HttpURLConnection con = (HttpURLConnection) urlObj.openConnection();
            con.setRequestMethod("GET");
            con.setConnectTimeout(3000);
            con.connect();
        } catch (Exception e) {}
    }
}
