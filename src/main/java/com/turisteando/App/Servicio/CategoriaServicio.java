package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.CategoriaDTO;

import java.util.List;

public interface CategoriaServicio {

    List<CategoriaDTO> listaCategorias();
    CategoriaDTO crearCategoria(CategoriaDTO categoriaDTO);

    CategoriaDTO actualizarCategoria(CategoriaDTO categoriaDTO, Long idCategoria);

    String eliminarCategoria(Long idCategoria);
}
