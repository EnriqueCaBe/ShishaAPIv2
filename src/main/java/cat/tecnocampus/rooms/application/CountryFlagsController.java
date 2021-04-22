package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.FlagDTO;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
public class CountryFlagsController {
    private final RestTemplate restTemplate;
    private final String REQUEST_URI = "https://restcountries.eu/rest/v2/name/{pais}?fields=name;flag;";


    public CountryFlagsController(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    public FlagDTO getFlag(String pais) {
        String jsonString = restTemplate.getForObject(REQUEST_URI, String.class, pais);
        try {
            return createFlagDTOfromJsonString(jsonString);
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    private FlagDTO createFlagDTOfromJsonString(String jsonString) throws JsonProcessingException, JsonMappingException, JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        JsonNode jsonNode = mapper.readTree(jsonString);
        FlagDTO flagDTO = new FlagDTO();
        flagDTO.setPais(jsonNode.get(0).get("name").asText());
        flagDTO.setFlag_image(jsonNode.get(0).get("flag").asText());
        return flagDTO;
    }
}
