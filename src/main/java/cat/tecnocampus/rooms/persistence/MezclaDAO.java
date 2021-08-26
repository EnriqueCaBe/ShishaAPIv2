package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.MezclaDTO;
import cat.tecnocampus.rooms.application.dtos.PorcentajeDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@Repository
public class MezclaDAO implements cat.tecnocampus.rooms.application.daosInterface.MezclaDAO {

    JdbcTemplate jdbcTemplate;

    public MezclaDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<MezclaDTO> mezclaRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newResultSetExtractor(MezclaDTO.class);

    ResultSetExtractorImpl<Integer> intRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newResultSetExtractor(Integer.class);



    @Override
    public List<MezclaDTO> getAllMezclas() {
        final String query = "select * from mezcla";
        return jdbcTemplate.query(query, mezclaRowMapper);
    }

    @Override
    public MezclaDTO getMezclaById(int id) {
        final String query = "select * from mezcla where id = ?";
        return jdbcTemplate.query(query,mezclaRowMapper,id).get(0);
    }

    @Override
    public void insertMezcla(MezclaDTO mezclaDTO) {
        final String query = "insert into mezcla(name, estilo, paqueo) values(?,?,?)";
        jdbcTemplate.update(query, mezclaDTO.getName(), mezclaDTO.getEstilo(),mezclaDTO.getPaqueo());
    }

    @Override
    public int getMezclaIdByName(String name) {
        final String query = "select id from mezcla where name = ?";
        return jdbcTemplate.query(query,intRowMapper,name).get(0);
    }

    @Override
    public void insertPorcentajesByMezcla(int mezcla, List<PorcentajeDTO> list) {
        final String query = "insert into porcentaje(porcentaje,tabaco,mezcla) values(?,?,?)";

        jdbcTemplate.batchUpdate(query, new BatchPreparedStatementSetter() {

            @Override
            public void setValues(PreparedStatement preparedStatement, int i) throws SQLException {
                PorcentajeDTO porcentajeDTO = list.get(i);
                preparedStatement.setDouble(1, porcentajeDTO.getPorcentaje());
                preparedStatement.setInt(2, porcentajeDTO.getTabaco());
                preparedStatement.setInt(3, porcentajeDTO.getMezcla());

            }

            @Override
            public int getBatchSize() {
                return list.size();
            }
        });
    }
}
