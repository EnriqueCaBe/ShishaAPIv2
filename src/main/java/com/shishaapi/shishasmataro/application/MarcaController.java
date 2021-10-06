package com.shishaapi.shishasmataro.application;

import com.shishaapi.shishasmataro.application.dtos.MarcaDTO;
import com.shishaapi.shishasmataro.application.dtos.TabacoDTO;
import com.shishaapi.shishasmataro.application.exceptions.MarcaDoesExistsException;
import com.shishaapi.shishasmataro.persistence.FormatoDAO;
import com.shishaapi.shishasmataro.persistence.MarcaDAO;
import com.shishaapi.shishasmataro.persistence.TabacoDAO;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.net.HttpURLConnection;
import java.net.URL;
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

    public void deleteMarca(int id){
        marcaDAO.deleteMarca(id);
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
