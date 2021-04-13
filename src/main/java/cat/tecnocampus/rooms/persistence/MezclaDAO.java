package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.*;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.simpleflatmapper.jdbc.spring.RowMapperImpl;
import org.springframework.dao.DuplicateKeyException;
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
                    .addKeys("id")
                    .newResultSetExtractor(MezclaDTO.class);


    public List<MezclaDTO> getAllMixes() {
        final var query = "select m.id, m.name, p.tabaco as partes_tabaco, p.porcentaje as partes_porcentaje from mezcla m join porcentaje p on m.id=p.mezcla join tabaco t on p.tabaco=t.name ";
        return jdbcTemplate.query(query,mezclasRowMapper);
    }

    public void postMix(MezclaDTO mezcla) {
            final var query = "insert into mezcla(id,name) values(?,?)";
            jdbcTemplate.update(query, mezcla.getId(), mezcla.getName());
            for (PorcentajeDTO porcentajeDTO : mezcla.getPartes()) {
                final var query1 = "insert into porcentaje(tabaco,porcentaje,mezcla) values(?,?,?)";
                jdbcTemplate.update(query1, porcentajeDTO.getTabaco(), porcentajeDTO.getPorcentaje(), mezcla.getId());
            }
    }


}
