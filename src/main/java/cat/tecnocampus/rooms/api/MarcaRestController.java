package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.MarcaController;
import cat.tecnocampus.rooms.application.TabacoController;
import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class MarcaRestController {

    private MarcaController marcaController;

    public MarcaRestController(MarcaController marcaController, TabacoController tabacoController) {
        this.marcaController = marcaController;
    }

    @PostMapping("/marca")
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

    @DeleteMapping("/marca/{id}")
    public void deleteMarca(@PathVariable int id){

    }
}
