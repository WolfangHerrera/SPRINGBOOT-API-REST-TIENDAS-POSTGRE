package com.turisteando.App.Modelo;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "Tienda", uniqueConstraints = {@UniqueConstraint(columnNames = {"NombreTienda", "EmailTienda"})})
public class Tienda {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idTienda;

    @Column(name = "NombreTienda", nullable = false)
    private String nombreTienda;

    @Column(name = "DescripcionTienda", nullable = false)
    private String descripcionTienda;

    @Column(name = "EmailTienda", nullable = false)
    private String emailTienda;

    @Column(name = "DireccionTienda", nullable = false)
    private String direccionTienda;

    @Column(name = "TelefonoTienda", nullable = false)
    private Long telefonoTienda;

    @Column(name = "WebTienda", nullable = false)
    private String webTienda;

    @Column(name = "MapsTienda", nullable = false)
    private String mapsTienda;

    @Column(name = "ImagenTienda", nullable = false)
    private String imagenTienda;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idCategoria", nullable = false)
    private Categoria categoria;

    @OneToMany(mappedBy = "tienda", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Comentario> comentarios = new HashSet<>();

    public Long getIdTienda() {
        return idTienda;
    }

    public void setIdTienda(Long idTienda) {
        this.idTienda = idTienda;
    }

    public String getNombreTienda() {
        return nombreTienda;
    }

    public void setNombreTienda(String nombreTienda) {
        this.nombreTienda = nombreTienda;
    }

    public String getDescripcionTienda() {
        return descripcionTienda;
    }

    public void setDescripcionTienda(String descripcionTienda) {
        this.descripcionTienda = descripcionTienda;
    }

    public String getEmailTienda() {
        return emailTienda;
    }

    public void setEmailTienda(String emailTienda) {
        this.emailTienda = emailTienda;
    }

    public String getDireccionTienda() {
        return direccionTienda;
    }

    public void setDireccionTienda(String direccionTienda) {
        this.direccionTienda = direccionTienda;
    }

    public Long getTelefonoTienda() {
        return telefonoTienda;
    }

    public void setTelefonoTienda(Long telefonoTienda) {
        this.telefonoTienda = telefonoTienda;
    }

    public String getWebTienda() {
        return webTienda;
    }

    public void setWebTienda(String webTienda) {
        this.webTienda = webTienda;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public String getMapsTienda() {
        return mapsTienda;
    }

    public void setMapsTienda(String mapsTienda) {
        this.mapsTienda = mapsTienda;
    }

    public String getImagenTienda() {
        return imagenTienda;
    }

    public void setImagenTienda(String imagenTienda) {
        this.imagenTienda = imagenTienda;
    }

    public Tienda(Long idTienda, String nombreTienda, String descripcionTienda, String emailTienda, String direccionTienda, Long telefonoTienda, String webTienda, String mapsTienda, String imagenTienda, Categoria categoria) {
        this.idTienda = idTienda;
        this.nombreTienda = nombreTienda;
        this.descripcionTienda = descripcionTienda;
        this.emailTienda = emailTienda;
        this.direccionTienda = direccionTienda;
        this.telefonoTienda = telefonoTienda;
        this.webTienda = webTienda;
        this.mapsTienda = mapsTienda;
        this.imagenTienda = imagenTienda;
        this.categoria = categoria;
    }

    public Tienda() {
        super();
    }
}
