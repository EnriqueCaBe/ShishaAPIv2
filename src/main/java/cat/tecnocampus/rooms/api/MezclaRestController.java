package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.MezclaController;
import cat.tecnocampus.rooms.application.dtos.MezclaDTO;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class MezclaRestController {

    private MezclaController mezclaController;

    public MezclaRestController(MezclaController mezclaController) {
        this.mezclaController = mezclaController;
    }

    @GetMapping("/mezcla/{id}")
    public MezclaDTO getMezclaById(@PathVariable int id){
        return mezclaController.getMezclaById(id);
    }

    @GetMapping("/mezcla/all")
    public List<MezclaDTO> getAllMezclas(){
        return mezclaController.getAllMezclas();
    }

    @PostMapping("/mezcla")
    public int insertMezcla(@RequestBody MezclaDTO mezclaDTO){
       return  mezclaController.insertMezcla(mezclaDTO);
    }
}
