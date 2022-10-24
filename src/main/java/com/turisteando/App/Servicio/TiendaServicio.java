package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.TiendaDTO;

import java.util.List;

public interface TiendaServicio {
    List<TiendaDTO> listaTiendas(long idCategoria);

    TiendaDTO listaTiendasId(long idCategoria, long idTienda);

    TiendaDTO crearTienda(TiendaDTO tiendaDTO, long idCategoria);

    TiendaDTO actualizarTienda(TiendaDTO tiendaDTO, long idCategoria, long idTienda);

    String eliminarTienda(long idCategoria, long idTienda);
}
