package com.turisteando.App.DTO;

import javax.validation.constraints.NotEmpty;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class ReservaDTO {

    private Long idReserva;

    @NotEmpty(message = "El nombre del Cliente no puede estar vacio")
    private String nombreClienteReserva;

    @NotEmpty(message = "El apellido del Cliente no puede estar vacio")
    private String apellidoClienteReserva;

    @NotEmpty(message = "La cedula del Cliente no puede estar vacia")
    private Long cedulaClienteReserva;

    @NotEmpty(message = "El telefono del Cliente no puede estar vacio")
    private Long telefonoClienteReserva;

    @NotEmpty(message = "La fecha de ingreso de la Reserva no puede estar vacia")
    private Date diaIngresoReserva;

    @NotEmpty(message = "La fecha de salida de la Reserva no puede estar vacia")
    private Date diaSalidaReserva;

    private Date cantidadDiasReserva;


    private Long valorServicioReserva;

    public Long getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(Long idReserva) {
        this.idReserva = idReserva;
    }

    public String getNombreClienteReserva() {
        return nombreClienteReserva;
    }

    public void setNombreClienteReserva(String nombreClienteReserva) {
        this.nombreClienteReserva = nombreClienteReserva;
    }

    public String getApellidoClienteReserva() {
        return apellidoClienteReserva;
    }

    public void setApellidoClienteReserva(String apellidoClienteReserva) {
        this.apellidoClienteReserva = apellidoClienteReserva;
    }

    public Long getCedulaClienteReserva() {
        return cedulaClienteReserva;
    }

    public void setCedulaClienteReserva(Long cedulaClienteReserva) {
        this.cedulaClienteReserva = cedulaClienteReserva;
    }

    public Long getTelefonoClienteReserva() {
        return telefonoClienteReserva;
    }

    public void setTelefonoClienteReserva(Long telefonoClienteReserva) {
        this.telefonoClienteReserva = telefonoClienteReserva;
    }

    public Date getDiaIngresoReserva() {
        return diaIngresoReserva;
    }

    public void setDiaIngresoReserva(Date diaIngresoReserva) {
        this.diaIngresoReserva = diaIngresoReserva;
    }

    public Date getDiaSalidaReserva() {
        return diaSalidaReserva;
    }

    public void setDiaSalidaReserva(Date diaSalidaReserva) {
        this.diaSalidaReserva = diaSalidaReserva;
    }

    public Date getCantidadDiasReserva() {
        return cantidadDiasReserva;
    }

    public void setCantidadDiasReserva(Date cantidadDiasReserva) {
        this.cantidadDiasReserva = cantidadDiasReserva;
    }

    public Long getValorServicioReserva() {
        return valorServicioReserva;
    }

    public void setValorServicioReserva(Long valorServicioReserva) {
        this.valorServicioReserva = valorServicioReserva;
    }

    public ReservaDTO() {
    }
}
