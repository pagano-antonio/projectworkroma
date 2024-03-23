package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
		 List<Candidate> candidate = candidateRep.findAll();
         model.addAttribute("listCandidate", candidate);       
		return "candidate/addWorkExperience";
	}

	@PostMapping("/candidate/addWorkExperience")
	public String addWorkExperience(Model model, WorkExperience workExperience) {
		WorkExperienceRep.save(workExperience);
		return "success";
	}

	////////////////////////////////////// UPDATE
	////////////////////////////////////// ////////////////////////////////////

	@GetMapping("/preUpdateByIdWorkExperience")
	public String preUpdateByIdWorkExperience(Model model, @RequestParam Integer idWorkExperience) {
		WorkExperience workExperience = WorkExperienceRep.findById(idWorkExperience).orElse(null);
		model.addAttribute("idWorkExperience", workExperience);
		 List<Candidate> candidate = candidateRep.findAll();
         model.addAttribute("listIdCandidate", candidate);       
		return "updateByIdWorkExperience";

	}

	@PostMapping("/updateByIdWorkExperience")
	public String updateByIdWorkExperience(Model model,
			@ModelAttribute("workExperience") WorkExperience workExperience, Integer  idCandidate) {
		Candidate candidate = (Candidate)candidateRep.findById(idCandidate).orElse(null);
		workExperience.setCandidate(candidate);
	      WorkExperienceRep.save(workExperience);
		return "success";
	}

//////////////////////////////////////  DELETE BY ID  ////////////////////////////////////

	@GetMapping("/candidate/deleteByWorkExperience")
	public String deleteByWorkExperience(Model model, Integer idWorkExperience, Integer idCandidate) {
		WorkExperience workExperience = (WorkExperience) WorkExperienceRep.findById(idWorkExperience).orElse(null);	
		List<Candidate> candidate = candidateRep.findByIdCandidate(idCandidate);
		model.addAttribute("idCandidate", candidate);
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
