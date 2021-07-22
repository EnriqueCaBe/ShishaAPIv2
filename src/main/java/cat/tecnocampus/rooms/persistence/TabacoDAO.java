package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TabacoDAO implements cat.tecnocampus.rooms.application.daosInterface.TabacoDAO {

    JdbcTemplate jdbcTemplate;

    public TabacoDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<TabacoDTO> tabacosRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newResultSetExtractor(TabacoDTO.class);

    @Override
    public void insertTabaco(TabacoDTO tabaco) {
        final String query = "insert into tabaco(name_tabaco,name_api, descripcion, marca) values(?,?,?,?)";
        jdbcTemplate.update(query,tabaco.getName_tabaco(), tabaco.getName_api(), tabaco.getDescripcion(), tabaco.getMarca());
    }

    @Override
    public boolean isTabacoExists(TabacoDTO tabacoDTO) {
        final String query = "select name_tabaco from tabaco where name_tabaco = ?";
        List<TabacoDTO> list = jdbcTemplate.query(query,tabacosRowMapper, tabacoDTO.getName_tabaco());
        return list.size() != 0;
    }

    @Override
    public List<TabacoDTO> getAllTabaco() {
        final String query = "select * from tabaco limit 20";
        return jdbcTemplate.query(query,tabacosRowMapper);
    }

    public List<TabacoDTO> getTabacosByMarca(MarcaDTO marca) {
        final String query = "select * from tabaco where marca=?";
        return jdbcTemplate.query(query, tabacosRowMapper, marca.getName_marca());
    }
}
