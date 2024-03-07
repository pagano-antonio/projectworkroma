package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

//////////////////////////////////////UPDATE METHOD //////////////////////////////////////////////////////////

@GetMapping("/job/preUpdateByIdJobOffer")
public String preUpdateByIdIdJobOffer() {
return "job/updateIdJobOffer";
}

@GetMapping("/job/updateByIdJobOffer")
public String updateByIdJobOffer(Model model, @RequestParam int idJobOffer) {
JobOffer jobOffer = (JobOffer) jobOfferRep.findById(idJobOffer).orElse(null);
if (jobOffer != null) {
model.addAttribute("idJobOffer", jobOffer);
return "job/updateJobOffer";
} else {
String errorMessage = "ops!";
model.addAttribute("errorMessage", errorMessage);
return "errore";
}
}


//////////////////////////////////////DELETE BY ID //////////////////////////////////////////////////////////

@GetMapping("/job/preDeleteByIdJobOffer")
public String preDeleteByIdJobOffer() {
	return "job/deleteByIdJobOffer";
}

@GetMapping("/job/deleteByIdJobOffer")
public String deleteByIdJobOffer(Model model, Integer idJobOffer) {
	JobOffer jobOffer = (JobOffer) jobOfferRep.findById(idJobOffer).orElse(null);
	if (jobOffer != null) {
		jobOfferRep.delete(jobOffer);
		return "success";
	} else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
	}
}
}



//////////////////////////////////////FIND BY TITLE /////////////////////////////

//////////////////////////////////////FIND BY START AND END DATE ////////////////

//////////////////////////////////////FIND BY ID COMPANY CLIENT /////////////////

//////////////////////////////////////FIND BY MIN RAL/ MAX RAL //////////////////

//////////////////////////////////////FIND BY CONTRACT TYPE ////////////////////

//////////////////////////////////////FIND BY SKILL ////////////////////////////

