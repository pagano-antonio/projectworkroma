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
	
	@GetMapping("/preAddEducationDegreeType")    
	public String preAddEducationDegreeType(Model model) {
		return "addEducationDegreeType";
	}

	@PostMapping("/addEducationDegreeType") 
	public String addEducationDegreeType(Model model, EducationDegreeType edt) {
		EducationDegreeTypeRep.save(edt); 
		return "addSuccess";
	}
}
