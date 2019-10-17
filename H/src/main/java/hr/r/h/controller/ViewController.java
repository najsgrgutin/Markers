package hr.r.h.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import hr.r.h.model.Person;
import hr.r.h.service.PersonService;

@Controller
@RequestMapping("/h")
public class ViewController {

	@Autowired
	PersonService personService;
	
	public static int NUMBER_OF_ROWS_IN_THE_TABLE = 5000;

	@RequestMapping("/")
	public String index(Model model) throws ServletException {
		model.addAttribute("markers", personService.findAllMarkers(getPageRequest(1)));
		return "/markers";
	}

	@RequestMapping(value = "/markers", method = RequestMethod.GET)
	public String showMarkersPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) throws ServletException {
		model.addAttribute("markers", personService.findAllMarkers(getPageRequest(1)));
		return "/markers";
	}

//	treba napraviti metodu za mijenjanje marker/person
	@RequestMapping(value = "/persons", method = RequestMethod.GET)
	public String showPersonsPage(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) throws ServletException {
		model.addAttribute("persons", personService.findAllPersons(getPageRequest(1)));
		return "/persons";
	}

//	Treba napraviti za prikaz forme
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String showInsertForm(Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
		model.addAttribute("form");
		return "/form";
	}

//	Treba napraviti za unos u bazu
	@RequestMapping(value = "/markers", produces="application/json; charset=UTF-8", method = RequestMethod.POST)
	public String insertPerson(@RequestBody Person person) throws ServletException {
		System.out.println("Person: "+ person.toString());
		personService.savePersonAndMarkers(person);
		return "/markers";
	}

	@RequestMapping(value = "/persons", produces="application/json; charset=UTF-8", method = RequestMethod.POST)
	public String generateAllMarkers(String method) throws ServletException {
		System.out.println("Generating default markers...");
		if(personService.generateAllMarkers()) {
			System.out.println("Done");
		}
		return "/persons";
	}
	
	private Pageable getPageRequest(int page) {
		Pageable request = new PageRequest(page, NUMBER_OF_ROWS_IN_THE_TABLE, Sort.Direction.ASC, "id");
		return request;
	}
}
