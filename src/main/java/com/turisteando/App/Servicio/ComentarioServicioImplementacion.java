package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.ComentarioDTO;
import com.turisteando.App.Excepcion.ResourceNotFoundException;
import com.turisteando.App.Modelo.Categoria;
import com.turisteando.App.Modelo.Comentario;
import com.turisteando.App.Modelo.Tienda;
import com.turisteando.App.Repositorio.CategoriaRepositorio;
import com.turisteando.App.Repositorio.ComentarioRepositorio;
import com.turisteando.App.Repositorio.TiendaRepositorio;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ComentarioServicioImplementacion implements ComentarioServicio {

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    ComentarioRepositorio comentarioRepositorio;

    @Autowired
    TiendaRepositorio tiendaRepositorio;

    @Autowired
    CategoriaRepositorio categoriaRepositorio;

    @Override
    public List<ComentarioDTO> listaComentarios(long idCategoria, long idTienda) {
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        Tienda tienda = tiendaRepositorio.findById(idTienda).orElseThrow(() -> new ResourceNotFoundException("Tienda", "ID", idTienda));
        if(!tienda.getCategoria().getIdCategoria().equals(categoria.getIdCategoria())){
            throw new ResourceNotFoundException("Tienda", "ID", idTienda);
        }
        List<Comentario> comentarios = comentarioRepositorio.findByTiendaIdTienda(idTienda);
        return comentarios.stream().map(comentario -> mapDTO(comentario)).collect(Collectors.toList());
    }

    @Override
    public ComentarioDTO listaComentarioId(long idCategoria, long idTienda, long idComentario) {
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        Tienda tienda = tiendaRepositorio.findById(idTienda).orElseThrow(() -> new ResourceNotFoundException("Tienda", "ID", idTienda));
        if(!tienda.getCategoria().getIdCategoria().equals(categoria.getIdCategoria())){
            throw new ResourceNotFoundException("Tienda", "ID", idTienda);
        }
        Comentario comentario = comentarioRepositorio.findById(idComentario).orElseThrow(() -> new ResourceNotFoundException("Comentario", "ID", idComentario));
        if (!comentario.getTienda().getIdTienda().equals(tienda.getIdTienda())) {
            throw new ResourceNotFoundException("Comentario", "ID", idComentario);
        }
        return mapDTO(comentario);
    }

    @Override
    public ComentarioDTO crearComentario(ComentarioDTO comentarioDTO, long idCategoria, long idTienda) {
        Comentario comentario = mapEntidad(comentarioDTO);
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        Tienda tienda = tiendaRepositorio.findById(idTienda).orElseThrow(() -> new ResourceNotFoundException("Tienda", "ID", idTienda));
        if(!tienda.getCategoria().getIdCategoria().equals(categoria.getIdCategoria())){
            throw new ResourceNotFoundException("Tienda", "ID", idTienda);
        }
        comentario.setTienda(tienda);
        Comentario nuevoComentario = comentarioRepositorio.save(comentario);

        return mapDTO(nuevoComentario);
    }

    @Override
    public ComentarioDTO actualizarComentario(ComentarioDTO comentarioDTO, long idCategoria, long idTienda, long idComentario) {
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        Tienda tienda = tiendaRepositorio.findById(idTienda).orElseThrow(() -> new ResourceNotFoundException("Tienda", "ID", idTienda));
        if(!tienda.getCategoria().getIdCategoria().equals(categoria.getIdCategoria())){
            throw new ResourceNotFoundException("Tienda", "ID", idTienda);
        }
        Comentario comentario = comentarioRepositorio.findById(idComentario).orElseThrow(() -> new ResourceNotFoundException("Comentario", "ID", idComentario));
        if (!comentario.getTienda().getIdTienda().equals(tienda.getIdTienda())) {
            throw new ResourceNotFoundException("Comentario", "ID", idComentario);
        }
        comentario.setTituloComentario(comentarioDTO.getTituloComentario());
        comentario.setUsuarioComentario(comentarioDTO.getUsuarioComentario());
        comentario.setCuerpoComentario(comentarioDTO.getCuerpoComentario());
        comentario.setTienda(tienda);

        Comentario nuevoComentario = comentarioRepositorio.save(comentario);
        return mapDTO(nuevoComentario);
    }

    @Override
    public String eliminarComentarioId(long idCategoria, long idTienda, long idComentario) {
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        Tienda tienda = tiendaRepositorio.findById(idTienda).orElseThrow(() -> new ResourceNotFoundException("Tienda", "ID", idTienda));
        if(!tienda.getCategoria().getIdCategoria().equals(categoria.getIdCategoria())){
            throw new ResourceNotFoundException("Tienda", "ID", idTienda);
        }
        Comentario comentario = comentarioRepositorio.findById(idComentario).orElseThrow(() -> new ResourceNotFoundException("Comentario", "ID", idComentario));
        if (!comentario.getTienda().getIdTienda().equals(tienda.getIdTienda())) {
            throw new ResourceNotFoundException("Comentario", "ID", idComentario);
        }
        comentarioRepositorio.deleteById(idComentario);
        return "ID: " + idComentario + " - Comentario eliminado correctamente";
    }

    private ComentarioDTO mapDTO(Comentario comentario) {
        ComentarioDTO comentarioDTO = modelMapper.map(comentario, ComentarioDTO.class);

        return comentarioDTO;
    }

    private Comentario mapEntidad(ComentarioDTO comentarioDTO) {
        Comentario comentario = modelMapper.map(comentarioDTO, Comentario.class);

        return comentario;
    }
}
