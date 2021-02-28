package com.sda.projects.Travel_agency.entity;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
public class Trip {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @DateTimeFormat(iso= DateTimeFormat.ISO.DATE)
    private Date departureDate;
    @DateTimeFormat(iso= DateTimeFormat.ISO.DATE)
    private Date returnDate;
    private short numberOfDays;
    private TypeOfTrip typeOfTrip;
    private float priceForAdult;
    private float priceForChild;
    private boolean promoted;
    private byte numberOfBedsForAdults;
    private byte numberOfBedsForChildren;

    @ManyToOne
    @JoinColumn(name = "city_from_id")
    private City cityFrom;
    @ManyToOne
    @JoinColumn(name = "airport_from_id")
    private Airport airportFrom;
    @ManyToOne
    @JoinColumn(name = "city_to_id")
    private City cityTo;
    @ManyToOne
    @JoinColumn(name = "airport_to_id")
    private Airport airportTo;
    @ManyToOne
    @JoinColumn(name = "hotel_to_id")
    private Hotel hotelTo;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "trip", cascade = CascadeType.PERSIST)
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Purchase> purchaseList;

    public Trip() {
    }

    public Trip(City cityFrom, Airport airportFrom,
                Airport airportTo, Hotel hotelTo, City cityTo,
                Date departureDate, Date returnDate,
                short numberOfDays, TypeOfTrip typeOfTrip,
                int priceForAdult, int priceForChild, boolean promoted,
                byte numberOfBedsForAdults, byte numberOfBedsForChildren)
    {
        this.departureDate = departureDate;
        this.returnDate = returnDate;
        this.numberOfDays = numberOfDays;
        this.typeOfTrip = typeOfTrip;
        this.priceForAdult = priceForAdult;
        this.priceForChild = priceForChild;
        this.promoted = promoted;
        this.numberOfBedsForAdults = numberOfBedsForAdults;
        this.numberOfBedsForChildren = numberOfBedsForChildren;
        this.cityFrom = cityFrom;
        this.airportFrom = airportFrom;
        this.cityTo = cityTo;
        this.airportTo = airportTo;
        this.hotelTo = hotelTo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(Date departureDate) {
        this.departureDate = departureDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public short getNumberOfDays() {
        return numberOfDays;
    }

    public void setNumberOfDays(short numberOfDays) {
        this.numberOfDays = numberOfDays;
    }

    public TypeOfTrip getTypeOfTrip() {
        return typeOfTrip;
    }

    public void setTypeOfTrip(TypeOfTrip typeOfTrip) {
        this.typeOfTrip = typeOfTrip;
    }

    public float getPriceForAdult() {
        return priceForAdult;
    }

    public void setPriceForAdult(int priceForAdult) {
        this.priceForAdult = priceForAdult;
    }

    public float getPriceForChild() {
        return priceForChild;
    }

    public void setPriceForChild(int priceForChild) {
        this.priceForChild = priceForChild;
    }

    public boolean isPromoted() {
        return promoted;
    }

    public void setPromoted(boolean promoted) {
        this.promoted = promoted;
    }

    public byte getNumberOfBedsForAdults() {
        return numberOfBedsForAdults;
    }

    public void setNumberOfBedsForAdults(byte numberOfBedsForAdults) {
        this.numberOfBedsForAdults = numberOfBedsForAdults;
    }

    public byte getNumberOfBedsForChildren() {
        return numberOfBedsForChildren;
    }

    public void setNumberOfBedsForChildren(byte numberOfBedsForChildren) {
        this.numberOfBedsForChildren = numberOfBedsForChildren;
    }

    public City getCityFrom() {
        return cityFrom;
    }

    public void setCityFrom(City cityFrom) {
        this.cityFrom = cityFrom;
    }

    public Airport getAirportFrom() {
        return airportFrom;
    }

    public void setAirportFrom(Airport airportFrom) {
        this.airportFrom = airportFrom;
    }

    public City getCityTo() {
        return cityTo;
    }

    public void setCityTo(City cityTo) {
        this.cityTo = cityTo;
    }

    public Airport getAirportTo() {
        return airportTo;
    }

    public void setAirportTo(Airport airportTo) {
        this.airportTo = airportTo;
    }

    public Hotel getHotelTo() {
        return hotelTo;
    }

    public void setHotelTo(Hotel hotelTo) {
        this.hotelTo = hotelTo;
    }

    public List<Purchase> getPurchaseList() {
        return purchaseList;
    }

    public void setPurchaseList(List<Purchase> purchaseList) {
        this.purchaseList = purchaseList;
    }

}
