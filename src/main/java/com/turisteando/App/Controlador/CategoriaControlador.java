package com.turisteando.App.Controlador;

import com.turisteando.App.DTO.CategoriaDTO;
import com.turisteando.App.Servicio.CategoriaServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/categoria")
public class CategoriaControlador {

    @Autowired
    public CategoriaServicio categoriaServicio;

    @GetMapping
    public List<CategoriaDTO> listaCategorias() {
        return categoriaServicio.listaCategorias();
    }

    @PostMapping
    public ResponseEntity<CategoriaDTO> crearCategoria(@Valid @RequestBody CategoriaDTO categoriaDTO) {
        return ResponseEntity.status(HttpStatus.CREATED).body(categoriaServicio.crearCategoria(categoriaDTO));
    }

    @PutMapping("/{idCategoria}")
    public ResponseEntity<CategoriaDTO> actualizarCategoria(@Valid @RequestBody CategoriaDTO categoriaDTO, @PathVariable(name = "idCategoria") long idCategoria) {
        return ResponseEntity.status(HttpStatus.OK).body(categoriaServicio.actualizarCategoria(categoriaDTO, idCategoria));
    }

    @DeleteMapping("/{idCategoria}")
    public ResponseEntity<String> eliminarCategoria(@PathVariable(name = "idCategoria") long idCategoria) {
        return ResponseEntity.status(HttpStatus.OK).body(categoriaServicio.eliminarCategoria(idCategoria));
    }
}
