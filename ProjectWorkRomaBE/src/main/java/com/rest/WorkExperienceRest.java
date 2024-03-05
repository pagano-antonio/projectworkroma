package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.WorkExperienceRepository;
import com.model.WorkExperience;

@RestController
@RequestMapping("WorkExperienceRest")
public class WorkExperienceRest {

	@Autowired
	private WorkExperienceRepository WorkExperienceRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////

	@PostMapping("addWorkExperience")
	public String addWorkExperience(@RequestBody WorkExperience workExperience) {
		WorkExperienceRep.save(workExperience);
		return "workExperienceAdded";
	}
	
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////

	@PutMapping("updateWorkExperience")
	public String updateWorkExperience(@RequestBody WorkExperience workExperience) {
		WorkExperienceRep.save(workExperience);
		return "workExperienceUpdated";
	}
	
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////

	@DeleteMapping("deleteWorkExperience")
	public String deleteWorkExperience(@RequestBody WorkExperience workExperience) {
		WorkExperienceRep.delete(workExperience);
		return "workExperienceDeleted";
	}
	
}
