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
@RequestMapping("/api/categoria")
public class TiendaControlador {

    @Autowired
    public TiendaServicio tiendaServicio;
    
    @GetMapping("/{idCategoria}/tienda")
    public List<TiendaDTO> listaTiendas(@PathVariable(value = "idCategoria") long idCategoria){
        return tiendaServicio.listaTiendas(idCategoria);
    }

    @GetMapping("/{idCategoria}/tienda/{idTienda}")
    public ResponseEntity<TiendaDTO> listaTiendasId(@PathVariable (value = "idCategoria") long idCategoria ,@PathVariable(value = "idTienda") long idTienda){
        return ResponseEntity.status(HttpStatus.OK).body(tiendaServicio.listaTiendasId(idCategoria, idTienda));
    }

    @PostMapping("/{idCategoria}/tienda")
    public ResponseEntity<TiendaDTO> crearTienda(@Valid @RequestBody TiendaDTO tiendaDTO, @PathVariable (value = "idCategoria") long idCategoria){
        return ResponseEntity.status(HttpStatus.CREATED).body(tiendaServicio.crearTienda(tiendaDTO, idCategoria));
    }

    @PutMapping("/{idCategoria}/tienda/{idTienda}")
    public ResponseEntity<TiendaDTO> actualizarTienda(@Valid @RequestBody TiendaDTO tiendaDTO, @PathVariable (value = "idCategoria") long idCategoria ,@PathVariable(value = "idTienda") long idTienda){
        return ResponseEntity.status(HttpStatus.OK).body(tiendaServicio.actualizarTienda(tiendaDTO, idCategoria, idTienda));
    }

    @DeleteMapping("/{idCategoria}/tienda/{idTienda}")
    public ResponseEntity<String> eliminarTienda(@PathVariable (value = "idCategoria") long idCategoria ,@PathVariable(value = "idTienda") long idTienda){
        return ResponseEntity.status(HttpStatus.OK).body(tiendaServicio.eliminarTienda(idCategoria, idTienda));
    }
}
