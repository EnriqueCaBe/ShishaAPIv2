package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.*;
import cat.tecnocampus.rooms.persistence.MarcaDAO;
import cat.tecnocampus.rooms.persistence.MezclaDAO;
import cat.tecnocampus.rooms.persistence.TabacoDAO;
import org.springframework.stereotype.Component;

import java.time.DayOfWeek;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Component
public class ShishaController {
    MarcaDAO marcaDAO;
    TabacoDAO tabacoDAO;
    MezclaDAO mezclaDAO;

    public ShishaController(TabacoDAO tabacoDAO, MarcaDAO marcaDAO,MezclaDAO mezclaDAO) {
        this.marcaDAO = marcaDAO;
        this.tabacoDAO = tabacoDAO;
        this.mezclaDAO = mezclaDAO;
    }

    public MarcaDTO getMarcaByName(String name) {
        MarcaDTO marca = marcaDAO.getMarcaByName(name);
        marca.setTabacos(getTabacoByMarca(name));
        return marca;
    }

    public List<TabacoDTO> getTabacos() {
        return tabacoDAO.getTabacos();
    }

    public TabacoDTO getTabacoByName(String name) {
        return tabacoDAO.getTabacoByName(name);
    }

    public List<MarcaDTO> getMarcasNoTabacos() {
        return marcaDAO.getMarcasNoTabacos();
    }

    public List<MarcaDTO> getMarcas() {
        return marcaDAO.getMarcas();
    }

    public void postTabaco(TabacoDTO tabaco, String marca) {
        tabacoDAO.postTabaco(tabaco,marca);
    }

    public void postMarca(MarcaDTO marca) {
        marcaDAO.postMarca(marca);
    }

    public void deleteMarca(String marca) {
        marcaDAO.deleteMarca(marca);
    }

    public void deleteTabaco(String tabaco) {
        tabacoDAO.deleteTabaco(tabaco);
    }

    public List<MarcaDTO> getAll(){
        List<MarcaDTO> ret = new ArrayList<MarcaDTO>();
        ret= marcaDAO.getMarcasNoTabacos();
        for(MarcaDTO marca : ret){
            marca.setTabacos(tabacoDAO.getTabacoByMarca(marca.getName()));
        }
        return ret;
    }

    public List<TabacoDTO> getTabacoByMarca(String marca) {
        return tabacoDAO.getTabacoByMarca(marca);
    }

    public TabacoDTO postFormato(FormatoDTO formatoDTO, String tabaco) {
        return tabacoDAO.postFormato(formatoDTO,tabaco);
    }

    public List<MezclaDTO> getAllMixes(){
        return mezclaDAO.getAllMixes();
    }

    public void postMix(MezclaDTO mezcla){
        mezclaDAO.postMix(mezcla);
    }
}
