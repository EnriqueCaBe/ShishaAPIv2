package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.TabacoController;
import cat.tecnocampus.rooms.application.dtos.SaborRequestDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoSearchDTO;
import cat.tecnocampus.rooms.application.dtos.UsuarioDTO;
import org.springframework.boot.configurationprocessor.json.JSONException;
import org.springframework.boot.configurationprocessor.json.JSONObject;
import org.springframework.web.bind.annotation.*;

import javax.sound.midi.SysexMessage;
import javax.validation.Valid;
import java.io.FileNotFoundException;
import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST})
public class TabacoRestController {

    private final TabacoController tabacoController;

    public TabacoRestController(TabacoController tabacoController) {
        this.tabacoController = tabacoController;
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
}
