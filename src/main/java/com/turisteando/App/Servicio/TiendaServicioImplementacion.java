package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.TiendaDTO;
import com.turisteando.App.Excepcion.ResourceNotFoundException;
import com.turisteando.App.Modelo.Categoria;
import com.turisteando.App.Modelo.Tienda;
import com.turisteando.App.Repositorio.CategoriaRepositorio;
import com.turisteando.App.Repositorio.TiendaRepositorio;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class TiendaServicioImplementacion implements TiendaServicio{

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private TiendaRepositorio tiendaRepositorio;

    @Autowired
    private CategoriaRepositorio categoriaRepositorio;

    @Override
    public List<TiendaDTO> listaTiendas(long idCategoria) {
        List<Tienda> tiendas = tiendaRepositorio.findByCategoriaIdCategoria(idCategoria);
        return tiendas.stream().map(tienda -> mapDTO(tienda)).collect(Collectors.toList());
    }

    @Override
    public TiendaDTO listaTiendasId(long idCategoria, long idTienda) {
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        Tienda tienda = tiendaRepositorio.findById(idTienda).orElseThrow(() -> new ResourceNotFoundException("Tienda", "ID", idTienda));
        if(!tienda.getCategoria().getIdCategoria().equals(categoria.getIdCategoria())){
            throw new ResourceNotFoundException("Tienda", "ID", idTienda);
        }
        return mapDTO(tienda);
    }

    @Override
    public TiendaDTO crearTienda(TiendaDTO tiendaDTO, long idCategoria) {
        Tienda tienda = mapEntidad(tiendaDTO);
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        tienda.setCategoria(categoria);
        Tienda nuevaTienda = tiendaRepositorio.save(tienda);

        return mapDTO(nuevaTienda);
    }

    @Override
    public TiendaDTO actualizarTienda(TiendaDTO tiendaDTO, long idCategoria , long idTienda) {
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        Tienda tienda = tiendaRepositorio.findById(idTienda).orElseThrow(() -> new ResourceNotFoundException("Tienda", "ID", idTienda));
        if(!tienda.getCategoria().getIdCategoria().equals(categoria.getIdCategoria())){
            throw new ResourceNotFoundException("Tienda", "ID", idTienda);
        }
        tienda.setNombreTienda(tiendaDTO.getNombreTienda());
        tienda.setDescripcionTienda(tiendaDTO.getDescripcionTienda());
        tienda.setEmailTienda(tiendaDTO.getEmailTienda());
        tienda.setDireccionTienda(tiendaDTO.getDireccionTienda());
        tienda.setTelefonoTienda(tiendaDTO.getTelefonoTienda());
        tienda.setWebTienda(tiendaDTO.getWebTienda());

        Tienda actualizarTienda = tiendaRepositorio.save(tienda);
        return mapDTO(actualizarTienda);

    }

    @Override
    public String eliminarTienda(long idCategoria, long idTienda) {
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        Tienda tienda = tiendaRepositorio.findById(idTienda).orElseThrow(() -> new ResourceNotFoundException("Tienda", "ID", idTienda));
        if(!tienda.getCategoria().getIdCategoria().equals(categoria.getIdCategoria())){
            throw new ResourceNotFoundException("Tienda", "ID", idTienda);
        }
        tiendaRepositorio.delete(tienda);
        return "ID: " + idTienda + " - Tienda eliminada correctamente";
    }

    private TiendaDTO mapDTO(Tienda tienda){
        TiendaDTO tiendaDTO = modelMapper.map(tienda, TiendaDTO.class);
        return tiendaDTO;
    }

    private Tienda mapEntidad(TiendaDTO tiendaDTO){
        Tienda tienda = modelMapper.map(tiendaDTO, Tienda.class);
        return tienda;
    }
}
