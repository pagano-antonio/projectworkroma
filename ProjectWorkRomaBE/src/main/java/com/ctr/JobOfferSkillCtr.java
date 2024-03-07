package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.JobOfferSkillRepository;
import com.model.JobOfferSkill;

public class JobOfferSkillCtr {
	
	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;
	
//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////
	
@GetMapping("/job/preAddJobOfferSkill")    
	public String preAddJobOfferSkill(Model model) {
	return "job/addJobOfferSkill";
}

@PostMapping("/job/addJobOfferSkill") 
public String addJobOfferSkill(Model model, JobOfferSkill jobOfferSkill) {
	jobOfferSkillRep.save(jobOfferSkill); 
	return "success";
}

//////////////////////////////////////UPDATE METHOD //////////////////////////////////////////////////////////

@GetMapping("/job/preUpdateByIdJobOfferSkill")
public String preUpdateByIdIdJobOfferSkill() {
return "job/updateIdJobOfferSkill";
}

@GetMapping("/job/updateByIdJobOfferSkill")
public String updateByIdJobOfferSkill(Model model, @RequestParam int idJobOfferSkill) {
JobOfferSkill jobOfferSkill = (JobOfferSkill) jobOfferSkillRep.findById(idJobOfferSkill).orElse(null);
if (jobOfferSkill != null) {
model.addAttribute("idJobOfferSkill", jobOfferSkill);
return "job/updateJobOfferSkill";
} else {
String errorMessage = "ops!";
model.addAttribute("errorMessage", errorMessage);
return "errore";
}
}


//////////////////////////////////////DELETE BY ID //////////////////////////////////////////////////////////

@GetMapping("/job/preDeleteByIdJobOfferSkill")
public String preDeleteByIdJobOfferSkill() {
	return "job/deleteByIdJobOfferSkill";
}

@GetMapping("/job/deleteByIdJobOfferSkill")
public String deleteByIdJobOfferSkill(Model model, Integer idJobOfferSkill) {
	JobOfferSkill jobOfferSkill = (JobOfferSkill) jobOfferSkillRep.findById(idJobOfferSkill).orElse(null);
	if (jobOfferSkill != null) {
		jobOfferSkillRep.delete(jobOfferSkill);
		return "success";
	} else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
	}
}
}