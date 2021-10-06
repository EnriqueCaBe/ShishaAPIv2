package com.shishaapi.example.application;

import com.shishaapi.example.application.daosInterface.FormatoDAO;
import com.shishaapi.example.application.daosInterface.MarcaDAO;
import com.shishaapi.example.application.daosInterface.SaborDAO;
import cat.tecnocampus.rooms.application.dtos.*;
import com.shishaapi.example.application.dtos.*;
import com.shishaapi.example.application.exceptions.CantUpdateTabacoException;
import com.shishaapi.example.application.exceptions.TabacoDoesExistsException;
import com.shishaapi.example.persistence.AssFormatoDAO;
import com.shishaapi.example.persistence.TabacoDAO;
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
    private final SaborDAO saborDAO;

    public TabacoController(TabacoDAO tabacoDAO, MarcaDAO marcaDAO, FormatoDAO formatoDAO, AssFormatoDAO assFormatoDAO, SaborDAO saborDAO) {
        this.tabacoDAO = tabacoDAO;
        this.marcaDAO = marcaDAO;
        this.formatoDAO = formatoDAO;
        this.assFormatoDAO = assFormatoDAO;
        this.saborDAO = saborDAO;
    }

    public void insertTabaco(TabacoDTO tabaco) {
        if (!tabacoDAO.isTabacoExists(tabaco)) {
            MarcaDTO marca = marcaDAO.getMarcaByName(tabaco.getMarca());
            if (tabaco.getImagen().equals("")) {
                tabaco.setImagen(marca.getImagen());
            }

            tabaco.setSabor1(tabaco.getSabor1().toUpperCase());
            tabaco.setSabor2(tabaco.getSabor2().toUpperCase());
            tabaco.setSabor3(tabaco.getSabor3().toUpperCase());
            tabaco.setSabor4(tabaco.getSabor4().toUpperCase());
            tabaco.setSabor5(tabaco.getSabor5().toUpperCase());

            insertSaboresOnBD(tabaco);

            tabaco.setImagen_flag(marca.getImagen_flag());
            tabaco.setFecha_publicacion(getActualDateTime());
            tabaco.setNovedad("T");
            tabacoDAO.insertTabaco(tabaco);
        } else throw new TabacoDoesExistsException(tabaco.getName_tabaco());
    }

    private void insertSaboresOnBD(TabacoDTO tabaco){
        if(!tabaco.getSabor1().equalsIgnoreCase("")){
            if(!saborDAO.existSabor(tabaco.getSabor1())){
                saborDAO.insertSabor(new SaborDTO(tabaco.getSabor1()));
            }
        }
        if(!tabaco.getSabor2().equalsIgnoreCase("")){
            if(!saborDAO.existSabor(tabaco.getSabor2())){
                saborDAO.insertSabor(new SaborDTO(tabaco.getSabor2()));
            }
        }
        if(!tabaco.getSabor3().equalsIgnoreCase("")){
            if(!saborDAO.existSabor(tabaco.getSabor3())){
                saborDAO.insertSabor(new SaborDTO(tabaco.getSabor3()));
            }
        }
        if(!tabaco.getSabor4().equalsIgnoreCase("")){
            if(!saborDAO.existSabor(tabaco.getSabor4())){
                saborDAO.insertSabor(new SaborDTO(tabaco.getSabor4()));
            }
        }
        if(!tabaco.getSabor5().equalsIgnoreCase("")){
            if(!saborDAO.existSabor(tabaco.getSabor5())){
                saborDAO.insertSabor(new SaborDTO(tabaco.getSabor5()));
            }
        }
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

    public void assoFormatoByMarca(int idmarca, int idformato) {
        MarcaDTO marca = marcaDAO.getMarcaById(idmarca);
        List<TabacoDTO> list = tabacoDAO.getTabacosByMarca(marca);
        for (TabacoDTO tabacoDTO : list) {
            assFormatoDAO.insertAssFormato(new AssFormatoDTO(tabacoDTO.getId(), idformato));
        }
    }

    public void updateTabaco(TabacoDTO tabacoDTO) {
        if (tabacoDAO.canUpdate(tabacoDTO)) {
            tabacoDTO.setSabor1(tabacoDTO.getSabor1().toUpperCase());
            tabacoDTO.setSabor2(tabacoDTO.getSabor2().toUpperCase());
            tabacoDTO.setSabor3(tabacoDTO.getSabor3().toUpperCase());
            tabacoDTO.setSabor4(tabacoDTO.getSabor4().toUpperCase());
            tabacoDTO.setSabor5(tabacoDTO.getSabor5().toUpperCase());
            insertSaboresOnBD(tabacoDTO);
            tabacoDAO.updateTabaco(tabacoDTO);
        } else {
            throw new CantUpdateTabacoException(tabacoDTO);
        }
    }

    public List<TabacoDTO> getTabacosBySabor(String sabor){
        return tabacoDAO.getTabacosBySabor(sabor);
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

    public UsuarioDTO getUsuarioByName(String username){
        return tabacoDAO.getUsuarioByName(username);
    }
}
