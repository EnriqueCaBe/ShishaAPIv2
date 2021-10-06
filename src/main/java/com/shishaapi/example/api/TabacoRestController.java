package com.shishaapi.example.api;

import com.shishaapi.example.application.ShishaDatabaseController;
import com.shishaapi.example.application.TabacoController;
import cat.tecnocampus.rooms.application.dtos.*;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.shishaapi.example.application.dtos.SaborRequestDTO;
import com.shishaapi.example.application.dtos.TabacoDTO;
import com.shishaapi.example.application.dtos.UsuarioDTO;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST})
public class TabacoRestController {

    private final TabacoController tabacoController;
    private final ShishaDatabaseController shishaDatabaseController;

    public TabacoRestController(TabacoController tabacoController, ShishaDatabaseController shishaDatabaseController) {
        this.tabacoController = tabacoController;
        this.shishaDatabaseController = shishaDatabaseController;
    }

    @PostMapping("/admin/tabaco")
    public void postTabaco(@RequestBody @Valid TabacoDTO tabaco){
        tabacoController.insertTabaco(tabaco);
    }

    @GetMapping("/tabaco/all")
    public List<TabacoDTO> getAllTabaco(){
        return tabacoController.getAllTabaco();
    }

    @PostMapping("/do")
    public void setImages(){
        tabacoController.setImages();
    }

    @GetMapping("/tabaco/{id}")
    public TabacoDTO getTabacoById(@PathVariable int id){
        return tabacoController.getTabacoById(id);
    }

    @PostMapping("/tabaco/sabor")
    public List<TabacoDTO> getTabacosBySabor(@RequestBody SaborRequestDTO sabor){
        return tabacoController.getTabacosBySabor(sabor.getSabor());
    }

    @GetMapping("/tabaco/new")
    public List<TabacoDTO> getNewTabacos(){
        return tabacoController.getNewTabacos();
    }

    @PostMapping("/admin/tabaco/update")
    public void updateTabaco(@RequestBody TabacoDTO tabacoDTO){
        tabacoController.updateTabaco(tabacoDTO);
    }

    @PostMapping("/admin/ass_formato/all/{marca}/{formato}")
    public void assFormato(@PathVariable int marca, @PathVariable int formato){
        tabacoController.assoFormatoByMarca(marca,formato);
    }

    @GetMapping("/user/me")
    public UsuarioDTO getMe(Principal principal){
        return tabacoController.getUsuarioByName(principal.getName());
    }

    @GetMapping("/admin/db/marca/{marca}")
    public List<TabacoDTO> getTabacosByMarca(@PathVariable int marca) throws JsonProcessingException {
        return shishaDatabaseController.getTabacosByMarca(marca);
    }
}
