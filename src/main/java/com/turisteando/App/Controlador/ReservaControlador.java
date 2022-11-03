package com.turisteando.App.Controlador;

import com.turisteando.App.DTO.ReservaDTO;
import com.turisteando.App.Servicio.ReservaServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/lugar")
public class ReservaControlador {

    @Autowired
    public ReservaServicio reservaServicio;

    @GetMapping("{idLugar}/categoria/{idCategoria}/tienda/{idTienda}/reserva")
    public List<ReservaDTO> listaReservas(@PathVariable(value = "idLugar") Long idLugar, @PathVariable(value = "idCategoria") Long idCategoria, @PathVariable(value = "idTienda") Long idTienda){
        return reservaServicio.listaReservas(idLugar, idCategoria, idTienda);
    }

}
