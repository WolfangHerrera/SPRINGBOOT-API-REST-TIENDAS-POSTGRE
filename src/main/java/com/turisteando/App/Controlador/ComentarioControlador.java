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
@RequestMapping("/api/categoria")
public class ComentarioControlador {

    @Autowired
    public ComentarioServicio comentarioServicio;

    @GetMapping("/{idCategoria}/tienda/{idTienda}/comentarios")
    public List<ComentarioDTO> listaComentarios(@PathVariable(value = "idCategoria") long idCategoria, @PathVariable(value = "idTienda") long idTienda){
        return comentarioServicio.listaComentarios(idCategoria, idTienda);
    }

    @GetMapping("/{idCategoria}/tienda/{idTienda}/comentarios/{idComentario}")
    public ResponseEntity<ComentarioDTO> listaComentarioId(@PathVariable(value = "idCategoria") long idCategoria, @PathVariable(value = "idTienda") long idTienda, @PathVariable(value = "idComentario") long idComentario){
        return ResponseEntity.status(HttpStatus.OK).body(comentarioServicio.listaComentarioId(idCategoria, idTienda, idComentario));
    }

    @PostMapping("/{idCategoria}/tienda/{idTienda}/comentarios")
    public ResponseEntity<ComentarioDTO> crearComentario(@Valid @RequestBody ComentarioDTO comentarioDTO, @PathVariable(value = "idTienda") long idTienda, @PathVariable(value = "idCategoria") long idCategoria){
        return ResponseEntity.status(HttpStatus.CREATED).body(comentarioServicio.crearComentario(comentarioDTO, idCategoria, idTienda));
    }

    @PutMapping("/{idCategoria}/tienda/{idTienda}/comentarios/{idComentario}")
    public ResponseEntity<ComentarioDTO> actualizarComentario(@Valid @RequestBody ComentarioDTO comentarioDTO, @PathVariable(value = "idCategoria") long idCategoria, @PathVariable(value = "idTienda") long idTienda, @PathVariable(value = "idComentario") long idComentario){
        return ResponseEntity.status(HttpStatus.CREATED).body(comentarioServicio.actualizarComentario(comentarioDTO, idCategoria, idTienda, idComentario));
    }

    @DeleteMapping("/{idCategoria}/tienda/{idTienda}/comentarios/{idComentario}")
    public ResponseEntity<String> eliminarComentarioId(@PathVariable(value = "idCategoria") long idCategoria, @PathVariable(value = "idTienda") long idTienda, @PathVariable(value = "idComentario") long idComentario){
        return ResponseEntity.status(HttpStatus.OK).body(comentarioServicio.eliminarComentarioId(idTienda, idCategoria, idComentario));
    }
}
