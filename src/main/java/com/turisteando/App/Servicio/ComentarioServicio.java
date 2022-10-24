package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.ComentarioDTO;

import java.util.List;

public interface ComentarioServicio {
    List<ComentarioDTO> listaComentarios(long idCategoria, long idTienda);

    ComentarioDTO listaComentarioId(long idCategoria, long idTienda, long idComentario);

    ComentarioDTO crearComentario(ComentarioDTO comentarioDTO, long idCategoria, long idTienda);

    ComentarioDTO actualizarComentario(ComentarioDTO comentarioDTO, long idCategoria, long idTienda, long idComentario);

    String eliminarComentarioId(long idCategoria, long idTienda, long idComentario);
}
