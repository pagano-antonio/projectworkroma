package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.JobInterviewRepository;
import com.model.JobInterview;

@Controller  
@RequestMapping
public class JobInterviewCtr {
	
	@Autowired
	private JobInterviewRepository jobInterviewRep;
	
//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////
	
@GetMapping("/preAddJobInterview")    
	public String preAddJobInterview(Model model) {
	return "addJobInterview";
}

@PostMapping("/addJobInterview") 
public String addJobInterview(Model model, JobInterview jobInter) {
	jobInterviewRep.save(jobInter); 
	return "addSuccess";
}

}
