package com.shishaapi.example.api;

import com.shishaapi.example.application.AssFormatoController;
import com.shishaapi.example.application.dtos.AssFormatoDTO;
import com.shishaapi.example.application.dtos.FormatoDTO;
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

    @PostMapping("/admin/ass_formato/{tabaco}")
    public void insertFormatoTabaco(@PathVariable int tabaco, @RequestBody List<FormatoDTO> formatos){
        assFormatoController.insertFormatoTabaco(tabaco,formatos);
    }


}
