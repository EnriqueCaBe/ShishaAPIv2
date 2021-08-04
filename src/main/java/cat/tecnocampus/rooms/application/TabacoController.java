package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.daosInterface.FormatoDAO;
import cat.tecnocampus.rooms.application.daosInterface.MarcaDAO;
import cat.tecnocampus.rooms.application.dtos.AssFormatoDTO;
import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoSearchDTO;
import cat.tecnocampus.rooms.application.exceptions.TabacoDoesExistsException;
import cat.tecnocampus.rooms.persistence.AssFormatoDAO;
import cat.tecnocampus.rooms.persistence.TabacoDAO;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class TabacoController {

    private TabacoDAO tabacoDAO;
    private MarcaDAO marcaDAO;
    private FormatoDAO formatoDAO;
    private AssFormatoDAO assFormatoDAO;

    public TabacoController(TabacoDAO tabacoDAO, MarcaDAO marcaDAO, FormatoDAO formatoDAO, AssFormatoDAO assFormatoDAO) {
        this.tabacoDAO = tabacoDAO;
        this.marcaDAO = marcaDAO;
        this.formatoDAO = formatoDAO;
        this.assFormatoDAO = assFormatoDAO;
    }

    public void insertTabaco(TabacoDTO tabaco) {
        if(!tabacoDAO.isTabacoExists(tabaco)) {
            MarcaDTO marca = marcaDAO.getMarcaByName(tabaco.getMarca());
            tabaco.setImagen(marca.getImagen());
            tabaco.setImagen_flag(marca.getImagen_flag());
            tabacoDAO.insertTabaco(tabaco);
        }
        else throw new TabacoDoesExistsException(tabaco.getName_tabaco());
    }

    public void setImages(){
        List<TabacoDTO> list = tabacoDAO.getAllTabaco();
        for(TabacoDTO tabacoDTO: list){
            MarcaDTO marcaDTO = marcaDAO.getMarcaByName(tabacoDTO.getMarca());
            tabacoDAO.updateImage(marcaDTO.getImagen_flag(), tabacoDTO.getId());
        }
    }

    public List<TabacoDTO> getAllTabaco(){
        return tabacoDAO.getAllTabaco();
    }

    public TabacoDTO getTabacoById(int id) {
        TabacoDTO tabaco = tabacoDAO.getTabacoById(id);
        tabaco.setFormatos(formatoDAO.getFormatosByTabaco(tabaco));
        return tabaco;
    }

    public List<TabacoDTO> getTabacosBySearch(TabacoSearchDTO tabacoSearchDTO) {
        List<TabacoDTO> finalList = new ArrayList<>();
        List<TabacoDTO> list1 = new ArrayList<>();
        List<TabacoDTO> list2 = new ArrayList<>();
        List<TabacoDTO> list3 = new ArrayList<>();
        List<TabacoDTO> list4 = new ArrayList<>();
        Collection<TabacoDTO> similar = new HashSet<TabacoDTO>();
        if(tabacoSearchDTO.getTabaco_name()!=null){
            list1.addAll(tabacoDAO.getTabacosByName( tabacoSearchDTO.getTabaco_name()));
            similar.addAll(list1);
        }
        if(tabacoSearchDTO.getMarca()!=null){
            list2.addAll(tabacoDAO.getTabacosByMarcaName(tabacoSearchDTO.getMarca()));
            if(similar.isEmpty()) similar.addAll(list2);
            else similar.retainAll(list2);
        }
        if(tabacoSearchDTO.getGramos()!=0){
            list3.addAll(tabacoDAO.getTabacosByGramos(tabacoSearchDTO.getGramos()));
            if(similar.isEmpty()) similar.addAll(list3);
            else similar.retainAll(list3);
        }
        if(tabacoSearchDTO.getPrecio()!=0){
            list4.addAll(tabacoDAO.getTabacosByPrecio(tabacoSearchDTO.getPrecio()));
            if(similar.isEmpty()) return list4;
            else similar.retainAll(list4);
        }
        finalList.addAll(similar);
        return finalList;
    }

    public void assoFormatoByMarca(int idmarca, int idformato){
        MarcaDTO marca = marcaDAO.getMarcaById(idmarca);
        List<TabacoDTO> list = tabacoDAO.getTabacosByMarca(marca);
        for(TabacoDTO tabacoDTO: list){
            assFormatoDAO.insertAssFormato(new AssFormatoDTO(tabacoDTO.getId(),idformato));
        }
    }
}
