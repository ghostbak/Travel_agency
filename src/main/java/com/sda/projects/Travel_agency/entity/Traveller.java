package com.sda.projects.Travel_agency.entity;

import javax.persistence.*;

@Entity
public class Traveller {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String FirstName;
    private String lastName;
    private byte age;
    private int number;

    @ManyToOne
    @JoinColumn(name = "purchase_id")
    private Purchase purchase;

    public Traveller() {
    }

    public Traveller(String firstName, String lastName, byte age, int number) {
        FirstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.number = number;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return FirstName;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public byte getAge() {
        return age;
    }

    public void setAge(byte age) {
        this.age = age;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public Purchase getPurchase() {
        return purchase;
    }

    public void setPurchase(Purchase purchase) {
        this.purchase = purchase;
    }
}
