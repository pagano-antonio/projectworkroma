package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.SkillRepository;
import com.model.Skill;


@Controller
@RequestMapping
public class SkillCtr {
	@Autowired
	private SkillRepository skillRep;

//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/job/preAddSkill")
	public String preAddSkill(Model model) {
		return "job/addSkill";
	}

	@PostMapping("/job/addSkill")
	public String addSkill(Model model, Skill skill) {
		skillRep.save(skill);
		return "success";
	}

//////////////////////////////////////  DELETE BY ID   ////////////////////////////////////

	@GetMapping("/job/preDeleteByIdSkill")
	public String preDeleteByIdSkill() {
		return "job/deleteByIdSkill";
	}

	@GetMapping("/job/deleteByIdSkill")
	public String deleteByIdSkill(Model model, Integer idSkill) {
		Skill skill = (Skill) skillRep.findById(idSkill).orElse(null);
		if (skill != null) {
			skillRep.delete(skill);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

//////////////////////////////////////  UPDATE   /////////////////////////////////////////

	@GetMapping("/job/preUpdateByIdSkill")
	public String preUpdateByIdSkill(Model model,@RequestParam Integer idSkill) {
		Skill skill = skillRep.findById(idSkill).orElse(null);
			model.addAttribute("idSkill", skill);
			return "job/updateByIdSkill";
	}
	@PostMapping("/job/updateByIdSkill")		
	public String updateByIdSkill(Model model,Skill skill) {
		skillRep.save(skill);	        
	        return "success";  
	}
}  

