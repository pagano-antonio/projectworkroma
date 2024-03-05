package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CandidateSkillRepository;
import com.model.CandidateSkill;

@RestController
@RequestMapping("CandidateSkillRest")
public class CandidateSkillRest {
	
	@Autowired
	private CandidateSkillRepository candidateSkillRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
	
	 @PostMapping("addCandidateSkill") //metodo post
	 public String addCandidateSkill(@RequestBody CandidateSkill candSkill) {
		 candidateSkillRep.save(candSkill);
		 return "CandidateSkillAdded"; //su postman mi stampa OK
	 }
	 
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	 
	 @PutMapping("updateCandidateSkill") 
		public String updateCandidateSkill(@RequestBody CandidateSkill candSkill) {
		 candidateSkillRep.save(candSkill);
			 return "CandidateSkillUpdated"; 
		 }
	 
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////
		
	 @DeleteMapping("deleteCandidateSkill") 
		public String deleteCandidateSkill(@RequestBody CandidateSkill candSkill) {
		 candidateSkillRep.delete(candSkill);
			 return "CandidateSkillDeleted"; 
		 }

}
