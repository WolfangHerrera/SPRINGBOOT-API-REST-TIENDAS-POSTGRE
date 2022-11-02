package com.turisteando.App.Repositorio;

import com.turisteando.App.Modelo.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoriaRepositorio extends JpaRepository<Categoria, Long> {
    List<Categoria> findByLugarIdLugar(Long idLugar);
}
