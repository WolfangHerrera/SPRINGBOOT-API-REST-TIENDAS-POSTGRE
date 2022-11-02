package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.ComentarioDTO;

import java.util.List;

public interface ComentarioServicio {
    List<ComentarioDTO> listaComentarios(Long idLugar, Long idCategoria, Long idTienda);

    ComentarioDTO listaComentarioId(Long idLugar, Long idCategoria, Long idTienda, Long idComentario);

    ComentarioDTO crearComentario(ComentarioDTO comentarioDTO, Long idLugar, Long idCategoria, Long idTienda);

    ComentarioDTO actualizarComentario(ComentarioDTO comentarioDTO, Long idLugar, Long idCategoria, Long idTienda, Long idComentario);

    String eliminarComentarioId(Long idLugar, Long idCategoria, Long idTienda, Long idComentario);
}
