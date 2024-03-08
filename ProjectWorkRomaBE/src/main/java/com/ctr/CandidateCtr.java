package com.ctr;
import java.math.BigInteger;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dao.CandidateRepository;
import com.model.Candidate;
import com.model.JobInterview;
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
	if (idCandidate != null) {
		return "candidate/resultsFindByIdCandidate";
	}else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
		}
	   
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
	if (surname != null) {
		return "candidate/resultsFindBySurname";
	}else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
		}
	   
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
	if (city != null) {
		return "candidate/resultsFindByCity"; 
	}else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
		}
	   
}
//////////////////////////////////////FIND BY PHONE NUMBER ////////////////////////

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
//////////////////////////////////////FIND BY SKILL ///////////////////////////////

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

//////////////////////////////////////FIND BY ID EDUCATION DEGREE TYPE /////////////////

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
////////////////////////////////////// FIND BY YEARS OF EXPERIENCE //////////////////
@GetMapping("/candidate/preFindByYearsOfExperienceCandidate")
public String preFindByYearsOfExperienceCandidate() {
    return "candidate/findByYearsOfExperienceCandidate";
}

//@GetMapping("/candidate/findByYearsOfExperienceCandidate")
//public String findByYearsOfExperienceCandidate(Model model,
//                                               @RequestParam("startDate") LocalDate startDate,
//                                               @RequestParam("endDate") LocalDate endDate) {
//    List<Candidate> candidateList = candidateRep.findAll(); // Retrieve all candidates
//
//    List<Candidate> experiencedCandidates = new ArrayList<>();
//
//    for (Candidate candidate : candidateList) {
//       
//        List<WorkExperience> workExperience = candidateRep.findByStartDateAfterAndEndDateBefore(startDate, endDate);
//        model.addAttribute("WorkExperience", workExperience);
//        model.addAttribute("WorkExperience", startDate);
//        model.addAttribute("WorkExperience", endDate);
//
//   
//    return "candidate/resultsByYearsOfExperienceCandidate";
//}

////////////////////////////////////// FIND BY ID JOB INTERVIEW FOR OUTCOME //////////////////
@GetMapping("/candidate/preFindByOutcomeJobInterviewCandidate")
public String preFindByOutcomeJobInterviewCandidate() {
return "candidate/findByOutcomeJobInterviewCandidate";
}

@GetMapping("/candidate/findByOutcomeJobInterviewCandidate") 
public String findByOutcomeJobInterviewCandidate(Model model, Integer idStateJobInterview, Integer outcome) {
	List<JobInterview> candidate = candidateRep.findByJobInterviews_StateJobInterview_IdStateJobInterview(idStateJobInterview);
Collections.sort(candidate, Comparator.comparing(JobInterview::getOutcome));
model.addAttribute("OutcomeCandidate", candidate);
if (candidate != null) {
return "candidate/resultsByOutcomeJobInterviewCandidate";
} else {  
String errorMessage = "ops!";
model.addAttribute("errorMessage", errorMessage);
return "errore";
}
}


}