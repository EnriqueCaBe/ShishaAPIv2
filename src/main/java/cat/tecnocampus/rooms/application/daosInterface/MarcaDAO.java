package cat.tecnocampus.rooms.application.daosInterface;

import cat.tecnocampus.rooms.application.dtos.MarcaDTO;

import java.util.List;

public interface MarcaDAO {

    List<MarcaDTO> getAllMarcas();

    void insertMarca(MarcaDTO marcaDTO);

    boolean isMarcaExists(MarcaDTO marcaDTO);

    List<MarcaDTO> getMarcasAndTabacos();

    MarcaDTO getMarcaById(int id);

    MarcaDTO getMarcaByName(String marca);

    void getConnected();
}
