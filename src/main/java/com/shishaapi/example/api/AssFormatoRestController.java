package com.shishaapi.example.api;

import com.shishaapi.example.application.AssFormatoController;
import com.shishaapi.example.application.dtos.AssFormatoDTO;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

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
