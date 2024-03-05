package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.dao.JobOfferSkillRepository;
import com.model.JobOfferSkill;

public class JobOfferSkillCtr {
	
	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;
	
//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////
	
@GetMapping("/preAddJobOfferSkill")    
	public String preAddJobOfferSkill(Model model) {
	return "addJobOfferSkill";
}

@PostMapping("/addJobOfferSkill") 
public String addJobOfferSkill(Model model, JobOfferSkill jobOfferSkill) {
	jobOfferSkillRep.save(jobOfferSkill); 
	return "addSuccess";
}


}
