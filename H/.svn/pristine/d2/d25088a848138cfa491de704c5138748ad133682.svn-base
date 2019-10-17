package hr.r.h.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import hr.r.h.model.Marker;
import hr.r.h.model.Person;

public interface PersonService {

	public boolean savePersonAndMarkers(Person person);

	public boolean generateAllMarkers();
	
	public Page<Marker> findAllMarkers(Pageable pageRequest);

	public Page<Person> findAllPersons(Pageable pageRequest);

}
