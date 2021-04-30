package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.*;
import cat.tecnocampus.rooms.persistence.*;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class ShishaController {
    MarcaDAO marcaDAO;
    TabacoDAO tabacoDAO;
    MezclaDAO mezclaDAO;
    ValoracionesDAO valoracionesDAO;
    ValoracionTabacoDAO valoracionTabacoDAO;
    UserDAO userDAO;

    public ShishaController(TabacoDAO tabacoDAO, MarcaDAO marcaDAO,MezclaDAO mezclaDAO,ValoracionesDAO valoracionesDAO,ValoracionTabacoDAO valoracionTabacoDAO,UserDAO userDAO) {
        this.marcaDAO = marcaDAO;
        this.tabacoDAO = tabacoDAO;
        this.mezclaDAO = mezclaDAO;
        this.valoracionesDAO = valoracionesDAO;
        this.valoracionTabacoDAO = valoracionTabacoDAO;
        this.userDAO = userDAO;
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
        TabacoDTO ret = tabacoDAO.getTabacoByName(tabaco,marca);
        ret.setValoraciones(valoracionTabacoDAO.getValoracionesByTabacoId(ret.getId()));
        return ret;
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
            for(TabacoDTO tabacoDTO: marca.getTabacos()){
                tabacoDTO.setValoraciones(valoracionTabacoDAO.getValoracionesByTabacoId(tabacoDTO.getId()));
            }
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

    public void postValoracionTabaco(ValoracionTabacoDTO valoracion, String name) {
        ValoracionTabacoDTO newVal = new ValoracionTabacoDTO();
        UserDTO user = userDAO.getUserByEmail(name);

        newVal.setComentario(valoracion.getComentario());
        newVal.setNota(valoracion.getNota());
        newVal.setTabaco(valoracion.getTabaco());
        newVal.setUsuario(user.getUsername());
        valoracionTabacoDAO.postValoracionTabaco(newVal);

        List<ValoracionTabacoDTO> valoraciones = valoracionTabacoDAO.getValoracionesByTabacoId(valoracion.getTabaco());
        double notaMedia=0;
        for(ValoracionTabacoDTO valoracionTabacoDTO: valoraciones){
            notaMedia = notaMedia + valoracionTabacoDTO.getNota();
        }
        notaMedia = notaMedia/valoraciones.size();
        tabacoDAO.updateNotaMedia(valoracion.getTabaco(),notaMedia);
    }

    public List<ValoracionTabacoDTO> getValoracionesByTabaco(String tabacoID) {
        return valoracionTabacoDAO.getValoracionesByTabacoId(tabacoID);

    }

    public TabacoDTO getTabacoByID(String id) {
        TabacoDTO ret = tabacoDAO.getTabacoByID(id);
        ret.setValoraciones(valoracionTabacoDAO.getValoracionesByTabacoId(id));
        return ret;
    }
}
