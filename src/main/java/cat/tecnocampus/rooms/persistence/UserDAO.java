package cat.tecnocampus.rooms.persistence;

import cat.tecnocampus.rooms.application.dtos.UserDTO;
import cat.tecnocampus.rooms.application.exceptions.UserDoesNotExistException;
import org.simpleflatmapper.jdbc.spring.JdbcTemplateMapperFactory;
import org.simpleflatmapper.jdbc.spring.ResultSetExtractorImpl;
import org.simpleflatmapper.jdbc.spring.RowMapperImpl;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDAO implements cat.tecnocampus.rooms.application.daosInterface.UserDAO {

    JdbcTemplate jdbcTemplate;

    public UserDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    ResultSetExtractorImpl<UserDTO> usersRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("username")
                    .newResultSetExtractor(UserDTO.class);

    RowMapperImpl<UserDTO> userRowMapper =
            JdbcTemplateMapperFactory
                    .newInstance()
                    .addKeys("username")
                    .newRowMapper(UserDTO.class);

    @Override
    public List<UserDTO> getAllUsers() {
        final var query = "select id, email, username, password from users";
        return jdbcTemplate.query(query,usersRowMapper);
    }

    @Override
    public UserDTO getUserByUsername(String username) {
        final var query = "select id, email, username, password from users where username=?";
        try{
            var result =jdbcTemplate.query(query,userRowMapper,username);
            return result.get(0);
        }catch (EmptyResultDataAccessException | IndexOutOfBoundsException e){
            throw new UserDoesNotExistException(username);
        }
    }

    @Override
    public void postUser(UserDTO user) {
        final var query = "insert into users(id,username,email,password) values(?,?,?,?)";
        jdbcTemplate.update(query,user.getId(),user.getUsername(),user.getEmail(),user.getPassword());
    }
}
