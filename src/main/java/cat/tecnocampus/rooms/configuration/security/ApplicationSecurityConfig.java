package cat.tecnocampus.rooms.configuration.security;

import cat.tecnocampus.rooms.configuration.security.jwt.JwtConfig;
import cat.tecnocampus.rooms.configuration.security.jwt.JwtTokenVerifierFilter;
import cat.tecnocampus.rooms.configuration.security.jwt.JwtUsernamePasswordAuthenticationFilter;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

@EnableWebSecurity
public class ApplicationSecurityConfig extends WebSecurityConfigurerAdapter {

    private final PasswordEncoder passwordEncoder;

    private static final String USERS_QUERY = "select nickname, password, enabled from tinder_user where nickname = ?";
    private static final String AUTHORITIES_QUERY = "select username, role from authorities where username = ?";

    private DataSource dataSource;

    private final JwtConfig jwtConfig;

    public ApplicationSecurityConfig(PasswordEncoder passwordEncoder, DataSource dataSource, JwtConfig jwtConfig) {
        this.passwordEncoder = passwordEncoder;
        this.dataSource = dataSource;
        this.jwtConfig = jwtConfig;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .cors().and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .addFilter(new JwtUsernamePasswordAuthenticationFilter(authenticationManager(), jwtConfig))
                .addFilterAfter(new JwtTokenVerifierFilter(jwtConfig),JwtUsernamePasswordAuthenticationFilter.class)

                .authorizeRequests()
                .antMatchers("/", "index", "/css/*", "/js/*", "/*.html","/2/all","/2/users","/2/marcas/tabacos","/2/marcas","/2/marcas/*","/2/tabacos","/2/tabacos/*/marca/*","/2/tabacos/marca/*").permitAll()
                .antMatchers("/1/mixes","/1/mix","/1/*/valoracion","/1/me").hasRole("USER")
                .antMatchers("/0/users","/0/users/{username}","/0/marcas","/0/marcas/*","/0/tabacos/*","/0/formato/*/*").hasRole("ADMIN")
                .anyRequest()
                .authenticated();
    }

    //Configure authentication manager
    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
                .dataSource(dataSource)
                .usersByUsernameQuery(USERS_QUERY)
                .authoritiesByUsernameQuery(AUTHORITIES_QUERY)
                .passwordEncoder(passwordEncoder);
    }

}
