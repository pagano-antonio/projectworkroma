package com.ctr;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.JobOfferSkillRepository;
import com.dao.JobOfferRepository;
import com.dao.SkillRepository;
import com.model.JobOffer;
import com.model.JobOfferSkill;
import com.model.Skill;

@Controller
public class JobOfferSkillCtr {

	@Autowired
	private JobOfferSkillRepository jobOfferSkillRep;
	
	@Autowired
	private JobOfferRepository jobOfferRep;
	
	@Autowired
	private SkillRepository skillRep;

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
	    public String preUpdateByIdIdJobOfferSkill(Model model,@RequestParam Integer idJobOfferSkill) {
	    	JobOfferSkill jobOfferSkill = jobOfferSkillRep.findById(idJobOfferSkill).orElse(null);
	            model.addAttribute("idJobOfferSkill", jobOfferSkill);
	            List<JobOffer> jobOffer = jobOfferRep.findAll();
	            List<Skill> skill = skillRep.findAll();
	            model.addAttribute("listIdJobOffer", jobOffer);
	            model.addAttribute("listIdSkill", skill); 
	            return "job/updateByIdJobOfferSkill";     
	      
	    }   

	    @PostMapping("/job/updateByIdJobOfferSkill")
	    public String updateByIdJobOfferSkill(Model model,@ModelAttribute ("jobOfferSkill") JobOfferSkill jobOfferSkill, Integer  idJobOffer, Integer idSkill) {
	    	JobOffer jobOffer = (JobOffer)jobOfferRep.findById(idJobOffer).orElse(null);
	    	Skill skill = (Skill)skillRep.findById(idSkill).orElse(null);
	      jobOfferSkill.setJobOffer(jobOffer);
	      jobOfferSkill.setSkill(skill); 
	            jobOfferSkillRep.save(jobOfferSkill);
	            return "success";   
	      
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
			return "error";
		}
	}
}