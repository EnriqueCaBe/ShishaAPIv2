package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.SaborController;
import cat.tecnocampus.rooms.application.dtos.SaborDTO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class SaborRestController {

    private final SaborController saborController;

    public SaborRestController(SaborController saborController) {
        this.saborController = saborController;
    }

    @GetMapping("/sabor/all")
    public List<SaborDTO> getAllSabores(){
        return this.saborController.getAllSabores();
    }
}
