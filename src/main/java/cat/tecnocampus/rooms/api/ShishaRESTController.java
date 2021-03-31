package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.ShishaController;
import cat.tecnocampus.rooms.application.dtos.FormatoDTO;
import cat.tecnocampus.rooms.application.dtos.MarcaDTO;

import cat.tecnocampus.rooms.application.dtos.MezclaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Validated
@RestController
public class ShishaRESTController {
    ShishaController shishaController;

    public ShishaRESTController(ShishaController shishaController) {
        this.shishaController = shishaController;
    }

    @GetMapping("/all")
    public List<MarcaDTO> getAll(){
        return shishaController.getAll();
    }

    @GetMapping("/marcas/tabacos")
    public List<MarcaDTO> getMarcas(){
        return shishaController.getMarcas();
    }

    @GetMapping("/marcas")
    public List<MarcaDTO> getMarcasNoTabacos(){
        return shishaController.getMarcasNoTabacos();
    }

    @GetMapping("/marcas/{name}")
    public MarcaDTO getMarcaByName(@PathVariable String name){
        return shishaController.getMarcaByName(name);
    }

    @PostMapping("/marcas")
    public void postTabaco(@RequestBody @Valid MarcaDTO marca){
        shishaController.postMarca(marca);
    }

    @DeleteMapping("/marcas/{marca}")
    public void deleteMarca(@PathVariable String marca){
        shishaController.deleteMarca(marca);
    }



    @GetMapping("/tabacos")
    public List<TabacoDTO> getTabacos(){
        return shishaController.getTabacos();
    }

    @GetMapping("/tabacos/{name}")
    public TabacoDTO getTabacoByName(@PathVariable String name){
        return shishaController.getTabacoByName(name);
    }

    @PostMapping("/tabacos/{marca}")
    public void postTabaco(@RequestBody @Valid TabacoDTO tabaco, @PathVariable String marca){
        shishaController.postTabaco(tabaco,marca);
    }

    @DeleteMapping("/tabacos/{tabaco}")
    public void deleteTabaco(@PathVariable String tabaco){
        shishaController.deleteTabaco(tabaco);
    }

    @GetMapping("/tabacos/marca/{marca}")
    public List<TabacoDTO> getTabacosByMarca(@PathVariable String marca){
        return shishaController.getTabacoByMarca(marca);
    }


    @PostMapping("/formato/{tabaco}")
    public TabacoDTO postFormato(@RequestBody FormatoDTO formatoDTO, @PathVariable String tabaco){
        return shishaController.postFormato(formatoDTO,tabaco);
    }

    @GetMapping("/mixes")
    public List<MezclaDTO> getAllMixes(){
        return shishaController.getAllMixes();
    }

    @PostMapping("/mix")
    public void postMix(@RequestBody MezclaDTO mezcla){
        shishaController.postMix(mezcla);
    }



}
