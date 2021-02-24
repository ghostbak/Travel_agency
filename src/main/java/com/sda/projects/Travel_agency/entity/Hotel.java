package com.sda.projects.Travel_agency.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;

@Entity
public class Hotel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private byte standard;
    @Column(columnDefinition="LONGTEXT")
    private String description;

    @ManyToOne
    @JoinColumn(name = "city_id")
    private City city;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "hotelTo", cascade = CascadeType.PERSIST)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Trip> tripListTo;

    public Hotel() {
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

    public byte getStandard() {
        return standard;
    }

    public void setStandard(byte standard) {
        this.standard = standard;
    }

    @Column(columnDefinition="LONGTEXT")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }
}
