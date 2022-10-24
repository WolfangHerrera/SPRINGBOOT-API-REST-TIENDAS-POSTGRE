package com.turisteando.App.DTO;

import java.util.Date;

public class ErrorDetalles {

    private Date tiempo;
    private String mensaje;
    private String detalles;

    public Date getTiempo() {
        return tiempo;
    }

    public void setTiempo(Date tiempo) {
        this.tiempo = tiempo;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getDetalles() {
        return detalles;
    }

    public void setDetalles(String detalles) {
        this.detalles = detalles;
    }

    public ErrorDetalles(Date tiempo, String mensaje, String detalles) {
        this.tiempo = tiempo;
        this.mensaje = mensaje;
        this.detalles = detalles;
    }
}
