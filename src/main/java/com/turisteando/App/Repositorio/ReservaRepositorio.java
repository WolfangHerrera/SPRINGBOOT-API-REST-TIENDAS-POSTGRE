package com.turisteando.App.Repositorio;

import com.turisteando.App.Modelo.Reserva;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReservaRepositorio extends JpaRepository<Reserva, Long> {
    List<Reserva> findByTiendaIdTienda(Long idTienda);
}
