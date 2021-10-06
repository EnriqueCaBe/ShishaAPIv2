package com.shishaapi.example.api;

import com.shishaapi.example.application.MarcaController;
import com.shishaapi.example.application.ShishaDatabaseController;
import com.shishaapi.example.application.dtos.MarcaDTO;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST})
public class MarcaRestController {

    private MarcaController marcaController;
    private ShishaDatabaseController shishaDatabaseController;

    public MarcaRestController(MarcaController marcaController, ShishaDatabaseController shishaDatabaseController) {
        this.marcaController = marcaController;
        this.shishaDatabaseController = shishaDatabaseController;
    }

    @PostMapping("/admin/marca")
    public void insertMarca(@RequestBody MarcaDTO marca){
        marcaController.postMarca(marca);
    }

    @GetMapping("/marca/all")
    public List<MarcaDTO> getAllMarcas(){
        return marcaController.getAllMarcas();
    }

    @GetMapping("/marca/tabaco")
    public List<MarcaDTO> getAllMarcasAndTabacos(){
        return marcaController.getAllMarcasAndTabacos();
    }

    @GetMapping("/marca/tabaco/formato")
    public List<MarcaDTO> getAll(){
        return marcaController.getAll();
    }

    @GetMapping("/marca/{id}")
    public MarcaDTO getMarcaAndTabacos(@PathVariable int id){
        return marcaController.getMarcaAndTabacos(id);
    }

    @DeleteMapping("/admin/marca/{id}")
    public void deleteMarca(@PathVariable int id){

    }

    @GetMapping("/admin/db/marcas")
    public List<MarcaDTO> getMarcasDB() throws JsonProcessingException {
        return shishaDatabaseController.getAllMarcasDB();
    }
}
