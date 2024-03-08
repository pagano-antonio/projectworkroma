package com.ctr;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateSkillRepository;
import com.model.Candidate;
import com.model.CandidateSkill;


@Controller  
@RequestMapping
public class CandidateSkillCtr {
	@Autowired
	private CandidateSkillRepository candidateSkillRep;

	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/candidate/preAddCandidateSkill")    
	public String preAddCandidateSkill(Model model) {
		return "candidate/addCandidateSkill";
	}

	@PostMapping("/candidate/addCandidateSkill")  
	public String addCandidateSkill(Model model, CandidateSkill candidateSkill) {
		candidateSkillRep.save(candidateSkill); 
		return "success";
	}


//////////////////////////////////////DELETE BY ID  ////////////////////////////////////

@GetMapping("/candidate/preDeleteByIdCandidateSkill")
public String preDeleteByIdCandidateSkill() {
return "candidate/deleteByIdCandidateSkill";
}

@GetMapping("/candidate/deleteByIdCandidateSkill")
public String deleteByIdCandidateSkill(Model model, Integer idCandidateSkill) {
	CandidateSkill candidateSkill = (CandidateSkill) candidateSkillRep.findById(idCandidateSkill).orElse(null);
if (candidateSkill != null) {
	candidateSkillRep.delete(candidateSkill);
return "success";
} else {
String errorMessage = "ops!";
model.addAttribute("errorMessage", errorMessage);
return "errore";
}
}


//////////////////////////////////////UPDATE //////////////////////////////////////////////////////

@GetMapping("/candidate/preUpdateByIdCandidateSkill")
public String preUpdateByIdCandidateSkill() {
return "candidate/updateIdCandidateSkill";
}

@GetMapping("/candidate/updateByIdCandidateSkill")
public String updateByIdCandidateSkill(Model model, int idCandidateSkill) {
	CandidateSkill candidateSkill = (CandidateSkill) candidateSkillRep.findById(idCandidateSkill).orElse(null);
if (candidateSkill != null) {
model.addAttribute("idCandidateSkill", candidateSkill);
return "candidate/updateIdCandidateSkill"; 
} else {
String errorMessage = "ops!";
model.addAttribute("errorMessage", errorMessage);
return "errore"; 
}
}


//////////////////////////////////////FIND BY ID //////////////////////////////////

@GetMapping("/candidateSkill/preFindByIdCandidateSkill") 
public String preFindByIdCandidateSkill(Model model) {
	return "findByIdCandidateSkill";
}

@GetMapping("/candidateSkill/preFindByIdCandidateSkill") 
public String findByCity(Model model, String idCandidateSkill) {
	List<Candidate> candidate = candidateSkillRep.findByIdCandidateSkill(idCandidateSkill);
	model.addAttribute("city", candidate);
	if (idCandidateSkill != null) {
		return "candidateSkill/resultsFindByIdCandidateSkill"; 
	}else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
		}
	   
}
}