package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.UserDTO;
import cat.tecnocampus.rooms.application.dtos.ValoracionDTO;
import cat.tecnocampus.rooms.application.exceptions.AlreadyValoredThisMixException;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ValoracionesDAO implements cat.tecnocampus.rooms.application.daosInterface.ValoracionesDAO {
    JdbcTemplate jdbcTemplate;

    public ValoracionesDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    ResultSetExtractorImpl<ValoracionDTO> valoracionesRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("id")
                    .newResultSetExtractor(ValoracionDTO.class);
    @Override
    public List<ValoracionDTO> getValoracionesByMezclaName(String mezclaname) {
        final var query = "select id, usuario, nota,comentario from valoracion where mezcla=?";
        return jdbcTemplate.query(query,valoracionesRowMapper,mezclaname);
    }

    @Override
    public void postValoracion(ValoracionDTO valoracion, String user, String mezcla) {
        try {
            final var query1 = "select id, nota, usuario,mezcla from valoracion where usuario=? and mezcla=?";
            var result=jdbcTemplate.query(query1,valoracionesRowMapper,user,mezcla);
            result.get(0);
            throw new AlreadyValoredThisMixException();
        }catch(IndexOutOfBoundsException dke){
            final var query = "insert into valoracion(id,nota,usuario,mezcla,comentario) values(?,?,?,?,?)";
            jdbcTemplate.update(query, valoracion.getId(), valoracion.getNota(), user, mezcla,valoracion.getComentario());
        }
    }


}
