package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;


@Service
public class ShishaDatabaseController {

    private static final String URL = "http://192.168.44.119:9002";
    RestTemplate restTemplate;

    public ShishaDatabaseController(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public List<MarcaDTO> getAllMarcasDB() throws JsonProcessingException {
        ResponseEntity<String> s = restTemplate.getForEntity("http://localhost:9002/marca/all",String.class);
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

    public List<TabacoDTO> getTabacosByMarca(int marca) throws JsonProcessingException {
        ResponseEntity<String> s = restTemplate.getForEntity("http://localhost:9002/marca/" + marca,String.class);
        ObjectMapper objectMapper = new ObjectMapper();
        JsonNode root = objectMapper.readTree(s.getBody());
        List<TabacoDTO> list = new ArrayList<>();
        System.out.println(s.getBody());
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
}
