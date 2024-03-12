package com.ctr;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.EducationDegreeTypeRepository;
import com.model.EducationDegreeType;


@Controller  
public class EducationDegreeTypeCtr {
	
	@Autowired
	private EducationDegreeTypeRepository EducationDegreeTypeRep;

	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/candidate/preAddEducationDegreeType")    
	public String preAddEducationDegreeType(Model model) {
		return "candidate/addEducationDegreeType";
	}

	@PostMapping("/candidate/addEducationDegreeType") 
	public String addEducationDegreeType(Model model, EducationDegreeType edt) {
		EducationDegreeTypeRep.save(edt); 
		return "success";
	}
	
//////////////////////////////////////  UPDATE   ////////////////////////////////////

	@GetMapping("/candidate/preUpdateByIdEducationDegreeType")
	public String preUpdateByIdEducationDegreeType(Model model,@RequestParam Integer idEducationDegreeType) {
		EducationDegreeType educationDegreeType = EducationDegreeTypeRep.findById(idEducationDegreeType).orElse(null);
		model.addAttribute("idEducationDegreeType", educationDegreeType);
		return "candidate/updateByIdEducationDegreeType";     
	
	}   
	
	@PostMapping("/candidate/updateByIdEducationDegreeType")
	public String updateByIdEducationDegreeType(Model model,@ModelAttribute ("educationDegreeType") EducationDegreeType educationDegreeType) { 
		EducationDegreeTypeRep.save(educationDegreeType);		
		return "success";   	
	}


//////////////////////////////////////  DELETE BY ID  ////////////////////////////////////

	@GetMapping("/candidate/preDeleteByIdEducationDegreeType")
	public String preDeleteByIdEducationDegreeType() {
		return "candidate/deleteByIdEducationDegreeType";
	}
	
	@GetMapping("/candidate/deleteByIdEducationDegreeType")
	public String deleteByIdEducationDegreeType(Model model, Integer idEducationDegreeType) {
		EducationDegreeType educationDegreeType = (EducationDegreeType) EducationDegreeTypeRep.findById(idEducationDegreeType).orElse(null);
		if (educationDegreeType != null) {
			EducationDegreeTypeRep.delete(educationDegreeType);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	} 
}

