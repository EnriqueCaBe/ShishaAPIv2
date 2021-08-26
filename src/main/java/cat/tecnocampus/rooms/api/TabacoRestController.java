package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.TabacoController;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoSearchDTO;
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

    @GetMapping("/tabaco/search")
    public List<TabacoDTO> getTabacosBySearch(@RequestBody TabacoSearchDTO tabacoSearchDTO){
        return tabacoController.getTabacosBySearch(tabacoSearchDTO);
    }

    @GetMapping("/tabaco/new")
    public List<TabacoDTO> getNewTabacos(){
        return tabacoController.getNewTabacos();
    }

    @PostMapping("/tabaco/update")
    public void updateTabaco(@RequestBody TabacoDTO tabacoDTO){
        tabacoController.updateTabaco(tabacoDTO);
    }

    @PostMapping("/ass_formato/all/{marca}/{formato}")
    public void assFormato(@PathVariable int marca, @PathVariable int formato){
        tabacoController.assoFormatoByMarca(marca,formato);
    }
}
