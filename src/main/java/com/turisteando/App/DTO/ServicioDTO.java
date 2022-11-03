package com.turisteando.App.DTO;

import javax.validation.constraints.NotEmpty;

public class ServicioDTO {

    private Long idServicio;

    @NotEmpty(message = "El nombre del Servicio no puede estar vacio")
    private String nombreServicio;

    @NotEmpty(message = "El precio del Servicio no puede estar vacio")
    private Long precioServicio;

    public Long getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(Long idServicio) {
        this.idServicio = idServicio;
    }

    public String getNombreServicio() {
        return nombreServicio;
    }

    public void setNombreServicio(String nombreServicio) {
        this.nombreServicio = nombreServicio;
    }

    public Long getPrecioServicio() {
        return precioServicio;
    }

    public void setPrecioServicio(Long precioServicio) {
        this.precioServicio = precioServicio;
    }

    public ServicioDTO() {
    }
}
