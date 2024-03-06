package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.SkillRepository;
import com.model.Skill;

@RestController
@RequestMapping("SkillRest")
public class SkillRest {
	
	@Autowired
	private SkillRepository skillRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
	
	@PostMapping("addSkill")
	public String addSkill(@RequestBody Skill skill) {
		skillRep.save(skill);
		return "skillAdded";
	}
	
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	
	@PutMapping("updateSkill")
	public String updateSkill(@RequestBody Skill skill) {
		skillRep.save(skill);
		return "skillUpdated";
	}

/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////

	@DeleteMapping
	public String deleteSkill(@RequestBody Skill skill) {
		skillRep.delete(skill);
		return "skillDeleted";
	}
	
	
	
}
