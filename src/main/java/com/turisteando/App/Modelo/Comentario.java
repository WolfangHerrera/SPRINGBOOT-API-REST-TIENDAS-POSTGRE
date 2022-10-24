package com.turisteando.App.Modelo;

import javax.persistence.*;

@Entity
@Table(name = "Comentarios")
public class Comentario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long idComentario;

    @Column(name = "TituloComentario", nullable = false)
    private String tituloComentario;

    @Column(name = "UsuarioComentario", nullable = false)
    private String usuarioComentario;

    @Column(name = "CuerpoComentario", nullable = false)
    private String cuerpoComentario;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idTienda", nullable = false)
    private Tienda tienda;

    public long getIdComentario() {
        return idComentario;
    }

    public void setIdComentario(long idComentario) {
        this.idComentario = idComentario;
    }

    public String getTituloComentario() {
        return tituloComentario;
    }

    public void setTituloComentario(String tituloComentario) {
        this.tituloComentario = tituloComentario;
    }

    public String getUsuarioComentario() {
        return usuarioComentario;
    }

    public void setUsuarioComentario(String usuarioComentario) {
        this.usuarioComentario = usuarioComentario;
    }

    public String getCuerpoComentario() {
        return cuerpoComentario;
    }

    public void setCuerpoComentario(String cuerpoComentario) {
        this.cuerpoComentario = cuerpoComentario;
    }

    public Tienda getTienda() {
        return tienda;
    }

    public void setTienda(Tienda tienda) {
        this.tienda = tienda;
    }

    public Comentario() {
        super();
    }
}
