package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.StateJobInterviewRepository;
import com.model.StateJobInterview;

@Controller
@RequestMapping
public class StateJobInterviewCtr {
	@Autowired
	private StateJobInterviewRepository StateJobInterviewRep;
	
//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/job/preAddStateJobInterview")
	public String preAddStateJobInterview(Model model) {
		return "job/addStateJobInterview";
	}
	
	@PostMapping("/job/addStateJobInterview")
	public String addStateJobInterview(Model model, StateJobInterview stateJobInterview) {
		StateJobInterviewRep.save(stateJobInterview);
		return "success";
	}
	
	
	
}
