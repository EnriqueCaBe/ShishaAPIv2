package com.shishaapi.example.persistence;

import com.shishaapi.example.application.dtos.MarcaDTO;
import com.shishaapi.example.application.dtos.TabacoDTO;
import com.shishaapi.example.application.dtos.UsuarioDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

@Repository
public class TabacoDAO implements com.shishaapi.example.application.daosInterface.TabacoDAO {

    JdbcTemplate jdbcTemplate;

    public TabacoDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<TabacoDTO> tabacosRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newResultSetExtractor(TabacoDTO.class);

    ResultSetExtractorImpl<UsuarioDTO> userRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newResultSetExtractor(UsuarioDTO.class);

    @Override
    public void insertTabaco(TabacoDTO tabaco) {
        final String query = "insert into tabaco(id,name_tabaco,name_api, descripcion,sabor1,sabor2,sabor3,sabor4,sabor5, marca, imagen, imagen_flag,fecha_publicacion,novedad) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(query,tabaco.getId(),tabaco.getName_tabaco(), tabaco.getName_api(), tabaco.getDescripcion(),tabaco.getSabor1(),tabaco.getSabor2(),tabaco.getSabor3(),tabaco.getSabor4(),tabaco.getSabor5(), tabaco.getMarca(), tabaco.getImagen(),tabaco.getImagen_flag(),tabaco.getFecha_publicacion(),"T");
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
        final String query = "update tabaco set imagen=? where id=?";
        jdbcTemplate.update(query, imagen,id);
    }

    @Override
    public TabacoDTO getTabacoById(int id) {
        final String query = "select * from tabaco where id=?";
        return jdbcTemplate.query(query, tabacosRowMapper, id).get(0);
    }

    @Override
    public void updateTabaco(TabacoDTO tabacoDTO) {
        final String query = "update tabaco set name_tabaco=?, name_api=?, descripcion=?,sabor1=?,sabor2=?,sabor3=?,sabor4=?,sabor5=?, marca=?, imagen=?, imagen_flag=? where id=?";
        jdbcTemplate.update(query,tabacoDTO.getName_tabaco(),tabacoDTO.getName_api(),tabacoDTO.getDescripcion(),tabacoDTO.getSabor1(),tabacoDTO.getSabor2(),tabacoDTO.getSabor3(),tabacoDTO.getSabor4(),tabacoDTO.getSabor5(), tabacoDTO.getMarca(),tabacoDTO.getImagen(),tabacoDTO.getImagen_flag(),tabacoDTO.getId());
    }

    public boolean canUpdate(TabacoDTO tabacoDTO) {
        final String query = "select name_api from tabaco where name_api=?";
        List<TabacoDTO> list = jdbcTemplate.query(query, tabacosRowMapper, tabacoDTO.getName_api());
        return list.size() == 1;
    }

    public List<TabacoDTO> getNewTabacos() {
        final String query = "select * from tabaco where novedad='T'";
        return jdbcTemplate.query(query, tabacosRowMapper);
    }

    @Override
    public void updateNovedades(List<TabacoDTO> list) {
        final String query = "update tabaco set novedad='F' where id=?";

        jdbcTemplate.batchUpdate(query, new BatchPreparedStatementSetter() {

            @Override
            public void setValues(PreparedStatement ps, int i) throws SQLException {
                TabacoDTO tabacoDTO = list.get(i);
                ps.setInt(1, tabacoDTO.getId());
            }

            @Override
            public int getBatchSize() {
                return list.size();
            }
        });
    }

    @Override
    public List<TabacoDTO> getLastNovedades(String last2WeeksDateTime, String lastWeekDateTime) {
        final String query = "select * from tabaco where fecha_publicacion between ? and ?";
        return jdbcTemplate.query(query,tabacosRowMapper, last2WeeksDateTime,lastWeekDateTime);
    }

    @Override
    public List<TabacoDTO> getTabacosBySabor(String sabor) {
        final String query = "select * from tabaco where sabor1=? or sabor2=? or sabor3=? or sabor4=? or sabor5=?";
        return jdbcTemplate.query(query,tabacosRowMapper,sabor,sabor,sabor,sabor,sabor);
    }

    @Override
    public UsuarioDTO getUsuarioByName(String username) {
        final String query = "select usuario.username, usuario.password,role as authority from usuario join authorities on usuario.username=authorities.username where usuario.username=?";
        return jdbcTemplate.query(query,userRowMapper,username).get(0);
    }
}
