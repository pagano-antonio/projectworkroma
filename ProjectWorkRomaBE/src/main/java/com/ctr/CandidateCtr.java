package com.ctr;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateRepository;
import com.model.Candidate;


@Controller  
@RequestMapping
public class CandidateCtr {
	@Autowired
	private CandidateRepository CandidateRep;

	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/preAddCandidate")    
	public String preAddCandidate(Model model) {
		return "addCandidate";
	}

	@PostMapping("/addCandidate") 
	public String addCandidate(Model model, Candidate edt) {
		CandidateRep.save(edt); 
		return "addSuccess";
	}
}