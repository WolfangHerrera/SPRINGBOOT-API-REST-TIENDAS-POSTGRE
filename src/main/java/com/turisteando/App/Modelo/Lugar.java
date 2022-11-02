package com.turisteando.App.Modelo;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "Lugar", uniqueConstraints = {@UniqueConstraint(columnNames = {"NombreLugar"})})
public class Lugar {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idLugar;

    @Column(name = "NombreLugar", nullable = false)
    private String nombreLugar;

    @OneToMany(mappedBy = "lugar", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Categoria> categorias = new HashSet<>();

    public Long getIdLugar() {
        return idLugar;
    }

    public void setIdLugar(Long idLugar) {
        this.idLugar = idLugar;
    }

    public String getNombreLugar() {
        return nombreLugar;
    }

    public void setNombreLugar(String nombreLugar) {
        this.nombreLugar = nombreLugar;
    }

    public Lugar(Long idLugar, String nombreLugar) {
        this.idLugar = idLugar;
        this.nombreLugar = nombreLugar;
    }

    public Lugar() {
    }
}
