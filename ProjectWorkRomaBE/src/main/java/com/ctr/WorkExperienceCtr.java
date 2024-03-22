package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateRepository;
import com.dao.WorkExperienceRepository;
import com.model.Candidate;
import com.model.WorkExperience;


@Controller
public class WorkExperienceCtr {
	@Autowired
	private WorkExperienceRepository WorkExperienceRep;
	
	@Autowired
	private CandidateRepository candidateRep;
	
//////////////////////////////////////  ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/candidate/preAddWorkExperience")
	public String preAddWorkExperience(Model model) {
		return "candidate/addWorkExperience";
	}
	
	@PostMapping("/candidate/addWorkExperience")
	public String addWorkExperience(Model model, WorkExperience workExperience) {
		WorkExperienceRep.save(workExperience);
		return "success";
	}
	
	//////////////////////////////////////  UPDATE   ////////////////////////////////////
	
    @GetMapping("/preUpdateByIdWorkExperience")
    public String preUpdateByIdWorkExperience(Model model,@RequestParam Integer idWorkExperience) {
    	WorkExperience workExperience = WorkExperienceRep.findById(idWorkExperience).orElse(null);
            model.addAttribute("idWorkExperience", workExperience);
            return "updateByIdWorkExperience";     
      
    }   

    @PostMapping("/updateByIdWorkExperience")
    public String updateByIdWorkExperience(Model model,@ModelAttribute ("idWorkExperience") WorkExperience workExperience, Integer idCandidate) {
    	Candidate candidate = (Candidate)candidateRep.findById(idCandidate).orElse(null);
      workExperience.setCandidate(candidate); 
            WorkExperienceRep.save(workExperience);
            
            return "success";   
      
    } 

//////////////////////////////////////  DELETE BY ID  ////////////////////////////////////

	@GetMapping("/candidate/preDeleteByWorkExperience")
	public String preDeleteByWorkExperience() {
		return "candidate/deleteByWorkExperience";
		}
	
	@GetMapping("/candidate/deleteByWorkExperience")
	public String deleteByWorkExperience(Model model, Integer idWorkExperience) {
		WorkExperience workExperience = (WorkExperience) WorkExperienceRep.findById(idWorkExperience).orElse(null);
		if (workExperience != null) {
			WorkExperienceRep.delete(workExperience);
			return "updateByIdCandidate";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}
}
