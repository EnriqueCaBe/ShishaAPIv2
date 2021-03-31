package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;

import java.util.List;

public interface MarcaDAO {
    List<MarcaDTO> getMarcas();
    MarcaDTO getMarcaByName(String name);
    List<MarcaDTO> getMarcasNoTabacos();
    void postMarca(MarcaDTO marca);
    void deleteMarca(String marca);
    List<MarcaDTO> getAll();

}
