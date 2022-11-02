package com.turisteando.App.Controlador;

import com.turisteando.App.DTO.TiendaDTO;
import com.turisteando.App.Servicio.TiendaServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/lugar")
public class TiendaControlador {

    @Autowired
    public TiendaServicio tiendaServicio;
    
    @GetMapping("{idLugar}/categoria/{idCategoria}/tienda")
    public List<TiendaDTO> listaTiendas(@PathVariable(value = "idLugar") Long idLugar, @PathVariable(value = "idCategoria") Long idCategoria){
        return tiendaServicio.listaTiendas(idLugar, idCategoria);
    }

    @GetMapping("{idLugar}/categoria/{idCategoria}/tienda/{idTienda}")
    public ResponseEntity<TiendaDTO> listaTiendasId(@PathVariable(value = "idLugar") Long idLugar, @PathVariable (value = "idCategoria") Long idCategoria ,@PathVariable(value = "idTienda") Long idTienda){
        return ResponseEntity.status(HttpStatus.OK).body(tiendaServicio.listaTiendasId(idLugar, idCategoria, idTienda));
    }

    @PostMapping("{idLugar}/categoria/{idCategoria}/tienda")
    public ResponseEntity<TiendaDTO> crearTienda(@Valid @RequestBody TiendaDTO tiendaDTO, @PathVariable(value = "idLugar") Long idLugar, @PathVariable (value = "idCategoria") Long idCategoria){
        return ResponseEntity.status(HttpStatus.CREATED).body(tiendaServicio.crearTienda(tiendaDTO, idLugar, idCategoria));
    }

    @PutMapping("{idLugar}/categoria/{idCategoria}/tienda/{idTienda}")
    public ResponseEntity<TiendaDTO> actualizarTienda(@Valid @RequestBody TiendaDTO tiendaDTO, @PathVariable(value = "idLugar") Long idLugar, @PathVariable (value = "idCategoria") Long idCategoria ,@PathVariable(value = "idTienda") Long idTienda){
        return ResponseEntity.status(HttpStatus.OK).body(tiendaServicio.actualizarTienda(tiendaDTO, idLugar, idCategoria, idTienda));
    }

    @DeleteMapping("{idLugar}/categoria/{idCategoria}/tienda/{idTienda}")
    public ResponseEntity<String> eliminarTienda(@PathVariable(value = "idLugar") Long idLugar, @PathVariable (value = "idCategoria") Long idCategoria ,@PathVariable(value = "idTienda") Long idTienda){
        return ResponseEntity.status(HttpStatus.OK).body(tiendaServicio.eliminarTienda(idLugar, idCategoria, idTienda));
    }
}
