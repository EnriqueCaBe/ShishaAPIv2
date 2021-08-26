package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.dtos.TabacoSearchDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.Collection;
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
        final String query = "insert into tabaco(name_tabaco,name_api, descripcion, marca, imagen, imagen_flag) values(?,?,?,?,?,?)";
        jdbcTemplate.update(query,tabaco.getName_tabaco(), tabaco.getName_api(), tabaco.getDescripcion(), tabaco.getMarca(), tabaco.getImagen(),tabaco.getImagen_flag());
    }

    @Override
    public boolean isTabacoExists(TabacoDTO tabacoDTO) {
        final String query = "select name_tabaco from tabaco where name_api = ?";
        List<TabacoDTO> list = jdbcTemplate.query(query,tabacosRowMapper, tabacoDTO.getName_api());
        return list.size() != 0;
    }

    @Override
    public List<TabacoDTO> getAllTabaco() {
        final String query = "select * from tabaco order by name_tabaco";
        return jdbcTemplate.query(query,tabacosRowMapper);
    }

    public List<TabacoDTO> getTabacosByMarca(MarcaDTO marca) {
        final String query = "select * from tabaco where marca=? order by name_tabaco";
        return jdbcTemplate.query(query, tabacosRowMapper, marca.getName_marca());
    }

    @Override
    public void updateImage(String imagen, int id) {
        final String query = "update tabaco set imagen_flag=? where id=?";
        jdbcTemplate.update(query, imagen,id);
    }

    @Override
    public TabacoDTO getTabacoById(int id) {
        final String query = "select * from tabaco where id=?";
        return jdbcTemplate.query(query, tabacosRowMapper, id).get(0);
    }

    @Override
    public List<TabacoDTO> getTabacosBySearch(TabacoSearchDTO tabacoSearchDTO) {
        return null;
    }

    @Override
    public List<TabacoDTO> getTabacosByName(String tabaco_name) {
        final String query = "select * from tabaco where name_tabaco = ?";
        return jdbcTemplate.query(query,tabacosRowMapper,tabaco_name);
    }

    @Override
    public Collection<? extends TabacoDTO> getTabacosByMarcaName(String marca) {
        final String query = "select * from tabaco where marca = ?" ;
        return jdbcTemplate.query(query,tabacosRowMapper,marca);
    }

    @Override
    public Collection<? extends TabacoDTO> getTabacosByGramos(double gramos) {
        final String query = "select tabaco.id,tabaco.name_tabaco,tabaco.name_api, tabaco.descripcion, tabaco.marca, tabaco.imagen, tabaco.imagen_flag  from tabaco join tabaco_formato_asso on tabaco_formato_asso.tabaco_id=tabaco.id join formato on tabaco_formato_asso.formato_id=formato.id where formato.gramos=?";
        return jdbcTemplate.query(query,tabacosRowMapper,gramos);
    }

    @Override
    public Collection<? extends TabacoDTO> getTabacosByPrecio(double precio) {
        final String query = "select tabaco.id,tabaco.name_tabaco,tabaco.name_api, tabaco.descripcion, tabaco.marca, tabaco.imagen, tabaco.imagen_flag  from tabaco join tabaco_formato_asso on tabaco_formato_asso.tabaco_id=tabaco.id join formato on tabaco_formato_asso.formato_id=formato.id where formato.precio=?";
        return jdbcTemplate.query(query,tabacosRowMapper,precio);
    }

    @Override
    public void updateTabaco(TabacoDTO tabacoDTO) {
        final String query = "update tabaco set name_tabaco=?, name_api=?, descripcion=?, marca=?, imagen=?, imagen_flag=? where id=?";
        jdbcTemplate.update(query,tabacoDTO.getName_tabaco(),tabacoDTO.getName_api(),tabacoDTO.getDescripcion(), tabacoDTO.getMarca(),tabacoDTO.getImagen(),tabacoDTO.getImagen_flag(),tabacoDTO.getId());
    }

    public boolean canUpdate(TabacoDTO tabacoDTO) {
        final String query = "select name_api from tabaco where name_api=?";
        List<TabacoDTO> list = jdbcTemplate.query(query, tabacosRowMapper, tabacoDTO.getName_api());
        return list.size() == 1;
    }

    public List<TabacoDTO> getNewTabacos(String lastWeekDateTime, String actualDateTime) {
        final String query = "select * from tabaco where fecha_publicacion<?";
        return jdbcTemplate.query(query, tabacosRowMapper,actualDateTime);
    }
}
