package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.LugarDTO;
import com.turisteando.App.Excepcion.ResourceNotFoundException;
import com.turisteando.App.Modelo.Lugar;
import com.turisteando.App.Repositorio.LugarRepositorio;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class LugarServicioImplementacion implements LugarServicio {

    @Autowired
    private LugarRepositorio lugarRepositorio;

    @Autowired
    private ModelMapper modelMapper;

    @Override
    public List<LugarDTO> listaLugares() {
        List<Lugar> lugares = lugarRepositorio.findAll();
        return lugares.stream().map(lugar -> mapDTO(lugar)).collect(Collectors.toList());
    }

    @Override
    public LugarDTO crearLugar(LugarDTO lugarDTO) {
        Lugar lugar = mapEntidad(lugarDTO);
        Lugar nuevoLugar = lugarRepositorio.save(lugar);

        return mapDTO(nuevoLugar);
    }

    @Override
    public LugarDTO actualizarLugar(LugarDTO lugarDTO, Long idLugar) {
        Lugar lugar = lugarRepositorio.findById(idLugar).orElseThrow(() -> new ResourceNotFoundException("Lugar", "ID", idLugar));

        lugar.setNombreLugar(lugarDTO.getNombreLugar());

        Lugar actualizarLugar = lugarRepositorio.save(lugar);
        return mapDTO(actualizarLugar);
    }

    @Override
    public String eliminarLugar(Long idLugar) {
        Lugar lugar = lugarRepositorio.findById(idLugar).orElseThrow(() -> new ResourceNotFoundException("Lugar", "ID", idLugar));
        lugarRepositorio.delete(lugar);

        return "ID: " + idLugar + " - Lugar eliminado correctamente";
    }

    private LugarDTO mapDTO(Lugar lugar){
        LugarDTO lugarDTO = modelMapper.map(lugar, LugarDTO.class);
        return lugarDTO;
    }

    private Lugar mapEntidad(LugarDTO lugarDTO){
        Lugar lugar = modelMapper.map(lugarDTO, Lugar.class);
        return lugar;
    }
}
