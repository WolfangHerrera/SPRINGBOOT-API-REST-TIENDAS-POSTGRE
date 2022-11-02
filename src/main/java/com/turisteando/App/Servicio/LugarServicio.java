package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.LugarDTO;

import java.util.List;

public interface LugarServicio {

    List<LugarDTO> listaLugares();
    LugarDTO crearLugar(LugarDTO lugarDTO);

    LugarDTO actualizarLugar(LugarDTO lugarDTO, Long idLugar);

    String eliminarLugar(Long idLugar);
}
