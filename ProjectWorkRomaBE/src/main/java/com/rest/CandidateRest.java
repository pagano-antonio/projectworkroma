package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CandidateRepository;
import com.model.Candidate;

@RestController
@RequestMapping("CandidateRest")
public class CandidateRest {
	
	@Autowired
	private CandidateRepository candidateRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
	
	 @PostMapping("addCandidate") //metodo post
	 public String addCandidate(@RequestBody Candidate candidate) {
		 candidateRep.save(candidate);
		 return "CandidateAdded"; //su postman mi stampa OK
	 }
	 
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	 
	 @PutMapping("updateCandidate") 
		public String updateCandidate(@RequestBody Candidate candidate) {
		 candidateRep.save(candidate);
			 return "CandidateUpdated"; 
		 }
	 
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////
		
	 @DeleteMapping("deleteCandidate") 
		public String deleteCandidate(@RequestBody Candidate candidate) {
		 candidateRep.delete(candidate);
			 return "CandidateDeleted"; 
		 }

}