package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.dao.WorkExperienceRepository;
import com.model.WorkExperience;


@Controller
@RequestMapping
public class WorkExperienceCtr {
	@Autowired
	private WorkExperienceRepository WorkExperienceRep;
	
//////////////////////////////////////  ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/candidate/preAddWorkExperience")
	public String preAddWorkExperience(Model model) {
		return "candidate/AddWorkExperience";
	}
	
	@PostMapping("/candidate/addWorkExperience")
	public String addWorkExperience(Model model, WorkExperience workExperience) {
		WorkExperienceRep.save(workExperience);
		return "success";
	}

//////////////////////////////////////  DELETE BY ID  ////////////////////////////////////

	@GetMapping("/candidate/preDeleteByIdWorkExperience")
	public String preDeleteByIdWorkExperience() {
		return "candidate/deleteByIdWorkExperience";
		}
	
	@GetMapping("/candidate/deleteByIdWorkExperience")
	public String deleteByIdWorkExperience(Model model, Integer idWorkExperience) {
		WorkExperience workExperience = (WorkExperience) WorkExperienceRep.findById(idWorkExperience).orElse(null);
		if (workExperience != null) {
			WorkExperienceRep.delete(workExperience);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

//////////////////////////////////////  UPDATE   ////////////////////////////////////

	@GetMapping("/candidate/preUpdateByIdWorkExperience")
	public String preUpdateByIdWorkExperience() {
		return "candidate/updateIdWorkExperience";
		}
	
	@GetMapping("/candidate/updateByIdWorkExperience")
	public String updateByIdIdWorkExperience(Model model, int idWorkExperience) {
		WorkExperience workExperience = (WorkExperience) WorkExperienceRep.findById(idWorkExperience).orElse(null);
		if (workExperience != null) {
			model.addAttribute("idWorkExperience", workExperience);
			return "candidate/updateIdWorkExperience";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}
	

}
