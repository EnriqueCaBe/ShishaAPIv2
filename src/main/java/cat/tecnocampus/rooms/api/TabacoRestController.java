package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.TabacoController;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class TabacoRestController {

    private TabacoController tabacoController;

    public TabacoRestController(TabacoController tabacoController) {
        this.tabacoController = tabacoController;
    }

    @PostMapping("/tabaco")
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
}
