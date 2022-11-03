package com.turisteando.App.Controlador;

import com.turisteando.App.DTO.ComentarioDTO;
import com.turisteando.App.Servicio.ComentarioServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/lugar")
public class ComentarioControlador {

    @Autowired
    public ComentarioServicio comentarioServicio;

    @GetMapping("{idLugar}/categoria/{idCategoria}/tienda/{idTienda}/comentario")
    public List<ComentarioDTO> listaComentarios(@PathVariable(value = "idLugar") Long idLugar, @PathVariable(value = "idCategoria") Long idCategoria, @PathVariable(value = "idTienda") Long idTienda){
        return comentarioServicio.listaComentarios(idLugar, idCategoria, idTienda);
    }

    @GetMapping("{idLugar}/categoria/{idCategoria}/tienda/{idTienda}/comentario/{idComentario}")
    public ResponseEntity<ComentarioDTO> listaComentarioId(@PathVariable(value = "idLugar") Long idLugar, @PathVariable(value = "idCategoria") Long idCategoria, @PathVariable(value = "idTienda") Long idTienda, @PathVariable(value = "idComentario") Long idComentario){
        return ResponseEntity.status(HttpStatus.OK).body(comentarioServicio.listaComentarioId(idLugar, idCategoria, idTienda, idComentario));
    }

    @PostMapping("{idLugar}/categoria/{idCategoria}/tienda/{idTienda}/comentario")
    public ResponseEntity<ComentarioDTO> crearComentario(@Valid @RequestBody ComentarioDTO comentarioDTO, @PathVariable(value = "idLugar") Long idLugar, @PathVariable(value = "idTienda") Long idTienda, @PathVariable(value = "idCategoria") Long idCategoria){
        return ResponseEntity.status(HttpStatus.CREATED).body(comentarioServicio.crearComentario(comentarioDTO, idLugar, idCategoria, idTienda));
    }

    @PutMapping("{idLugar}/categoria/{idCategoria}/tienda/{idTienda}/comentario/{idComentario}")
    public ResponseEntity<ComentarioDTO> actualizarComentario(@Valid @RequestBody ComentarioDTO comentarioDTO, @PathVariable(value = "idLugar") Long idLugar, @PathVariable(value = "idCategoria") Long idCategoria, @PathVariable(value = "idTienda") Long idTienda, @PathVariable(value = "idComentario") Long idComentario){
        return ResponseEntity.status(HttpStatus.CREATED).body(comentarioServicio.actualizarComentario(comentarioDTO, idLugar, idCategoria, idTienda, idComentario));
    }

    @DeleteMapping("{idLugar}/categoria/{idCategoria}/tienda/{idTienda}/comentario/{idComentario}")
    public ResponseEntity<String> eliminarComentarioId(@PathVariable(value = "idCategoria") Long idCategoria, @PathVariable(value = "idLugar") Long idLugar, @PathVariable(value = "idTienda") Long idTienda, @PathVariable(value = "idComentario") Long idComentario){
        return ResponseEntity.status(HttpStatus.OK).body(comentarioServicio.eliminarComentarioId(idLugar, idTienda, idCategoria, idComentario));
    }
}
