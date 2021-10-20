package com.shishaapi.example.persistence;

import com.shishaapi.example.application.dtos.FormatoDTO;
import com.shishaapi.example.application.dtos.TabacoDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FormatoDAO implements com.shishaapi.example.application.daosInterface.FormatoDAO {

    JdbcTemplate jdbcTemplate;

    public FormatoDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<FormatoDTO> formatosRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("id")
                    .newResultSetExtractor(FormatoDTO.class);

    @Override
    public void insertFormato(FormatoDTO formatoDTO) {
        final String query = "insert into formato(id,gramos, precio) values(?,?,?)";
        jdbcTemplate.update(query, formatoDTO.getId(), formatoDTO.getGramos(), formatoDTO.getPrecio());
    }

    @Override
    public boolean isFormatoExists(FormatoDTO formatoDTO) {
        final String query = "select id,gramos, precio from formato where gramos = ? and precio = ?";
        List<FormatoDTO> list = jdbcTemplate.query(query,formatosRowMapper,formatoDTO.getGramos(),formatoDTO.getPrecio());
        return list.size() != 0;
    }

    @Override
    public List<FormatoDTO> getAllFormatos() {
        final String query = "select * from formato order by precio";
        return jdbcTemplate.query(query, formatosRowMapper);
    }

    @Override
    public List<FormatoDTO> getFormatosByTabaco(TabacoDTO tabacoDTO) {
        final String query = "select gramos,precio from formato join tabaco_formato_asso on formato.id=tabaco_formato_asso.formato_id " +
                "JOIN tabaco on tabaco_formato_asso.tabaco_id=tabaco.id where tabaco.id=? order by gramos";
        return jdbcTemplate.query(query, formatosRowMapper,tabacoDTO.getId());

    }
}
