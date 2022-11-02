package com.turisteando.App.DTO;

import javax.validation.constraints.NotEmpty;

public class LugarDTO  {

    private Long idLugar;
    @NotEmpty(message = "El nombre de la Tienda no puede estar vacio")
    private String nombreLugar;

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

    public LugarDTO(Long idLugar, String nombreLugar) {
        this.idLugar = idLugar;
        this.nombreLugar = nombreLugar;
    }

    public LugarDTO() {
    }
}
