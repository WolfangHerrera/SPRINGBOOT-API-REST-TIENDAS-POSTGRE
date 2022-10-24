package com.turisteando.App.Repositorio;

import com.turisteando.App.Modelo.Tienda;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TiendaRepositorio extends JpaRepository<Tienda, Long> {
    List<Tienda> findByCategoriaIdCategoria(long idCategoria);
}
