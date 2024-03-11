package com.ctr;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateSkillRepository;
import com.model.Candidate;
import com.model.CandidateCommercialData;
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
public String preUpdateByIdCandidateSkill(Model model,@RequestParam Integer idCandidateSkill) {
	CandidateSkill candidateSkill = candidateSkillRep.findById(idCandidateSkill).orElse(null);
        model.addAttribute("candidateSkill", candidateSkill); 
        return "candidate/updateByIdCandidateSkill";     
     
}   

@PostMapping("/candidate/updateByIdCandidateSkill")
public String updateByIdCandidateSkill(Model model, CandidateSkill candidateSkill) { 
        candidateSkillRep.save(candidateSkill);
        return "success";    
  
} 


//////////////////////////////////////FIND BY ID //////////////////////////////////

@GetMapping("/candidate/preFindByIdCandidateSkill") 
public String preFindByIdCandidateSkill(Model model) {
	return "findByIdCandidateSkill";
}

@GetMapping("/candidate/FindByIdCandidateSkill")  
public String findByCity(Model model, Integer idCandidateSkill) {
	List<Candidate> candidate = candidateSkillRep.findByIdCandidateSkill(idCandidateSkill);
	model.addAttribute("city", candidate);
	if (idCandidateSkill != null) {
		return "candidate/resultsFindByIdCandidateSkill"; 
	}else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
		}
	   
}
}