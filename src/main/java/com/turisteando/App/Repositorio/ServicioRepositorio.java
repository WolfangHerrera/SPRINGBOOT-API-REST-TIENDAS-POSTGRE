package com.turisteando.App.Repositorio;

import com.turisteando.App.Modelo.Servicio;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ServicioRepositorio extends JpaRepository<Servicio, Long> {
    List<Servicio> findByReservaIdReserva(Long idReserva);
}
