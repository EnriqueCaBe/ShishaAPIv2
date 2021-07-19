package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class MarcaDAO implements cat.tecnocampus.rooms.application.daosInterface.MarcaDAO {

    JdbcTemplate jdbcTemplate;

    public MarcaDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<MarcaDTO> marcasRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newResultSetExtractor(MarcaDTO.class);

    @Override
    public List<MarcaDTO> getAllMarcas() {
        final String query = "select name_marca, pais, pais_api, descripcion, imagen, imagen_flag from marca";
        return jdbcTemplate.query(query, marcasRowMapper);
    }

    @Override
    public void insertMarca(MarcaDTO marcaDTO) {
        final String query = "insert into marca(name_marca,pais,pais_api,descripcion,imagen, imagen_flag) values(?,?,?,?,?,?)";
        jdbcTemplate.update(query,marcaDTO.getNameMarca(), marcaDTO.getPais(), marcaDTO.getPais_api(), marcaDTO.getDescripcion(), marcaDTO.getImagen(), marcaDTO.getImagen_flag());
    }

    @Override
    public boolean isMarcaExists(MarcaDTO marcaDTO) {
        final String query = "select name_marca from marca where name_marca = ?";
        List<MarcaDTO> list = jdbcTemplate.query(query, marcasRowMapper,marcaDTO.getNameMarca());
        return list.size() != 0;
    }
}
