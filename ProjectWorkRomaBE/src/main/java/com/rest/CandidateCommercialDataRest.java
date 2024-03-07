package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.CandidateCommercialDataRepository;
import com.model.CandidateCommercialData;

@RestController
@RequestMapping("CandidateCommercialDataRest")
public class CandidateCommercialDataRest {
	
	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
	
	 @PostMapping("addCandidateCommercialData") 
	 public String addCandidateCommercialData(@RequestBody CandidateCommercialData ccd) {
		 candidateCommercialDataRep.save(ccd);
		 return "CandidateCommercialDataAdded"; 
	 }
	 
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	 
	 @PutMapping("updateCandidateCommercialData") 
		public String updateCandidateCommercialData(@RequestBody CandidateCommercialData ccd) {
		 candidateCommercialDataRep.save(ccd);
			 return "CandidateCommercialDataUpdated"; 
		 }
	 
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////
		
	 @DeleteMapping("deleteCandidateCommercialData") 
		public String deleteCandidateCommercialData(@RequestBody CandidateCommercialData ccd) {
		 candidateCommercialDataRep.delete(ccd);
			 return "CandidateCommercialDataDeleted"; 
		 }

}