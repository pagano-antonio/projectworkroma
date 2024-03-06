package com.ctr;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateSkillRepository;
import com.model.CandidateSkill;


@Controller  
@RequestMapping
public class CandidateSkillCtr {
	@Autowired
	private CandidateSkillRepository candidateSkillRep;

	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/candidate/preAddCandidateSkill")    
	public String preAddCandidateSkill(Model model) {
		return "candidate/addCandidateSkill";
	}

	@PostMapping("/candidate/addCandidateSkill") 
	public String addCandidateSkill(Model model, CandidateSkill cs) {
		candidateSkillRep.save(cs); 
		return "success";
	}
}