package com.shishaapi.example.application;

import com.shishaapi.example.application.dtos.FormatoDTO;
import com.shishaapi.example.application.dtos.MarcaDTO;
import com.shishaapi.example.application.dtos.TabacoDTO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;


@Service
public class ShishaDatabaseController {

    private static final String URL = "http://localhost:8080";
    RestTemplate restTemplate;

    public ShishaDatabaseController(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<MarcaDTO> getAllMarcasDB() throws JsonProcessingException {
        ResponseEntity<String> s = restTemplate.getForEntity(URL + "/marca/all",String.class);
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode root = objectMapper.readTree(s.getBody());
        List<MarcaDTO> list = new ArrayList<MarcaDTO>();
        for(int i = 0; i < root.size(); i++){
            MarcaDTO marca = new MarcaDTO();
            marca.setId(root.get(i).path("id").asInt());
            marca.setName_marca(root.get(i).path("name_marca").asText());
            marca.setPais(root.get(i).path("pais").asText());
            marca.setPais_api(root.get(i).path("pais_api").asText());
            marca.setDescripcion(root.get(i).path("descripcion").asText());
            marca.setImagen(root.get(i).path("imagen").asText());
            marca.setImagen_flag(root.get(i).path("imagen_flag").asText());
            marca.setTabacos(null);
            list.add(marca);
        }
        return list;
    }

    public MarcaDTO getMarcaByID(int id) throws JsonProcessingException {
        ResponseEntity<String> s = restTemplate.getForEntity(URL + "/marca/"+id,String.class);
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode root = objectMapper.readTree(s.getBody());

        MarcaDTO marcaDTO = new MarcaDTO();
        marcaDTO.setId(root.path("id").asInt());
        marcaDTO.setName_marca(root.path("name_marca").asText());
        marcaDTO.setPais(root.path("pais").asText());
        marcaDTO.setPais_api(root.path("pais_api").asText());
        marcaDTO.setDescripcion(root.path("descripcion").asText());
        marcaDTO.setImagen(root.path("imagen").asText());
        marcaDTO.setImagen_flag(root.path("imagen_flag").asText());
        marcaDTO.setTabacos(null);

        return marcaDTO;
    }

    public List<TabacoDTO> getTabacosByMarca(String marca) throws JsonProcessingException {
        ResponseEntity<String> s = restTemplate.getForEntity(URL + "/marca/tabaco/" + marca,String.class);
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode root = objectMapper.readTree(s.getBody());
        List<TabacoDTO> list = new ArrayList<>();
        for(int i = 0; i < root.path("tabacos").size(); i++){
            TabacoDTO tabaco = new TabacoDTO();
            tabaco.setId(root.path("tabacos").get(i).path("id").asInt());
            tabaco.setName_tabaco(root.path("tabacos").get(i).path("name_tabaco").asText());
            tabaco.setName_api(root.path("tabacos").get(i).path("name_api").asText());
            tabaco.setDescripcion(root.path("tabacos").get(i).path("descripcion").asText());
            tabaco.setSabor1(root.path("tabacos").get(i).path("sabor1").asText());
            tabaco.setSabor2(root.path("tabacos").get(i).path("sabor2").asText());
            tabaco.setSabor3(root.path("tabacos").get(i).path("sabor3").asText());
            tabaco.setSabor4(root.path("tabacos").get(i).path("sabor4").asText());
            tabaco.setSabor5(root.path("tabacos").get(i).path("sabor5").asText());
            tabaco.setMarca(root.path("tabacos").get(i).path("marca").asText());
            tabaco.setImagen(root.path("tabacos").get(i).path("imagen").asText());
            tabaco.setImagen_flag(root.path("tabacos").get(i).path("imagen_flag").asText());
            tabaco.setFecha_publicacion(root.path("tabacos").get(i).path("fecha_publicacion").asText());
            tabaco.setNovedad("F");
            tabaco.setFormatos(null);
            list.add(tabaco);
        }
        return list;
    }

    public TabacoDTO getTabacoByID(int id) throws JsonProcessingException {
        ResponseEntity<String> s = restTemplate.getForEntity(URL + "/tabaco/"+id,String.class);
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode root = objectMapper.readTree(s.getBody());

        TabacoDTO tabacoDTO = new TabacoDTO();

        tabacoDTO.setId(root.path("id").asInt());
        tabacoDTO.setName_tabaco(root.path("name_tabaco").asText());
        tabacoDTO.setName_api(root.path("name_api").asText());
        tabacoDTO.setDescripcion(root.path("descripcion").asText());
        tabacoDTO.setSabor1(root.path("sabor1").asText());
        tabacoDTO.setSabor2(root.path("sabor2").asText());
        tabacoDTO.setSabor3(root.path("sabor3").asText());
        tabacoDTO.setSabor4(root.path("sabor4").asText());
        tabacoDTO.setSabor5(root.path("sabor5").asText());
        tabacoDTO.setMarca(root.path("marca").asText());
        tabacoDTO.setImagen(root.path("imagen").asText());
        tabacoDTO.setImagen_flag(root.path("imagen_flag").asText());
        tabacoDTO.setFecha_publicacion("");
        tabacoDTO.setNovedad("");

        List<FormatoDTO> formatos = new ArrayList<FormatoDTO>();
        for(int i = 0; i < root.path("formatos").size(); i++){
            formatos.add(new FormatoDTO(root.path("formatos").get(i).path("id").asInt(),root.path("formatos").get(i).path("gramos").asInt(),root.path("formatos").get(i).path("precio").asDouble()));
        }
        tabacoDTO.setFormatos(formatos);

        return tabacoDTO;

    }
}
