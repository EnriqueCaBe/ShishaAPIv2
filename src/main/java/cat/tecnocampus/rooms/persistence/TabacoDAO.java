package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.FormatoDTO;
import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.exceptions.TabacoDoesNotExistEsception;
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

    public TabacoDTO getTabacoByName(String name) {
        final var query = "select t.name,t.descripcion,f.gramos as formatos_gramos, f.precio as formatos_precio from tabaco t " +
                "join formato f on t.name=f.tabaco " +
                "where t.name=?";
        try{
            var result =jdbcTemplate.query(query,tabacosRowMapper,name);
            return result.get(0);
        }catch (EmptyResultDataAccessException | IndexOutOfBoundsException e){
            throw new TabacoDoesNotExistEsception(name);
        }

    }

    public List<TabacoDTO> getTabacos() {
        final var query = "select t.name,t.descripcion,f.gramos as formatos_gramos, f.precio as formatos_precio from tabaco t" +
                " join formato f on t.name=f.tabaco";
        return jdbcTemplate.query(query,tabacosRowMapper);
    }

    public void postTabaco(TabacoDTO tabaco, String marca) {
        final var query = "insert into tabaco(name,descripcion,marca) values(?,?,?,?)";
        jdbcTemplate.update(query,tabaco.getName(),tabaco.getDescripcion(),marca,tabaco.getFormatos());
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
        final var query = "select t.name,t.descripcion,f.gramos as formatos_gramos, f.precio as formatos_precio from tabaco t" +
                " join formato f on t.name=f.tabaco " +
                "where t.marca=?";
        return jdbcTemplate.query(query,tabacosRowMapper,marca);
    }


    public TabacoDTO postFormato(FormatoDTO formatoDTO, String tabaco) {
        final var query = "insert into formato(gramos,precio,imagen,tabaco) values(?,?,?,?)";
        jdbcTemplate.update(query,formatoDTO.getGramos(),formatoDTO.getPrecio(),formatoDTO.getImagen(),tabaco);
        return getTabacoByName(tabaco);
    }

}
