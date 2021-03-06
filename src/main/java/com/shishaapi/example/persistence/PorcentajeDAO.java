package com.shishaapi.example.persistence;

import com.shishaapi.example.application.dtos.PorcentajeDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PorcentajeDAO implements com.shishaapi.example.application.daosInterface.PorcentajeDAO {

    JdbcTemplate jdbcTemplate;

    public PorcentajeDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<PorcentajeDTO> porcentajeRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("name")
                    .newResultSetExtractor(PorcentajeDTO.class);

    @Override
    public List<PorcentajeDTO> getPorcentajesByMezclaId(int id) {
        final String query = "select id, porcentaje, tabaco, mezcla from porcentaje where mezcla=?";
        return jdbcTemplate.query(query,porcentajeRowMapper,id);
    }
}
