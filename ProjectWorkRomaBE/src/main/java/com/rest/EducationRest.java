package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.EducationRepository;
import com.model.Education;

@RestController
@RequestMapping("EducationRest")
public class EducationRest {
	
	@Autowired
	private EducationRepository educationRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
	
	 @PostMapping("addEducation") 
	 public String addEducation(@RequestBody Education education) {
		 educationRep.save(education);
		 return "educationAdded"; 
	 }
	 
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	 
	 @PutMapping("updateEducation") 
		public String updateEducation(@RequestBody Education education) {
		 educationRep.save(education);
			 return "educationUpdated"; 
		 }
	 
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////
		
	 @DeleteMapping("deleteEducation") 
		public String deleteEducation(@RequestBody Education education) {
		 educationRep.delete(education);
			 return "educationDeleted"; 
		 }

}