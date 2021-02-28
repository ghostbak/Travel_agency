package com.sda.projects.Travel_agency.controller;

import com.sda.projects.Travel_agency.entity.*;
import com.sda.projects.Travel_agency.repos.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;


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
    Iterable<Country> countries = countryRepository.findAll();
    Iterable<City> cities = cityRepository.findAll();

        List<Country> countryList = StreamSupport.stream(countries.spliterator(), false)
                .collect(Collectors.toList());
        List<City> cityList = StreamSupport.stream(cities.spliterator(), false)
                .collect(Collectors.toList());;

    Map<String, List<City>> countriesMap = new HashMap<>();
    Map<String, List<Airport>> airportMap = new HashMap<>();
    Map<String, List<Hotel>> hotelMap = new HashMap<>();

        for (Country country : countryList) {
            countriesMap.put(country.getName(), country.getCityList());
        }

        for (City city : cityList) {
            airportMap.put(city.getName(), city.getAirportList());
        }

        for (City city : cityList) {
            hotelMap.put(city.getName(), city.getHotelList());
        }

    model.addAttribute("trip", trip);
    model.addAttribute("countriesMap", countriesMap);
    model.addAttribute("airportMap", airportMap);
    model.addAttribute("hotelMap", hotelMap);

        return "makeTrip";
    }

    @PostMapping("/makeTrip")
    public String saveTrip (@ModelAttribute("trip") Trip trip) {
        tripRepository.save(trip);
        return "/index";
    }


}
