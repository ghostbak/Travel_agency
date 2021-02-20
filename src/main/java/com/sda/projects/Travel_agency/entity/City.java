package com.sda.projects.Travel_agency.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;

@Entity
public class City {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "city", cascade = CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Hotel> hotelList;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "city", cascade = CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Airport> airportList;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "cityFrom", cascade = CascadeType.PERSIST)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Trip> tripListFrom;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "cityTo", cascade = CascadeType.PERSIST)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Trip> tripListTo;

    public City() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public List<Hotel> getHotelList() {
        return hotelList;
    }

    public void setHotelList(List<Hotel> hotelList) {
        this.hotelList = hotelList;
    }

    public List<Airport> getAirportList() {
        return airportList;
    }

    public void setAirportList(List<Airport> airportList) {
        this.airportList = airportList;
    }

    public List<Trip> getTripListFrom() {
        return tripListFrom;
    }

    public void setTripListFrom(List<Trip> tripListFrom) {
        this.tripListFrom = tripListFrom;
    }

    public List<Trip> getTripListTo() {
        return tripListTo;
    }

    public void setTripListTo(List<Trip> tripListTo) {
        this.tripListTo = tripListTo;
    }
}
