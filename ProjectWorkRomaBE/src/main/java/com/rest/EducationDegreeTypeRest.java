package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.EducationDegreeTypeRepository;
import com.model.EducationDegreeType;


	@RestController
	@RequestMapping("EducationDegreeType")
    public class EducationDegreeTypeRest { 
		
		@Autowired 
		private EducationDegreeTypeRepository EducationDegreeTypeRep;
		
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
		
		 @PostMapping("addEducationDegreeType") //metodo post
		 public String addEducationDegreeType(@RequestBody EducationDegreeType educationdegreetype) {
			 EducationDegreeTypeRep.save(educationdegreetype);
			 return "educationDegreeTypeAdded"; //su postman mi stampa OK
		 }
		 
	/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
		 
		 @PutMapping("updateEducationDegreeType") 
			public String updateEducationDegreeType(@RequestBody EducationDegreeType educationdegreetype) {
			 EducationDegreeTypeRep.save(educationdegreetype);
				 return "educationDegreeTypeUpdated"; 
			 }
		 
	/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////
			
		 @DeleteMapping("deleteEducationDegreeType") 
			public String deleteEducationDegreeType(@RequestBody EducationDegreeType educationdegreetype) {
			 EducationDegreeTypeRep.delete(educationdegreetype);
				 return "educationDegreeTypeDeleted"; 
			 }

	}


