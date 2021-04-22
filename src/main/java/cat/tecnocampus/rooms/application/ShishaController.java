package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.*;
import cat.tecnocampus.rooms.persistence.MarcaDAO;
import cat.tecnocampus.rooms.persistence.MezclaDAO;
import cat.tecnocampus.rooms.persistence.TabacoDAO;
import cat.tecnocampus.rooms.persistence.ValoracionesDAO;
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
    ValoracionesDAO valoracionesDAO;

    public ShishaController(TabacoDAO tabacoDAO, MarcaDAO marcaDAO,MezclaDAO mezclaDAO,ValoracionesDAO valoracionesDAO) {
        this.marcaDAO = marcaDAO;
        this.tabacoDAO = tabacoDAO;
        this.mezclaDAO = mezclaDAO;
        this.valoracionesDAO = valoracionesDAO;
    }

    public MarcaDTO getMarcaByName(String name) {
        MarcaDTO marca = marcaDAO.getMarcaByName(name);
        marca.setTabacos(getTabacoByMarca(name));
        return marca;
    }

    public List<TabacoDTO> getTabacos() {
        return tabacoDAO.getTabacos();
    }

    public TabacoDTO getTabacoByName(String tabaco, String marca) {
        return tabacoDAO.getTabacoByName(tabaco,marca);
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

    public TabacoDTO postFormato(FormatoDTO formatoDTO, String tabaco, String marca) {
        return tabacoDAO.postFormato(formatoDTO,tabaco, marca);
    }

    public List<MezclaDTO> getAllMixes(){
        List<MezclaDTO> mezclas = mezclaDAO.getAllMixes();
        List<ValoracionDTO> valoraciones;
        for(MezclaDTO mezcla: mezclas){
            valoraciones = valoracionesDAO.getValoracionesByMezclaName(mezcla.getId());
            mezcla.setValoraciones(valoraciones);
        }
        return mezclas;
    }

    public void postMix(MezclaDTO mezcla){
        MezclaDTO newMezcla = new MezclaDTO();
        newMezcla.setName(mezcla.getName());
        newMezcla.setPartes(mezcla.getPartes());
        newMezcla.setValoraciones(mezcla.getValoraciones());
        mezclaDAO.postMix(newMezcla);
    }

    public void postValoracion(ValoracionDTO valoracionDTO, String name, String mixID) {
        ValoracionDTO newVal = new ValoracionDTO();
        newVal.setNota(valoracionDTO.getNota());
        newVal.setComentario(valoracionDTO.getComentario());
        valoracionesDAO.postValoracion(valoracionDTO,name,mixID);
    }
}
