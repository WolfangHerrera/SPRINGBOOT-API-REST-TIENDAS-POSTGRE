package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.TiendaDTO;

import java.util.List;

public interface TiendaServicio {
    List<TiendaDTO> listaTiendas(Long idLugar, Long idCategoria);

    TiendaDTO listaTiendasId(Long idLugar, Long idCategoria, Long idTienda);

    TiendaDTO crearTienda(TiendaDTO tiendaDTO, Long idLugar, Long idCategoria);

    TiendaDTO actualizarTienda(TiendaDTO tiendaDTO, Long idLugar, Long idCategoria, Long idTienda);

    String eliminarTienda(Long idLugar, Long idCategoria, Long idTienda);
}
