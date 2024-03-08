package com.ctr;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateRepository;
import com.model.Candidate;



@Controller  
@RequestMapping
public class CandidateCtr {
	@Autowired
	private CandidateRepository candidateRep;

	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/candidate/preAddCandidate")    
	public String preAddCandidate(Model model) {
		return "candidate/addCandidate";
	}

	@PostMapping("/candidate/addCandidate") 
	public String addCandidate(Model model, Candidate candidate) {
		candidateRep.save(candidate); 
		return "success"; 
	}
	
//////////////////////////////////////DELETE BY ID  //////////////////////////////////////////////////////

@GetMapping("/candidate/preDeleteByIdCandidate")
public String preDeleteByIdCandidate() {
return "candidate/deleteByIdCandidate";
}

@GetMapping("/candidate/deleteByIdCandidate")
public String deleteByIdCandidate(Model model, Integer idCandidate) {
	Candidate candidate = (Candidate) candidateRep.findById(idCandidate).orElse(null);
if (candidate != null) {
	candidateRep.delete(candidate);
return "success";
} else {
String errorMessage = "ops!";
model.addAttribute("errorMessage", errorMessage);
return "errore";
}
}


////////////////////////////////////// UPDATE //////////////////////////////////////////////////////

@GetMapping("/candidate/preUpdateByIdCandidate")
public String preUpdateByIdCandidate() {
return "candidate/updateIdCandidate";
}
 
@GetMapping("/candidate/updateByIdCandidate")
public String updateByIdIdCandidate(Model model, int idCandidate) {
Candidate candidate = (Candidate) candidateRep.findById(idCandidate).orElse(null);
if (candidate != null) {
model.addAttribute("idCandidate", candidate);
return "candidate/updateIdCandidate";
} else {
String errorMessage = "ops!";
model.addAttribute("errorMessage", errorMessage);
return "errore";
}
}


////////////////////////////////////// FIND BY ID //////////////////////////////////

@GetMapping("/candidate/preFindByIdCandidate") 
public String preFindByIdCandidate(Model model) {
	return "findByIdCandidate";
}

@GetMapping("/candidate/findByIdCandidate") 
public String findByIdCandidate(Model model, Integer idCandidate) {
	List<Candidate> candidate = candidateRep.findByIdCandidate(idCandidate);
	model.addAttribute("idCandidate", candidate);
	return "resultsFindByIdCandidate";   
}
////////////////////////////////////// FIND BY SURNAME /////////////////////////////

@GetMapping("/candidate/preFindBySurname") 
public String preFindBySurname(Model model) {
	return "findBySurname";
}

@GetMapping("/candidate/findBySurname") 
public String findBySurname(Model model, String surname) {
	List<Candidate> candidate = candidateRep.findBySurname(surname);
	model.addAttribute("surnameCandidate", candidate);
	return "resultsFindBySurname";  
}
////////////////////////////////////// FIND BY CITY ////////////////////////////////

@GetMapping("/candidate/preFindByCity") 
public String preFindByCity(Model model) {
	return "findByCity";
}

@GetMapping("/candidate/findByCity") 
public String findByCity(Model model, String city) {
	List<Candidate> candidate = candidateRep.findByCity(city);
	model.addAttribute("city", candidate);
	return "resultsFindByCity"; 
}
////////////////////////////////////// FIND BY PHONE NUMBER ////////////////////////

////////////////////////////////////// FIND BY SKILL ///////////////////////////////

////////////////////////////////////// FIND BY ID EDUCATION DEGREE /////////////////

////////////////////////////////////// FIND BY YEARS OF EXPERIENCE //////////////////

////////////////////////////////////// FIND BY ID STATE JOB INTERVIEW per Outcome//////////////////



}