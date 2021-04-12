package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.MezclaDTO;
import cat.tecnocampus.rooms.application.dtos.PorcentajeDTO;
import cat.tecnocampus.rooms.application.dtos.ValoracionDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MezclaDAO implements cat.tecnocampus.rooms.application.daosInterface.MezclaDAO {
    JdbcTemplate jdbcTemplate;

    public MezclaDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<MezclaDTO> mezclasRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newResultSetExtractor(MezclaDTO.class);


    public List<MezclaDTO> getAllMixes() {
        final var query = "select m.name, p.tabaco as partes_tabaco, p.porcentaje as partes_porcentaje from mezcla m join porcentaje p on m.name=p.mezcla join tabaco t on p.tabaco=t.name ";
        return jdbcTemplate.query(query,mezclasRowMapper);
    }

    public void postMix(MezclaDTO mezcla) {
        final var query = "insert into mezcla(name) values(?)";
        jdbcTemplate.update(query,mezcla.getName());
        for(PorcentajeDTO porcentajeDTO: mezcla.getPartes()) {
            final var query1 = "insert into porcentaje(tabaco,porcentaje,mezcla) values(?,?,?)";
            jdbcTemplate.update(query1, porcentajeDTO.getTabaco(), porcentajeDTO.getPorcentaje(),mezcla.getName());
        }
    }

    public void postValoracion(ValoracionDTO valoracion,String user,String mezcla) {
        final var query = "insert into valoracion(nota,usuario,mezcla) values(?,?,?)";
        jdbcTemplate.update(query,valoracion.getNota(),user,mezcla);
    }


}
