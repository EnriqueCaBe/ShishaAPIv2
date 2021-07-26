package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.daosInterface.FormatoDAO;
import cat.tecnocampus.rooms.application.daosInterface.MarcaDAO;
import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.exceptions.TabacoDoesExistsException;
import cat.tecnocampus.rooms.persistence.TabacoDAO;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;

@Component
public class TabacoController {

    private TabacoDAO tabacoDAO;
    private MarcaDAO marcaDAO;
    private FormatoDAO formatoDAO;

    public TabacoController(TabacoDAO tabacoDAO, MarcaDAO marcaDAO, FormatoDAO formatoDAO) {
        this.tabacoDAO = tabacoDAO;
        this.marcaDAO = marcaDAO;
        this.formatoDAO = formatoDAO;
    }

    public void insertTabaco(TabacoDTO tabaco) {
        if(tabacoDAO.isTabacoExists(tabaco)) {
            MarcaDTO marca = marcaDAO.getMarcaByName(tabaco.getMarca());
            tabaco.setImagen(marca.getImagen());
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
}
