package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.CategoriaDTO;
import com.turisteando.App.Excepcion.ResourceNotFoundException;
import com.turisteando.App.Modelo.Categoria;
import com.turisteando.App.Repositorio.CategoriaRepositorio;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CategoriaServicioImplementacion implements CategoriaServicio {

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private CategoriaRepositorio categoriaRepositorio;

    @Override
    public List<CategoriaDTO> listaCategorias() {
        List<Categoria> categorias = categoriaRepositorio.findAll();
        return categorias.stream().map(categoria -> mapDTO(categoria)).collect(Collectors.toList());
    }

    @Override
    public CategoriaDTO crearCategoria(CategoriaDTO categoriaDTO) {
        Categoria categoria = mapEntidad(categoriaDTO);
        Categoria nuevaCategoria = categoriaRepositorio.save(categoria);

        return mapDTO(nuevaCategoria);
    }

    @Override
    public CategoriaDTO actualizarCategoria(CategoriaDTO categoriaDTO, Long idCategoria) {
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));

        categoria.setNombreCategoria(categoriaDTO.getNombreCategoria());
        categoria.setDescripcionCategoria(categoriaDTO.getDescripcionCategoria());
        categoria.setImagenCategoria(categoriaDTO.getImagenCategoria());

        Categoria actualizarCategoria = categoriaRepositorio.save(categoria);
        return mapDTO(actualizarCategoria);
    }

    @Override
    public String eliminarCategoria(Long idCategoria) {
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        categoriaRepositorio.delete(categoria);

        return "ID: " + idCategoria + " - Categoria eliminada correctamente";
    }

    private CategoriaDTO mapDTO(Categoria categoria){
        CategoriaDTO categoriaDTO = modelMapper.map(categoria, CategoriaDTO.class);
        return categoriaDTO;
    }

    private Categoria mapEntidad(CategoriaDTO categoriaDTO){
        Categoria categoria = modelMapper.map(categoriaDTO, Categoria.class);
        return categoria;
    }
}
