package com.turisteando.App.Modelo;

import javax.persistence.*;

@Entity
@Table(name = "Servicio")
public class Servicio {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idServicio;

    @Column(name = "NombreServicio", nullable = false)
    private String nombreServicio;

    @Column(name = "PrecioServicio", nullable = false)
    private Long precioServicio;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idReserva", nullable = false)
    private Reserva reserva;

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

    public Reserva getReserva() {
        return reserva;
    }

    public void setReserva(Reserva reserva) {
        this.reserva = reserva;
    }

    public Servicio(Long idServicio, String nombreServicio, Long precioServicio) {
        this.idServicio = idServicio;
        this.nombreServicio = nombreServicio;
        this.precioServicio = precioServicio;
    }

    public Servicio() {
    }
}
