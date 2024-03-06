package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.JobOfferRepository;
import com.model.JobOffer;

@Controller  
@RequestMapping
public class JobOfferCtr {
	
	@Autowired
	private JobOfferRepository jobOfferRep;
	
//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////
	
@GetMapping("/job/preAddJobOffer")    
	public String preAddJobOffer(Model model) {
	return "job/addJobOffer";
}

@PostMapping("/job/addJobOffer") 
public String addJobOffer(Model model, JobOffer jobOffer) {
	jobOfferRep.save(jobOffer); 
	return "success";
}

}
