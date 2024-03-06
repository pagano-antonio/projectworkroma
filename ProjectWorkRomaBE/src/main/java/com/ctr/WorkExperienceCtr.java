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
	
//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/candidate/preAddWorkExperience")
	public String preAddWorkExperience(Model model) {
		return "candidate/AddWorkExperience";
	}
	
	@PostMapping("/candidate/addWorkExperience")
	public String addWorkExperience(Model model, WorkExperience workExperience) {
		WorkExperienceRep.save(workExperience);
		return "success";
	}
	

}
