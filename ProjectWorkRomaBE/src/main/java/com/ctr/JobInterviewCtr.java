package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.dao.JobInterviewRepository;
import com.model.JobInterview;

@Controller  
@RequestMapping
public class JobInterviewCtr {
	
	@Autowired
	private JobInterviewRepository jobInterviewRep;
	
//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////
	
@GetMapping("/job/preAddJobInterview")    
	public String preAddJobInterview(Model model) {
	return "job/addJobInterview";
}

@PostMapping("/job/addJobInterview") 
public String addJobInterview(Model model, JobInterview jobInter) {
	jobInterviewRep.save(jobInter); 
	return "success";
}

//////////////////////////////////////UPDATE METHOD //////////////////////////////////////////////////////////

@GetMapping("/job/preUpdateByIdJobInterview")
public String preUpdateByIdJobInterview() {
return "job/updateIdJobInterview";
}

@GetMapping("/job/updateByIdJobInterview")
public String updateByIdJobInterview(Model model, @RequestParam int idJobInterview) {
JobInterview jobInterview = (JobInterview) jobInterviewRep.findById(idJobInterview).orElse(null);
if (jobInterview != null) {
model.addAttribute("idJobInterview", jobInterview);
return "job/updateJobInterview";
} else {
String errorMessage = "ops!";
model.addAttribute("errorMessage", errorMessage);
return "errore";
}
}

//////////////////////////////////////DELETE BY ID //////////////////////////////////////////////////////////

@GetMapping("/job/preDeleteByIdJobInterview")
public String preDeleteByIdJobInterview() {
return "job/deleteByIdJobInterview";
}

@GetMapping("/job/deleteByIdJobInterview")
public String deleteByIdJobInterview(Model model, Integer idJobInterview) {
JobInterview jobInterview = (JobInterview) jobInterviewRep.findById(idJobInterview).orElse(null);
if (jobInterview != null) {
	jobInterviewRep.delete(jobInterview);
return "success";
} else {
String errorMessage = "ops!";
model.addAttribute("errorMessage", errorMessage);
return "errore";
}
}
}