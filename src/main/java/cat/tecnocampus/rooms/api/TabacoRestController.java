package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.TabacoController;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

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
}
