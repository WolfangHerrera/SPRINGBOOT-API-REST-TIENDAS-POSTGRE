package com.turisteando.App.DTO;

import javax.persistence.Column;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class ComentarioDTO {

    private long idComentario;

    @NotEmpty(message = "El titulo del Comentario no puede estar vacio")
    private String tituloComentario;

    @NotEmpty(message = "El Usuario del Comentario no puede estar vacio")
    private String usuarioComentario;

    @NotEmpty(message = "El cuerpo del Comentario no puede estar vacio")
    @Size(min = 50, message = "El cuerpo del Comentario debe tener al menos 50 caracteres")
    private String cuerpoComentario;

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

    public ComentarioDTO() {
    }
}
