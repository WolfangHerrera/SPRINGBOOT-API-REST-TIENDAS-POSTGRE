package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.ReservaDTO;

import java.util.List;

public interface ReservaServicio {
    List<ReservaDTO> listaReservas(Long idLugar, Long idCategoria, Long idTienda);

    ReservaDTO crearReserva(ReservaDTO reservaDTO, Long idLugar, Long idCategoria, Long idTienda);
}
