package cat.tecnocampus.rooms.api;

import cat.tecnocampus.rooms.application.FormatoController;

import cat.tecnocampus.rooms.application.dtos.FormatoDTO;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@Validated
@RestController
@CrossOrigin(origins = "*")
public class FormatoRestController {

    FormatoController formatoController;

    public FormatoRestController(FormatoController formatoController) {
        this.formatoController = formatoController;
    }

    @PostMapping("/formato")
    public void postFormato(@RequestBody @Valid FormatoDTO formatoDTO){
        formatoController.postFormato(formatoDTO);
    }



}
