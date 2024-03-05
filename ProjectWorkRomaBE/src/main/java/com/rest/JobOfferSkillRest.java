package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.JobOfferSkillRepository;
import com.model.JobOfferSkill;

@RestController
@RequestMapping("JobOfferSkillRest")
public class JobOfferSkillRest {
	
	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
	
	@PostMapping("addJobOfferSkill")
	public String addJobOfferSkill(@RequestBody JobOfferSkill jobOfferSkill) {
		jobOfferSkillRep.save(jobOfferSkill);
		return "JobOfferSkillAdded";
	}

/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	
	@PutMapping("updateJobOfferSkill") 
	public String updateJobOfferSkill(@RequestBody JobOfferSkill jobOfferSkill) {
		jobOfferSkillRep.save(jobOfferSkill);
		return "JobOfferSkillUpdated"; 
	}

/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////

	@DeleteMapping("deleteJobOfferSkill") 
	public String deleteJobOfferSkill(@RequestBody JobOfferSkill jobOfferSkill) {
		jobOfferSkillRep.delete(jobOfferSkill);
		return "JobOfferSkillDeleted"; 
	}


}