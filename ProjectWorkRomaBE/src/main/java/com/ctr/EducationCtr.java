package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EducationRepository;
import com.model.Education;


@Controller  
@RequestMapping
public class EducationCtr {
	@Autowired
	private EducationRepository EducationRep;

	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/preAddEducation")    
	public String preEducation(Model model) {
		return "addEducation";
	}

	@PostMapping("/addEducation") 
	public String addEducation(Model model, Education education) {
		EducationRep.save(education); 
		return "addSuccess";
	}
}
