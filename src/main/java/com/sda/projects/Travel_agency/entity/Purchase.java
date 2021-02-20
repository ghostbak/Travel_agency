package com.sda.projects.Travel_agency.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;

@Entity
public class Purchase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int amount;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "purchase", cascade = CascadeType.PERSIST)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Traveller> travellerList;

    @ManyToOne
    @JoinColumn(name = "trip_id")
    private Trip trip;

    public Purchase() {
    }

    public Purchase(int amount, List<Traveller> travellerList) {
        this.amount = amount;
        this.travellerList = travellerList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public List<Traveller> getTravellerList() {
        return travellerList;
    }

    public void setTravellerList(List<Traveller> travellerList) {
        this.travellerList = travellerList;
    }

    public Trip getTrip() {
        return trip;
    }

    public void setTrip(Trip trip) {
        this.trip = trip;
    }
}
