package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.EducationDegreeTypeRepository;
import com.model.EducationDegreeType;


@Controller  
@RequestMapping
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


////////////////////////////////// SEARCH BY ID ///////////////////////////////////////////////////////////


}

















































