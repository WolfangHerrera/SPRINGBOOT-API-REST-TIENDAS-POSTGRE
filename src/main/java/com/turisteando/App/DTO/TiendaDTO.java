package com.turisteando.App.DTO;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class TiendaDTO {

    private Long idTienda;

    @NotEmpty(message = "El nombre de la Tienda no puede estar vacio")
    private String nombreTienda;

    @NotEmpty(message = "La descripción de la Tienda no puede estar vacio")
    @Size(min = 20, message = "La descripción de la Tienda debe tener al menos 20 caracteres")
    private String descripcionTienda;

    @NotEmpty(message = "El email de la Tienda no puede estar vacio")
    @Email
    private String emailTienda;

    @NotEmpty(message = "La dirección de la Tienda no puede estar vacio")
    private String direccionTienda;

    private Long telefonoTienda;

    @NotEmpty(message = "La pagina web de la Tienda no puede estar vacio")
    private String webTienda;

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

    public TiendaDTO() {
    }

}
