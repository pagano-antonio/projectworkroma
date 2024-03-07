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
	
	@GetMapping("/candidate/preAddEducation")    
	public String preEducation(Model model) {
		return "candidate/addEducation";
	}

	@PostMapping("/candidate/addEducation") 
	public String addEducation(Model model, Education education) {
		EducationRep.save(education); 
		return "success";
	}
	
////////////////////////////////////// DELETE BY ID  ////////////////////////////////////

	@GetMapping("/candidate/preDeleteByIdEducation")
	public String preDeleteByIdEducation() {
	    return "candidate/deleteByIdEducation";
	}
	
	@GetMapping("/candidate/deleteByIdEducation")
	public String deleteByIdEducation(Model model, Integer idEducation) {
		Education education = (Education) EducationRep.findById(idEducation).orElse(null);
		if (education != null) {
		EducationRep.delete(education);
		return "success";
	} else {
		String errorMessage = "ops!";
		model.addAttribute("errorMessage", errorMessage);
		return "errore";
		}
	}
	
//////////////////////////////////////  UPDATE   ////////////////////////////////////

	@GetMapping("/candidate/preUpdateByIdEducation")
	public String preUpdateByIdEducation() {
	     return "candidate/updateIdEducation";
	 }
	
	@GetMapping("/candidate/updateByIdEducation")
	public String updateByIdIdEducation(Model model, int idEducation) {
			Education education = (Education) EducationRep.findById(idEducation).orElse(null);
		if (education != null) {
			model.addAttribute("idEducation", education);
			return "candidate/updateIdEducation";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
			}
		}
	
	
}


