package com.sda.projects.Travel_agency.repos;

import com.sda.projects.Travel_agency.entity.Trip;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TripRepository extends CrudRepository<Trip, Long> {
}
