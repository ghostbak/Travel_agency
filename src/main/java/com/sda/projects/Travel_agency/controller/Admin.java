package com.sda.projects.Travel_agency.controller;

import com.sda.projects.Travel_agency.entity.*;
import com.sda.projects.Travel_agency.repos.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Admin {

    @Autowired
    private TripRepository tripRepository;

    @Autowired
    private AirportRepository airportRepository;

    @Autowired
    private ContinentRepository continentRepository;

    @Autowired
    private CityRepository cityRepository;

    @Autowired
    private CountryRepository countryRepository;

    @Autowired
    private HotelRepository hotelRepository;

    @GetMapping("/admin_home")
    public String viewAllTrips (Model model) {
    Iterable<Trip> trips = tripRepository.findAll();
    model.addAttribute("trips", trips);
        return "admin_home";
    }

    @GetMapping("/makeTrip")
    public String makeTrip (Model model) {

    Trip trip = new Trip();
    Iterable<Continent> continents = continentRepository.findAll();
    Iterable<Country> countries = countryRepository.findAll();
    Iterable<City> cities = cityRepository.findAll();
    Iterable<Airport> airports = airportRepository.findAll();
    Iterable<Hotel> hotels = hotelRepository.findAll();

    model.addAttribute("trip", trip);
    model.addAttribute("continents", continents);
    model.addAttribute("countries", countries);
    model.addAttribute("cities", cities);
    model.addAttribute("airports", airports);
    model.addAttribute("hotels", hotels);

        return "makeTrip";
    }

    @PostMapping("/makeTrip")
    public String saveTrip (@ModelAttribute("trip") Trip trip) {
        tripRepository.save(trip);
        return "redirect:/admin_home";
    }


}
