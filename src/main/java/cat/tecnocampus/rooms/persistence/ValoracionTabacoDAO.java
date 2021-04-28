package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.ValoracionDTO;
import cat.tecnocampus.rooms.application.dtos.ValoracionTabacoDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ValoracionTabacoDAO implements cat.tecnocampus.rooms.application.daosInterface.ValoracionTabacoDAO {
    JdbcTemplate jdbcTemplate;

    public ValoracionTabacoDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    ResultSetExtractorImpl<ValoracionTabacoDTO> valoracionesRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("id")
                    .newResultSetExtractor(ValoracionTabacoDTO.class);


    @Override
    public List<ValoracionTabacoDTO> getValoracionesByTabacoId(String tabaco) {
        final String query = "select id, nota, usuario, tabaco, comentario from valoracion_tabaco where tabaco=?";
        return jdbcTemplate.query(query,valoracionesRowMapper,tabaco);
    }

    @Override
    public void postValoracionTabaco(ValoracionTabacoDTO valoracion) {
        final String query="insert into valoracion_tabaco(id,nota,usuario,comentario,tabaco) values(?,?,?,?,?)";
        jdbcTemplate.update(query,valoracion.getId(),valoracion.getNota(),valoracion.getUsuario(),valoracion.getComentario(),valoracion.getTabaco());
    }
}