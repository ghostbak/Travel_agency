package com.sda.projects.Travel_agency.controller;

import com.sda.projects.Travel_agency.entity.Trip;
import com.sda.projects.Travel_agency.repos.TripRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Admin {

    @Autowired
    private TripRepository tripRepository;

    @GetMapping("/admin")
    public String viewAllTrips (Model model) {
    Iterable<Trip> trips = tripRepository.findAll();
    model.addAttribute("trips", trips);
        return "admin";
    }
}
