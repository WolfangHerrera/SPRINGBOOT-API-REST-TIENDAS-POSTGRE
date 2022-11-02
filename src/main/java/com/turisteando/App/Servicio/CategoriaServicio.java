package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.CategoriaDTO;

import java.util.List;

public interface CategoriaServicio {

    List<CategoriaDTO> listaCategorias(Long idLugar);
    CategoriaDTO crearCategoria(CategoriaDTO categoriaDTO, Long idLugar);

    CategoriaDTO actualizarCategoria(CategoriaDTO categoriaDTO, Long idLugar, Long idCategoria);

    String eliminarCategoria(Long idLugar, Long idCategoria);
}
