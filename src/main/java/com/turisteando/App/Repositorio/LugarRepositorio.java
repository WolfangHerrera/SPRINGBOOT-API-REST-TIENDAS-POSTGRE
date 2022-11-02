package com.turisteando.App.Repositorio;

import com.turisteando.App.Modelo.Lugar;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LugarRepositorio extends JpaRepository<Lugar, Long> {
}
