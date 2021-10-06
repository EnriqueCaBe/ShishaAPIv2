package com.shishaapi.shishasmataro.api;

import com.shishaapi.shishasmataro.application.FormatoController;

import com.shishaapi.shishasmataro.application.dtos.FormatoDTO;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Validated
@RestController
@CrossOrigin(origins = "*")
public class FormatoRestController {

    FormatoController formatoController;

    public FormatoRestController(FormatoController formatoController) {
        this.formatoController = formatoController;
    }

    @PostMapping("/admin/formato")
    public void postFormato(@RequestBody @Valid FormatoDTO formatoDTO){
        formatoController.postFormato(formatoDTO);
    }

    @GetMapping("/formato/all")
    public List<FormatoDTO> getAllFormato(){
        return formatoController.getAllFormato();
    }
}
