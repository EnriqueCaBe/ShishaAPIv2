package cat.tecnocampus.rooms.application;

import cat.tecnocampus.rooms.application.dtos.TabacoDTO;
import cat.tecnocampus.rooms.application.exceptions.TabacoDoesExistsException;
import cat.tecnocampus.rooms.persistence.TabacoDAO;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class TabacoController {

    private TabacoDAO tabacoDAO;

    public TabacoController(TabacoDAO tabacoDAO) {
        this.tabacoDAO = tabacoDAO;
    }

    public void insertTabaco(TabacoDTO tabaco) {
        if(tabacoDAO.isTabacoExists(tabaco)) {
            tabacoDAO.insertTabaco(tabaco);
        }
        else throw new TabacoDoesExistsException(tabaco.getName_tabaco());
    }

    public List<TabacoDTO> getAllTabaco(){
        return tabacoDAO.getAllTabaco();
    }
}
