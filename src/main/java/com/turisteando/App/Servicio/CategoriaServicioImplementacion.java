package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.CategoriaDTO;
import com.turisteando.App.Excepcion.ResourceNotFoundException;
import com.turisteando.App.Modelo.Categoria;
import com.turisteando.App.Modelo.Lugar;
import com.turisteando.App.Repositorio.CategoriaRepositorio;
import com.turisteando.App.Repositorio.LugarRepositorio;
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
    private LugarRepositorio lugarRepositorio;

    @Autowired
    private CategoriaRepositorio categoriaRepositorio;

    @Override
    public List<CategoriaDTO> listaCategorias(Long idLugar) {
        List<Categoria> categorias = categoriaRepositorio.findByLugarIdLugar(idLugar);
        return categorias.stream().map(categoria -> mapDTO(categoria)).collect(Collectors.toList());
    }


    @Override
    public CategoriaDTO crearCategoria(CategoriaDTO categoriaDTO, Long idLugar) {
        Lugar lugar = lugarRepositorio.findById(idLugar).orElseThrow(() -> new ResourceNotFoundException("Lugar", "ID", idLugar));
        Categoria categoria = mapEntidad(categoriaDTO);

        categoria.setLugar(lugar);
        Categoria nuevaCategoria = categoriaRepositorio.save(categoria);

        return mapDTO(nuevaCategoria);
    }

    @Override
    public CategoriaDTO actualizarCategoria(CategoriaDTO categoriaDTO, Long idLugar, Long idCategoria) {
        Lugar lugar = lugarRepositorio.findById(idLugar).orElseThrow(() -> new ResourceNotFoundException("Lugar", "ID", idLugar));
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));

        if(!categoria.getLugar().getIdLugar().equals(lugar.getIdLugar())){
            throw new ResourceNotFoundException("Categoria", "ID", idCategoria);
        }

        categoria.setNombreCategoria(categoriaDTO.getNombreCategoria());
        categoria.setDescripcionCategoria(categoriaDTO.getDescripcionCategoria());
        categoria.setImagenCategoria(categoriaDTO.getImagenCategoria());

        Categoria actualizarCategoria = categoriaRepositorio.save(categoria);
        return mapDTO(actualizarCategoria);
    }

    @Override
    public String eliminarCategoria(Long idLugar, Long idCategoria) {
        Lugar lugar = lugarRepositorio.findById(idLugar).orElseThrow(() -> new ResourceNotFoundException("Lugar", "ID", idLugar));
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));

        if(!categoria.getLugar().getIdLugar().equals(lugar.getIdLugar())){
            throw new ResourceNotFoundException("Categoria", "ID", idCategoria);
        }
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
