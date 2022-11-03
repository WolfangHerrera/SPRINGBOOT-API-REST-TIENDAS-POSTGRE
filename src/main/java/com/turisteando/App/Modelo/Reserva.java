package com.turisteando.App.Modelo;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "Reserva", uniqueConstraints = {@UniqueConstraint(columnNames = {"CedulaClienteReserva"})})
public class Reserva {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idReserva;

    @Column(name = "NombreClienteReserva", nullable = false)
    private String nombreClienteReserva;

    @Column(name = "ApellidoClienteReserva", nullable = false)
    private String apellidoClienteReserva;

    @Column(name = "CedulaClienteReserva", nullable = false)
    private Long cedulaClienteReserva;

    @Column(name = "TelefonoClienteReserva", nullable = false)
    private Long telefonoClienteReserva;

    @Column(name = "DiaIngresoReserva", nullable = false)
    private Date diaIngresoReserva;

    @Column(name = "DiaSalidaReserva", nullable = false)
    private Date diaSalidaReserva;

    @Column(name = "CantidadDiasReserva")
    private Date cantidadDiasReserva;

    @Column(name = "ValorServicioReserva")
    private Long valorServicioReserva;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idTienda", nullable = false)
    private Tienda tienda;

    @OneToMany(mappedBy = "reserva", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Servicio> servicios = new HashSet<>();

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

    public Tienda getTienda() {
        return tienda;
    }

    public void setTienda(Tienda tienda) {
        this.tienda = tienda;
    }

    public Reserva(Long idReserva, String nombreClienteReserva, String apellidoClienteReserva, Long cedulaClienteReserva, Long telefonoClienteReserva, Date diaIngresoReserva, Date diaSalidaReserva, Date cantidadDiasReserva) {
        this.idReserva = idReserva;
        this.nombreClienteReserva = nombreClienteReserva;
        this.apellidoClienteReserva = apellidoClienteReserva;
        this.cedulaClienteReserva = cedulaClienteReserva;
        this.telefonoClienteReserva = telefonoClienteReserva;
        this.diaIngresoReserva = diaIngresoReserva;
        this.diaSalidaReserva = diaSalidaReserva;
        this.cantidadDiasReserva = cantidadDiasReserva;
    }

    public Reserva() {
    }
}
