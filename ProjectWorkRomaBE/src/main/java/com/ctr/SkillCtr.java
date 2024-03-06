package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.SkillRepository;
import com.model.Skill;

@Controller
@RequestMapping
public class SkillCtr {
	@Autowired
	private SkillRepository SkillRep;
	
//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/job/preAddSkill")
	public String preAddSkill(Model model) {
		return "job/addSkill";
	}
	
	@PostMapping("/job/addSkill")
	public String addSkill(Model model, Skill skill) {
		SkillRep.save(skill);
		return "success";
	}
	

}
