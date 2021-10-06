package com.shishaapi.shishasmataro.persistence;

import com.shishaapi.shishasmataro.application.dtos.SaborDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SaborDAO implements com.shishaapi.shishasmataro.application.daosInterface.SaborDAO {
    JdbcTemplate jdbcTemplate;

    public SaborDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<SaborDTO> saboresRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newResultSetExtractor(SaborDTO.class);


    @Override
    public List<SaborDTO> getAllSabores() {
        final String query = "select * from sabor";
        return jdbcTemplate.query(query,saboresRowMapper);
    }

    @Override
    public void insertSabor(SaborDTO sabor) {
        final String query = "insert into sabor(sabor_desc) values(?)";
        jdbcTemplate.update(query,sabor.getSabor_desc());
    }

    @Override
    public boolean existSabor(String sabor) {
        final String query = "select * from sabor where sabor_desc=?";
        List<SaborDTO> list = jdbcTemplate.query(query,saboresRowMapper,sabor);
        return list.size() > 0;
    }
}
