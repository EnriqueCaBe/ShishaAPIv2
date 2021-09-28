package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.SaborDTO;

import java.util.List;

public interface SaborDAO {
    List<SaborDTO> getAllSabores();
    void insertSabor(SaborDTO sabor);
    boolean existSabor(String sabor);
}
