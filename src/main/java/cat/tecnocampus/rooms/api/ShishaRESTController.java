package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.ShishaController;
import cat.tecnocampus.rooms.application.dtos.*;

import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@Validated
@RestController
public class ShishaRESTController {
    ShishaController shishaController;

    public ShishaRESTController(ShishaController shishaController) {
        this.shishaController = shishaController;
    }

    @GetMapping("/1/all")
    public List<MarcaDTO> getAll(){
        return shishaController.getAll();
    }

    @GetMapping("/1/marcas/tabacos")
    public List<MarcaDTO> getMarcas(){
        return shishaController.getMarcas();
    }

    @GetMapping("/1/marcas")
    public List<MarcaDTO> getMarcasNoTabacos(){
        return shishaController.getMarcasNoTabacos();
    }

    @GetMapping("/1/marcas/{name}")
    public MarcaDTO getMarcaByName(@PathVariable String name){
        return shishaController.getMarcaByName(name);
    }

    @PostMapping("/0/marcas")
    public void postTabaco(@RequestBody @Valid MarcaDTO marca){
        shishaController.postMarca(marca);
    }

    @DeleteMapping("/0/marcas/{marca}")
    public void deleteMarca(@PathVariable String marca){
        shishaController.deleteMarca(marca);
    }



    @GetMapping("/1/tabacos")
    public List<TabacoDTO> getTabacos(){
        return shishaController.getTabacos();
    }

    @GetMapping("/1/tabacos/{name}")
    public TabacoDTO getTabacoByName(@PathVariable String name){
        return shishaController.getTabacoByName(name);
    }

    @PostMapping("/0/tabacos/{marca}")
    public void postTabaco(@RequestBody @Valid TabacoDTO tabaco, @PathVariable String marca){
        shishaController.postTabaco(tabaco,marca);
    }

    @DeleteMapping("/0/tabacos/{tabaco}")
    public void deleteTabaco(@PathVariable String tabaco){
        shishaController.deleteTabaco(tabaco);
    }

    @GetMapping("/1/tabacos/marca/{marca}")
    public List<TabacoDTO> getTabacosByMarca(@PathVariable String marca){
        return shishaController.getTabacoByMarca(marca);
    }


    @PostMapping("/0/formato/{tabaco}")
    public TabacoDTO postFormato(@RequestBody FormatoDTO formatoDTO, @PathVariable String tabaco){
        return shishaController.postFormato(formatoDTO,tabaco);
    }

    @GetMapping("/1/mixes")
    public List<MezclaDTO> getAllMixes(){
        return shishaController.getAllMixes();
    }

    @PostMapping("/0/mix")
    public void postMix(@RequestBody MezclaDTO mezcla){
        shishaController.postMix(mezcla);
    }


    @PostMapping("/1/{mixName}/valoracion")
    public void postValoracion(@RequestBody ValoracionDTO valoracionDTO, Principal principal, @PathVariable String mixName){
        shishaController.postValoracion(valoracionDTO,principal.getName(),mixName);
    }


}
