package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.exceptions.MarcaDoesNotExistException;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.simpleflatmapper.jdbc.spring.RowMapperImpl;
import org.springframework.dao.EmptyResultDataAccessException;
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

    RowMapperImpl<MarcaDTO> marcaRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newRowMapper(MarcaDTO.class);


    public List<MarcaDTO> getMarcas() {
        final var query= "select m.name,m.pais,m.descripcion,m.imagen,t.name as tabacos_name, t.descripcion as tabacos_descripcion  from marca m " +
                "join tabaco t on m.name = t.marca";
        return jdbcTemplate.query(query,marcasRowMapper);
    }

    public MarcaDTO getMarcaByName(String name) {
        final var query = "select m.name,m.pais,m.descripcion,m.imagen from marca m " +
                "where m.name=?";
        try{
            var result = jdbcTemplate.query(query,marcaRowMapper,name);
            return result.get(0);
        }catch(EmptyResultDataAccessException | IndexOutOfBoundsException e){
            throw new MarcaDoesNotExistException(name);
        }

    }

    public List<MarcaDTO> getMarcasNoTabacos() {
        final var query= "select m.name,m.pais,m.descripcion,m.imagen from marca m ";
        return jdbcTemplate.query(query,marcasRowMapper);
    }

    public void postMarca(MarcaDTO marca) {
        final var query = "insert into marca(name,pais,descripcion,imagen) values(?,?,?,?)";
        jdbcTemplate.update(query,marca.getName(),marca.getPais(),marca.getDescripcion(),marca.getImagen());
    }

    public void deleteMarca(String marca) {
        final var query = "delete from marca where name=?";
        jdbcTemplate.update(query,marca);
    }

    public List<MarcaDTO> getAll() {
        final var query= "select m.name,m.pais,m.descripcion,m.imagen,t.name as tabacos_name,t.descripcion as tabacos_descripcion, f.gramos as tabacos_formatos_gramos, f.precio as tabacos_formatos_precio from marca m " +
                "join tabaco t on m.name = t.marca join formato f on t.name=f.tabaco";
        return jdbcTemplate.query(query,marcasRowMapper);
    }
}
