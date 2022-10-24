package com.turisteando.App.Modelo;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "Categoria", uniqueConstraints = {@UniqueConstraint(columnNames = "NombreCategoria")})
public class Categoria {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idCategoria;

    @Column(name = "NombreCategoria", nullable = false)
    private String nombreCategoria;

    @Column(name = "DescripcionCategoria", nullable = false)
    private String descripcionCategoria;

    @Column(name = "ImagenCategoria", nullable = false)
    private String imagenCategoria;

    @OneToMany(mappedBy = "categoria", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Tienda> tiendas = new HashSet<>();

    public Long getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(Long idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNombreCategoria() {
        return nombreCategoria;
    }

    public void setNombreCategoria(String nombreCategoria) {
        this.nombreCategoria = nombreCategoria;
    }

    public String getDescripcionCategoria() {
        return descripcionCategoria;
    }

    public void setDescripcionCategoria(String descripcionCategoria) {
        this.descripcionCategoria = descripcionCategoria;
    }
    public String getImagenCategoria() {
        return imagenCategoria;
    }

    public void setImagenCategoria(String imagenCategoria) {
        this.imagenCategoria = imagenCategoria;
    }

    public Categoria(Long idCategoria, String nombreCategoria, String descripcionCategoria, String imagenCategoria) {
        this.idCategoria = idCategoria;
        this.nombreCategoria = nombreCategoria;
        this.descripcionCategoria = descripcionCategoria;
        this.imagenCategoria = imagenCategoria;
    }

    public Categoria() {
        super();
    }
}
