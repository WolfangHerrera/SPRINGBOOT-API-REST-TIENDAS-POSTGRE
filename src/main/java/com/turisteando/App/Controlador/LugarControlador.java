package com.turisteando.App.Controlador;

import com.turisteando.App.DTO.LugarDTO;
import com.turisteando.App.Modelo.Lugar;
import com.turisteando.App.Servicio.LugarServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/lugar")
public class LugarControlador {

    @Autowired
    public LugarServicio lugarServicio;

    @GetMapping
    public List<LugarDTO> listaLugares(){
        return lugarServicio.listaLugares();
    }

    @PostMapping
    public ResponseEntity<LugarDTO> crearLugar(@Valid @RequestBody LugarDTO lugarDTO){
        return ResponseEntity.status(HttpStatus.CREATED).body(lugarServicio.crearLugar(lugarDTO));
    }

    @PutMapping("/{idLugar}")
    public ResponseEntity<LugarDTO> actualizarLugar(@Valid @RequestBody LugarDTO lugarDTO, @PathVariable(name = "idLugar") Long idLugar){
        return ResponseEntity.status(HttpStatus.OK).body(lugarServicio.actualizarLugar(lugarDTO, idLugar));
    }

    @DeleteMapping("/{idLugar}")
    public ResponseEntity<String> eliminarLugar(@PathVariable(name = "idLugar") Long idLugar){
        return ResponseEntity.status(HttpStatus.OK).body(lugarServicio.eliminarLugar(idLugar));
    }
}
