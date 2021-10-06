package com.shishaapi.shishasmataro.persistence;

import com.shishaapi.shishasmataro.application.dtos.AssFormatoDTO;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AssFormatoDAO implements com.shishaapi.shishasmataro.application.daosInterface.AssFormatoDAO {

    private JdbcTemplate jdbcTemplate;

    public AssFormatoDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<AssFormatoDTO> formatosRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("id")
                    .newResultSetExtractor(AssFormatoDTO.class);

    @Override
    public void insertAssFormato(AssFormatoDTO assFormatoDTO) {
        final String query = "insert into tabaco_formato_asso(tabaco_id,formato_id) values(?,?)";
        jdbcTemplate.update(query, assFormatoDTO.getTabaco_id(),assFormatoDTO.getFormato_id());
    }

    @Override
    public boolean isAssFormatoExists(AssFormatoDTO assFormatoDTO) {
        final String query = "select tabaco_id, formato_id from tabaco_formato_asso where tabaco_id = ? and formato_id = ?";
        List<AssFormatoDTO> list = jdbcTemplate.query(query,formatosRowMapper, assFormatoDTO.getTabaco_id(),assFormatoDTO.getFormato_id());
        return list.size() != 0;
    }
}
