package com.ctr;
import java.math.BigInteger;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateRepository;
import com.model.Candidate;
import com.model.Skill;


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

@GetMapping("/candidate/preFindByPhoneCandidate")
public String preFindByPhoneCandidate() {
	return "candidate/findByPhoneCandidate";
}

@GetMapping("/candidate/findByPhoneCandidate")
public String findByPhoneCandidate(Model model, BigInteger phone) {
	List<Candidate> candidate = candidateRep.findByPhone(phone);
	model.addAttribute("PhoneCandidate", candidate);
	if (candidate != null) {
		return "candidate/resultsByPhoneCandidate";
	} else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
	}
}

////////////////////////////////////// FIND BY SKILL ///////////////////////////////

@GetMapping("/candidate/preFindBySkillCandidate")
public String preFindBySkillCandidate() {
	return "candidate/findBySkillCandidate";
}

@GetMapping("/candidate/findBySkillCandidate")
public String findBySkillCandidate(Model model, Skill skill) {
	List<Candidate> candidate = candidateRep.findByCandidateSkills_Skill(skill);
	model.addAttribute("SkillCandidate", candidate);
	if (candidate != null) {
		return "candidate/resultsBySkillCandidate";
	} else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
	}
}

////////////////////////////////////// FIND BY ID EDUCATION DEGREE TYPE /////////////////

@GetMapping("/candidate/preFindByEducationDegreeTypeCandidate")
public String preFindByEducationDegreeTypeCandidate() {
	return "candidate/findByEducationDegreeTypeCandidate";
}

@GetMapping("/candidate/findByEducationDegreeTypeCandidate")
public String findByEducationDegreeTypeCandidate(Model model, Integer idEducationDegreeType) {
	List<Candidate> candidate = candidateRep.findByEducations_EducationDegreeType_IdEducationDegreeType(idEducationDegreeType);
	model.addAttribute("EducationDegreeTypeCandidate", candidate);
	if (candidate != null) {
		return "candidate/resultsByEducationDegreeTypeCandidate";
	} else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
	}
}

////////////////////////////////////// FIND BY ANNI DI ESPERIENZA //////////////////

////////////////////////////////////// FIND BY ID STATE JOB INTERVIEW per Outcome//////////////////

////////////////////////////////////// FIND BY ANNI DI ESPERIENZA //////////////////

}