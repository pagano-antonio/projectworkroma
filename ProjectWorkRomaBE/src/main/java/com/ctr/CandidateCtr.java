package com.ctr;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateRepository;
import com.model.Candidate;
import com.model.Education;


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
	
//////////////////////////////////////DELETE BY ID  ////////////////////////////////////

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

////////////////////////////////////// FIND BY SURNAME /////////////////////////////

////////////////////////////////////// FIND BY CITY ////////////////////////////////

////////////////////////////////////// FIND BY PHONE NUMBER ////////////////////////

////////////////////////////////////// FIND BY SKILL ///////////////////////////////

////////////////////////////////////// FIND BY ID EDUCATION DEGREE /////////////////

////////////////////////////////////// FIND BY ANNI DI ESPERIENZA //////////////////

////////////////////////////////////// FIND BY ID STATE JOB INTERVIEW per Outcome//////////////////

////////////////////////////////////// FIND BY ANNI DI ESPERIENZA //////////////////

}