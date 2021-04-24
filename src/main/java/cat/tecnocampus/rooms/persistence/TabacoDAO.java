package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.FormatoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.exceptions.TabacoDoesNotExistException;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.simpleflatmapper.jdbc.spring.RowMapperImpl;
import org.springframework.dao.EmptyResultDataAccessException;
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

    RowMapperImpl<TabacoDTO> tabacoRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newRowMapper(TabacoDTO.class);

    public TabacoDTO getTabacoByName(String tabaco, String marca) {
        final var query = "select t.id, t.name,t.descripcion,t.name_api,f.gramos as formatos_gramos, f.precio as formatos_precio from tabaco t " +
                "join formato f on t.name=f.tabaco " +
                "where t.name_api=? and lower(t.marca)=? order by 1 and 4";
        try{
            var result =jdbcTemplate.query(query,tabacosRowMapper,tabaco,marca);
            return result.get(0);
        }catch (EmptyResultDataAccessException | IndexOutOfBoundsException e){
            throw new TabacoDoesNotExistException(tabaco);
        }

    }

    public List<TabacoDTO> getTabacos() {
        final var query = "select t.id,t.name,t.name_api,t.descripcion,f.gramos as formatos_gramos, f.precio as formatos_precio from tabaco t" +
                " join formato f on t.name=f.tabaco order by 1";
        return jdbcTemplate.query(query,tabacosRowMapper);
    }

    public void postTabaco(TabacoDTO tabaco, String marca) {
        final var query = "insert into tabaco(name,t.name_api,descripcion,marca) values(?,?,?,?,?)";
        jdbcTemplate.update(query,tabaco.getName(),tabaco.getName_api(),tabaco.getDescripcion(),marca,tabaco.getFormatos());
        final var query1 = "insert into formato(gramos,precio,tabaco) values(?,?,?)";
        for(FormatoDTO formato: tabaco.getFormatos()){
            jdbcTemplate.update(query1,formato.getGramos(),formato.getPrecio(),tabaco.getName());
        }
    }

    public void deleteTabaco(String tabaco) {
        final var query = "delete from tabaco where name=?";
        jdbcTemplate.update(query,tabaco);
    }

    public List<TabacoDTO> getTabacoByMarca(String marca) {
        final var query = "select t.id,t.name,t.name_api,t.descripcion,f.gramos as formatos_gramos, f.precio as formatos_precio from tabaco t" +
                " join formato f on t.name=f.tabaco " +
                "where t.marca=? order by 1";
        return jdbcTemplate.query(query,tabacosRowMapper,marca);
    }


    public TabacoDTO postFormato(FormatoDTO formatoDTO, String tabaco, String marca) {
        final var query = "insert into formato(gramos,precio,imagen,tabaco) values(?,?,?,?)";
        jdbcTemplate.update(query,formatoDTO.getGramos(),formatoDTO.getPrecio(),formatoDTO.getImagen(),tabaco);
        return getTabacoByName(tabaco,marca);
    }

}
