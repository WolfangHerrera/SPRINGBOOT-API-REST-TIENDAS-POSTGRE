package com.turisteando.App.Controlador;

import com.turisteando.App.DTO.CategoriaDTO;
import com.turisteando.App.Servicio.CategoriaServicio;
import com.turisteando.App.Servicio.LugarServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/lugar")
public class CategoriaControlador {

    @Autowired
    public CategoriaServicio categoriaServicio;

    @GetMapping("{idLugar}/categoria")
    public List<CategoriaDTO> listaCategorias(@PathVariable(value = "idLugar") Long idLugar) {
        return categoriaServicio.listaCategorias(idLugar);
    }

    @PostMapping("{idLugar}/categoria")
    public ResponseEntity<CategoriaDTO> crearCategoria(@Valid @RequestBody CategoriaDTO categoriaDTO, @PathVariable(name = "idLugar") Long idLugar) {
        return ResponseEntity.status(HttpStatus.CREATED).body(categoriaServicio.crearCategoria(categoriaDTO, idLugar));
    }

    @PutMapping("{idLugar}/categoria/{idCategoria}")
    public ResponseEntity<CategoriaDTO> actualizarCategoria(@Valid @RequestBody CategoriaDTO categoriaDTO, @PathVariable(name = "idLugar") Long idLugar, @PathVariable(name = "idCategoria") Long idCategoria) {
        return ResponseEntity.status(HttpStatus.OK).body(categoriaServicio.actualizarCategoria(categoriaDTO, idLugar, idCategoria));
    }

    @DeleteMapping("{idLugar}/categoria/{idCategoria}")
    public ResponseEntity<String> eliminarCategoria(@PathVariable(name = "idLugar") Long idLugar, @PathVariable(name = "idCategoria") Long idCategoria) {
        return ResponseEntity.status(HttpStatus.OK).body(categoriaServicio.eliminarCategoria(idLugar, idCategoria));
    }
}
