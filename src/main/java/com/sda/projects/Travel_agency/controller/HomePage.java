package com.sda.projects.Travel_agency.controller;

import com.sda.projects.Travel_agency.entity.Trip;
import com.sda.projects.Travel_agency.repos.TripRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Controller
public class HomePage {

    @Autowired
    private TripRepository tripRepository;

    @GetMapping("/")
    public String homePage (Model model) {
        List<Trip> tripList = StreamSupport.stream(tripRepository.findAll().spliterator(), false)
                .collect(Collectors.toList());
        model.addAttribute("tripList", tripList);
        return "index";
    }
}
