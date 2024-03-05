package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.StateJobInterviewRepository;
import com.model.StateJobInterview;

@RestController
@RequestMapping("StateJobInterviewRest")
public class StateJobInterviewRest {
	
	@Autowired
	private StateJobInterviewRepository StateJobInterviewRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////

	@PostMapping("addStateJobInterview")
	public String addStateJobInterview(@RequestBody StateJobInterview stateJobInterview) {
		StateJobInterviewRep.save(stateJobInterview);
		return "stateJobInterviewAddded";
	}
	
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	
	@PutMapping("updateStateJobInterview")
	public String updateStateJobInterview(@RequestBody StateJobInterview stateJobInterview) {
		StateJobInterviewRep.save(stateJobInterview);
		return "stateJobInterviewUpdated";
	}
	
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////

	@DeleteMapping("deleteStateJobInterview")
	public String deleteStateJobInterview(@RequestBody StateJobInterview stateJobInterview) {
		StateJobInterviewRep.delete(stateJobInterview);
		return "stateJobInterviewDeleted";
	}
	
	
}
