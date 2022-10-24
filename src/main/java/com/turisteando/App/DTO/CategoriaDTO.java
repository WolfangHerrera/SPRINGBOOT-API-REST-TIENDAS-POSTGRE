package com.turisteando.App.DTO;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class CategoriaDTO {

    private Long idCategoria;

    @NotEmpty(message = "El nombre de la Categoria no puede estar vacio")
    private String nombreCategoria;

    @NotEmpty(message = "La descripción de la Categoria no puede estar vacio")
    @Size(min = 20, message = "La descripción de la Categoria debe tener al menos 20 caracteres")
    private String descripcionCategoria;

    @NotEmpty(message = "La Imagen de la Categoria no puede estar vacio")
    private String imagenCategoria;

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

    public CategoriaDTO() {
    }
}
