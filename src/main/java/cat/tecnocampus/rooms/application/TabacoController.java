package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.daosInterface.FormatoDAO;
import cat.tecnocampus.rooms.application.daosInterface.MarcaDAO;
import cat.tecnocampus.rooms.application.dtos.AssFormatoDTO;
import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoSearchDTO;
import cat.tecnocampus.rooms.application.exceptions.CantUpdateTabacoException;
import cat.tecnocampus.rooms.application.exceptions.TabacoDoesExistsException;
import cat.tecnocampus.rooms.persistence.AssFormatoDAO;
import cat.tecnocampus.rooms.persistence.TabacoDAO;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Component
public class TabacoController {

    private final TabacoDAO tabacoDAO;
    private final MarcaDAO marcaDAO;
    private final FormatoDAO formatoDAO;
    private final AssFormatoDAO assFormatoDAO;

    public TabacoController(TabacoDAO tabacoDAO, MarcaDAO marcaDAO, FormatoDAO formatoDAO, AssFormatoDAO assFormatoDAO) {
        this.tabacoDAO = tabacoDAO;
        this.marcaDAO = marcaDAO;
        this.formatoDAO = formatoDAO;
        this.assFormatoDAO = assFormatoDAO;
    }

    public void insertTabaco(TabacoDTO tabaco) {
        if (!tabacoDAO.isTabacoExists(tabaco)) {
            MarcaDTO marca = marcaDAO.getMarcaByName(tabaco.getMarca());
            if (tabaco.getImagen().equals("")) {
                tabaco.setImagen(marca.getImagen());
            }
            tabaco.setImagen_flag(marca.getImagen_flag());
            tabaco.setFecha_publicacion(getActualDateTime());
            tabaco.setNovedad("T");
            tabacoDAO.insertTabaco(tabaco);
        } else throw new TabacoDoesExistsException(tabaco.getName_tabaco());
    }

    public void setImages() {
        List<TabacoDTO> list = tabacoDAO.getAllTabaco();
        for (TabacoDTO tabacoDTO : list) {
            MarcaDTO marcaDTO = marcaDAO.getMarcaByName(tabacoDTO.getMarca());
            tabacoDAO.updateImage(marcaDTO.getImagen(), tabacoDTO.getId());
        }
    }

    public List<TabacoDTO> getAllTabaco() {
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
        if (tabacoSearchDTO.getTabaco_name() != null) {
            list1.addAll(tabacoDAO.getTabacosByName(tabacoSearchDTO.getTabaco_name()));
            similar.addAll(list1);
        }
        if (tabacoSearchDTO.getMarca() != null) {
            list2.addAll(tabacoDAO.getTabacosByMarcaName(tabacoSearchDTO.getMarca()));
            if (similar.isEmpty()) similar.addAll(list2);
            else similar.retainAll(list2);
        }
        if (tabacoSearchDTO.getGramos() != 0) {
            list3.addAll(tabacoDAO.getTabacosByGramos(tabacoSearchDTO.getGramos()));
            if (similar.isEmpty()) similar.addAll(list3);
            else similar.retainAll(list3);
        }
        if (tabacoSearchDTO.getPrecio() != 0) {
            list4.addAll(tabacoDAO.getTabacosByPrecio(tabacoSearchDTO.getPrecio()));
            if (similar.isEmpty()) return list4;
            else similar.retainAll(list4);
        }
        finalList.addAll(similar);
        return finalList;
    }

    public void assoFormatoByMarca(int idmarca, int idformato) {
        MarcaDTO marca = marcaDAO.getMarcaById(idmarca);
        List<TabacoDTO> list = tabacoDAO.getTabacosByMarca(marca);
        for (TabacoDTO tabacoDTO : list) {
            assFormatoDAO.insertAssFormato(new AssFormatoDTO(tabacoDTO.getId(), idformato));
        }
    }

    public void updateTabaco(TabacoDTO tabacoDTO) {
        if (tabacoDAO.canUpdate(tabacoDTO)) {
            tabacoDAO.updateTabaco(tabacoDTO);
        } else {
            throw new CantUpdateTabacoException(tabacoDTO);
        }
    }

    public List<TabacoDTO> getNewTabacos() {
        return tabacoDAO.getNewTabacos();
    }

    private String getActualDateTime() {
        Date date = new Date();
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        df.setTimeZone(TimeZone.getTimeZone("Europe/Madrid"));
        return df.format(date);
    }

    @Scheduled(cron = "0 0 0 * * ?")
    public void comprovarNevedades(){
        List<TabacoDTO> list = tabacoDAO.getLastNovedades(getLast2WeeksDateTime(),getLastWeekDateTime());
        tabacoDAO.updateNovedades(list);
    }

    private String getLastWeekDateTime(){
        final Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -7);
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return dateFormat.format(cal.getTime());
    }

    private String getLast2WeeksDateTime(){
        final Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -14);
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return dateFormat.format(cal.getTime());
    }
}
