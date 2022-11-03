package com.turisteando.App.Servicio;

import com.turisteando.App.DTO.ReservaDTO;
import com.turisteando.App.Excepcion.ResourceNotFoundException;
import com.turisteando.App.Modelo.Categoria;
import com.turisteando.App.Modelo.Lugar;
import com.turisteando.App.Modelo.Reserva;
import com.turisteando.App.Modelo.Tienda;
import com.turisteando.App.Repositorio.CategoriaRepositorio;
import com.turisteando.App.Repositorio.LugarRepositorio;
import com.turisteando.App.Repositorio.ReservaRepositorio;
import com.turisteando.App.Repositorio.TiendaRepositorio;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ReservaServicioImplementacion implements ReservaServicio{

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private LugarRepositorio lugarRepositorio;

    @Autowired
    private CategoriaRepositorio categoriaRepositorio;

    @Autowired
    private TiendaRepositorio tiendaRepositorio;

    @Autowired
    private ReservaRepositorio reservaRepositorio;

    @Override
    public List<ReservaDTO> listaReservas(Long idLugar, Long idCategoria, Long idTienda) {
        Lugar lugar = lugarRepositorio.findById(idLugar).orElseThrow(() -> new ResourceNotFoundException("Lugar", "ID", idLugar));
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        Tienda tienda = tiendaRepositorio.findById(idTienda).orElseThrow(() -> new ResourceNotFoundException("Tienda", "ID", idTienda));

        if(!categoria.getLugar().getIdLugar().equals(lugar.getIdLugar())){
            throw new ResourceNotFoundException("Categoria", "ID", idCategoria);
        }
        if(!tienda.getCategoria().getIdCategoria().equals(categoria.getIdCategoria())){
            throw new ResourceNotFoundException("Tienda", "ID", idTienda);
        }
        List<Reserva> reservas = reservaRepositorio.findByTiendaIdTienda(idTienda);
        return reservas.stream().map(reserva -> mapDTO(reserva)).collect(Collectors.toList());
    }

    @Override
    public ReservaDTO crearReserva(ReservaDTO reservaDTO, Long idLugar, Long idCategoria, Long idTienda) {
        Reserva reserva = mapEntidad(reservaDTO);
        Lugar lugar = lugarRepositorio.findById(idLugar).orElseThrow(() -> new ResourceNotFoundException("Lugar", "ID", idLugar));
        Categoria categoria = categoriaRepositorio.findById(idCategoria).orElseThrow(() -> new ResourceNotFoundException("Categoria", "ID", idCategoria));
        Tienda tienda = tiendaRepositorio.findById(idTienda).orElseThrow(() -> new ResourceNotFoundException("Tienda", "ID", idTienda));

        if(!categoria.getLugar().getIdLugar().equals(lugar.getIdLugar())){
            throw new ResourceNotFoundException("Categoria", "ID", idCategoria);
        }
        if(!tienda.getCategoria().getIdCategoria().equals(categoria.getIdCategoria())){
            throw new ResourceNotFoundException("Tienda", "ID", idTienda);
        }
        reserva.setTienda(tienda);
        Reserva nuevaReserva = reservaRepositorio.save(reserva);
        return mapDTO(nuevaReserva);
    }

    private ReservaDTO mapDTO(Reserva reserva){
        ReservaDTO reservaDTO = modelMapper.map(reserva, ReservaDTO.class);

        return reservaDTO;
    }

    private Reserva mapEntidad(ReservaDTO reservaDTO){
        Reserva reserva = modelMapper.map(reservaDTO, Reserva.class);

        return reserva;
    }
}
