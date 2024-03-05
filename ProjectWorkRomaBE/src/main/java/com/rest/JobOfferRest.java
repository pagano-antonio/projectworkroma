package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.JobOfferRepository;
import com.model.JobOffer;

@RestController
@RequestMapping("JobOfferRest")
public class JobOfferRest {
	
	@Autowired
	private JobOfferRepository jobOfferRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
	
	@PostMapping("addJobOffer")
	public String addJobOffer(@RequestBody JobOffer jobOffer) {
		jobOfferRep.save(jobOffer);
		return "JobOfferAdded"; 
	}

/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	
	@PutMapping("updateJobOffer") 
	public String updateJobOffer(@RequestBody JobOffer jobOffer) {
		jobOfferRep.save(jobOffer);
		return "JobOfferUpdated"; 
	}

/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////

	@DeleteMapping("deleteJobOffer") 
	public String deleteJobOffer(@RequestBody JobOffer jobOffer) {
		jobOfferRep.delete(jobOffer);
		return "JobOfferDeleted"; 
	}


}
