package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.AssFormatoController;
import cat.tecnocampus.rooms.application.dtos.AssFormatoDTO;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class AssFormatoRestController {

    private AssFormatoController assFormatoController;

    public AssFormatoRestController(AssFormatoController assFormatoController) {
        this.assFormatoController = assFormatoController;
    }

    @PostMapping("/admin/ass_formato")
    public void insertAssFormato(@RequestBody @Valid AssFormatoDTO assFormatoDTO){
        assFormatoController.insertAssFormato(assFormatoDTO);
    }


}
