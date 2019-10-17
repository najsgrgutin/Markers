package hr.r.h.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import hr.r.h.model.Marker;
import hr.r.h.model.MarkerType;
import hr.r.h.model.Person;
import hr.r.h.repository.MarkerRepository;
import hr.r.h.repository.PersonRepository;

@Service
@Transactional
public class PersonServiceImpl implements PersonService {

	@Autowired
	MarkerRepository mRepository;
	@Autowired
	PersonRepository pRepository;
	
	public boolean savePersonAndMarkers(Person person) {
		try {
			
			pRepository.save(person);
			
			List<Marker> markers = new ArrayList<Marker>();
			
			for (String a : person.getAMs()) {
				for (String b : person.getBMs()) {
					Marker mab = new Marker(person.getId(), person.getGender(), person.getRegion(), MarkerType.A_B, a, b, null, null);
					markers.add(mab);
					for (String c : person.getCMs()) {
						Marker mabc = new Marker(person.getId(), person.getGender(), person.getRegion(), MarkerType.A_B_C, a, b, c, null);
						markers.add(mabc);
						for (String drb1 : person.getDrb1Ms()) {
							Marker mabcd = new Marker(person.getId(), person.getGender(), person.getRegion(), MarkerType.A_B_C_D, a, b, c, drb1);
							markers.add(mabcd);
						}
					}
				}
			}
		
			mRepository.save(markers);

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	
	public boolean generateAllMarkers(){
				
		try {
			
			mRepository.deleteAll();
//			System.out.println("Deleted all markers");
			generate();
			
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}		
		
	}
	
	private void generate() {
		System.out.println("Marker progres...");
		List<Person> persons = (List<Person>) pRepository.findAll();
		for (Person p: persons) {
			savePersonAndMarkers(p);
		}	
//		System.out.println("Generated " + counter + " markers");
	}


	@Override
	public Page<Marker> findAllMarkers(Pageable pageRequest) {
		return mRepository.findAll(pageRequest);
	}

	@Override
	public Page<Person> findAllPersons(Pageable pageRequest) {
		return pRepository.findAll(pageRequest);
	}

}
