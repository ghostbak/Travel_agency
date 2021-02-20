package com.sda.projects.Travel_agency.repos;

import com.sda.projects.Travel_agency.entity.Traveller;
import org.springframework.data.repository.CrudRepository;

public interface TravellerRepository extends CrudRepository<Traveller, Long> {
}
