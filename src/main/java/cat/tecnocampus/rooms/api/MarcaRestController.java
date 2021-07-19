package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.MarcaController;
import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class MarcaRestController {

    private MarcaController marcaController;

    public MarcaRestController(MarcaController marcaController) {
        this.marcaController = marcaController;
    }

    @PostMapping("/marca")
    public void insertMarca(@RequestBody @Valid MarcaDTO marca){
        System.out.println(marca.getNameMarca());
        marcaController.postMarca(marca);
    }

    @GetMapping("/marca/all")
    public List<MarcaDTO> getAllMarcas(){
        return marcaController.getAllMarcas();
    }
}
