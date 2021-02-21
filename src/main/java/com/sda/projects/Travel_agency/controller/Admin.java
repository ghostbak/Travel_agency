package com.sda.projects.Travel_agency.controller;

import com.sda.projects.Travel_agency.entity.Trip;
import com.sda.projects.Travel_agency.repos.TripRepository;
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

    @GetMapping("/admin_home")
    public String viewAllTrips (Model model) {
    Iterable<Trip> trips = tripRepository.findAll();
    model.addAttribute("trips", trips);
        return "admin_home";
    }

    @GetMapping("/makeTrip")
    public String makeTrip (Model model) {
    Trip trip = new Trip();
    model.addAttribute("trip", trip);
        return "makeTrip";
    }

    @PostMapping("/saveTrip")
    public String saveTrip (@ModelAttribute("trip") Trip trip) {
        tripRepository.save(trip);
        return "redirect:/admin_home";
    }


}
