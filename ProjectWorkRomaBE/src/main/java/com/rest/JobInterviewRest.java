package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.JobInterviewRepository;
import com.model.JobInterview;

@RestController
@RequestMapping("JobInterviewRest")
public class JobInterviewRest {
	
	@Autowired
	private JobInterviewRepository jobInterviewRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
	
	 @PostMapping("addJobInterview") //metodo post
	 public String addJobInterview(@RequestBody JobInterview jobInter) {
		 jobInterviewRep.save(jobInter);
		 return "JobInterviewAdded"; //su postman mi stampa OK
	 }
	 
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	 
	 @PutMapping("updateJobInterview") 
		public String updateJobInterview(@RequestBody JobInterview jobInter) {
		 jobInterviewRep.save(jobInter);
			 return "JobInterviewUpdated"; 
		 }
	 
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////
		
	 @DeleteMapping("deleteJobInterview") 
		public String deleteJobInterview(@RequestBody JobInterview jobInter) {
		 jobInterviewRep.delete(jobInter);
			 return "JobInterviewDeleted"; 
		 }

}
