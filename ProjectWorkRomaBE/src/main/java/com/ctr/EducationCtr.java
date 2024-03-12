package com.ctr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CandidateRepository;
import com.dao.EducationDegreeTypeRepository;
import com.dao.EducationRepository;
import com.model.Candidate;
import com.model.Education;
import com.model.EducationDegreeType;


@Controller  
@RequestMapping
public class EducationCtr {
	@Autowired
	private EducationRepository EducationRep;
	
	@Autowired
	private EducationDegreeTypeRepository EducationDegreeTypeRep;
	
	@Autowired
	private CandidateRepository candidateRep;

	
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
	
//////////////////////////////////////UPDATE   ////////////////////////////////////
	
	@GetMapping("/candidate/preUpdateByIdEducation")
	public String preUpdateByIdEducation(Model model,@RequestParam Integer idEducation) {
		Education education = EducationRep.findById(idEducation).orElse(null);
		model.addAttribute("idEducation", education);
		List<EducationDegreeType> educationDegreeType = EducationDegreeTypeRep.findAll();
		List<Candidate> candidate = candidateRep.findAll();
		model.addAttribute("listIdEducationDegreeType", educationDegreeType);
		model.addAttribute("listIdCandidate", candidate); 
		return "candidate/updateByIdEducation";     
		
		}   
	
	@PostMapping("/candidate/updateByIdEducation")
	public String updateByIdEducation(Model model,@ModelAttribute ("education") Education education, Integer  idEducationDegreeType, Integer idCandidate) {
		EducationDegreeType educationDegreeType = (EducationDegreeType)EducationDegreeTypeRep.findById(idEducationDegreeType).orElse(null);
		Candidate candidate = (Candidate)candidateRep.findById(idCandidate).orElse(null);
		education.setEducationDegreeType(educationDegreeType);
		education.setCandidate(candidate); 
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
	

	
}


