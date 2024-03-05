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
	private CandidateSkillRepository CandidateSkillRep;

	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/preAddCandidateSkill")    
	public String preAddCandidateSkill(Model model) {
		return "addCandidateSkill";
	}

	@PostMapping("/addCandidateSkill") 
	public String addCandidateSkill(Model model, CandidateSkill edt) {
		CandidateSkillRep.save(edt); 
		return "addSuccess";
	}
}