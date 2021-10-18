package com.shishaapi.example.persistence;

import com.shishaapi.example.application.dtos.MarcaDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class MarcaDAO implements com.shishaapi.example.application.daosInterface.MarcaDAO {

    JdbcTemplate jdbcTemplate;

    public MarcaDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<MarcaDTO> marcasRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newResultSetExtractor(MarcaDTO.class);

    ResultSetExtractorImpl<Integer> integerResultSetExtractor =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("codi")
                    .newResultSetExtractor(Integer.class);

    @Override
    public List<MarcaDTO> getAllMarcas() {
        final String query = "select id,name_marca, pais, pais_api, descripcion, imagen, imagen_flag from marca order by 2";
        return jdbcTemplate.query(query, marcasRowMapper);
    }

    @Override
    public void insertMarca(MarcaDTO marcaDTO) {
        final String query = "insert into marca(id,name_marca,pais,pais_api,descripcion,imagen, imagen_flag) values(?,?,?,?,?,?,?)";
        jdbcTemplate.update(query,marcaDTO.getId(),marcaDTO.getName_marca(), marcaDTO.getPais(), marcaDTO.getPais_api(), marcaDTO.getDescripcion(), marcaDTO.getImagen(), marcaDTO.getImagen_flag());
    }

    @Override
    public boolean isMarcaExists(MarcaDTO marcaDTO) {
        final String query = "select name_marca from marca where name_marca = ?";
        List<MarcaDTO> list = jdbcTemplate.query(query, marcasRowMapper,marcaDTO.getName_marca());
        return list.size() != 0;
    }

    @Override
    public List<MarcaDTO> getMarcasAndTabacos() {
        final String query = "select * from marca";
        return jdbcTemplate.query(query,marcasRowMapper);
    }

    @Override
    public MarcaDTO getMarcaById(int id) {
        final String query = "select * from marca where id=?";
        return jdbcTemplate.query(query, marcasRowMapper, id).get(0);
    }

    @Override
    public MarcaDTO getMarcaByName(String marca) {
        final String query = "select * from marca where name_marca=?";
        return jdbcTemplate.query(query, marcasRowMapper, marca).get(0);
    }

    @Override
    public void getConnected() {
        final String query = "select 1";
        jdbcTemplate.query(query,integerResultSetExtractor).get(0);
    }

    @Override
    public void deleteMarca(int id) {
        final String query = "delete from marca where id=?";
        jdbcTemplate.update(query,id);
    }


}
