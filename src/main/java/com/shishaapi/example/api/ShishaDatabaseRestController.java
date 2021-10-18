package com.shishaapi.example.api;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.shishaapi.example.application.ShishaDatabaseController;
import com.shishaapi.example.application.dtos.MarcaDTO;
import com.shishaapi.example.application.dtos.TabacoDTO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ShishaDatabaseRestController {

    private final ShishaDatabaseController shishaDatabaseController;

    public ShishaDatabaseRestController(ShishaDatabaseController shishaDatabaseController) {
        this.shishaDatabaseController = shishaDatabaseController;
    }

    @GetMapping("/admin/db/marcas")
    public List<MarcaDTO> getMarcasDB() throws JsonProcessingException {
        return shishaDatabaseController.getAllMarcasDB();
    }

    @GetMapping("/admin/db/marca/{id}")
    public MarcaDTO getMarcaByID(@PathVariable int id) throws JsonProcessingException {
        return shishaDatabaseController.getMarcaByID(id);
    }

    @GetMapping("/admin/db/marca/tabacos/{marca}")
    public List<TabacoDTO> getTabacosByMarca(@PathVariable String marca) throws JsonProcessingException {
        return shishaDatabaseController.getTabacosByMarca(marca);
    }

    @GetMapping("/admin/db/tabaco/{id}")
    public TabacoDTO getTabacoByID(@PathVariable int id) throws JsonProcessingException {
        return shishaDatabaseController.getTabacoByID(id);
    }
}
