package com.turisteando.App.Repositorio;

import com.turisteando.App.Modelo.Comentario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ComentarioRepositorio extends JpaRepository<Comentario, Long> {
    List<Comentario> findByTiendaIdTienda(Long idTienda);
}
