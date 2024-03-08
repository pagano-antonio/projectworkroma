package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.StateJobInterviewRepository;
import com.model.StateJobInterview;

@Controller
@RequestMapping
public class StateJobInterviewCtr {
	@Autowired
	private StateJobInterviewRepository stateJobInterviewRep;

//////////////////////////////////////ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/job/preAddStateJobInterview")
	public String preAddStateJobInterview(Model model) {
		return "job/addStateJobInterview";
	}

	@PostMapping("/job/addStateJobInterview")
	public String addStateJobInterview(Model model, StateJobInterview stateJobInterview) {
		stateJobInterviewRep.save(stateJobInterview);
		return "success";
	}
//////////////////////////////////////DELETE BY ID   ////////////////////////////////////

	@GetMapping("/job/preDeleteByIdStateJobInterview")
	public String preDeleteByIdStateJobInterview() {
		return "job/deleteByIdStateJobInterview";
	}

	@GetMapping("/job/deleteByIdStateJobInterview")
	public String deleteByIdStateJobInterview(Model model, Integer idStateJobInterview) {
		StateJobInterview stateJobInterview = (StateJobInterview) stateJobInterviewRep.findById(idStateJobInterview)
				.orElse(null);
		if (stateJobInterview != null) {
			stateJobInterviewRep.delete(stateJobInterview);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

//////////////////////////////////////  UPDATE   /////////////////////////////////////////

	@GetMapping("/job/preUpdateByIdStateJobInterview")
	public String preUpdateByIdStateJobInterview() {
		return "job/updateIdStateJobInterview";
	}

	@GetMapping("/job/updateByIdStateJobInterview")
	public String updateByIdStateJobInterview(Model model, @RequestParam int idStateJobInterview) {
		StateJobInterview stateJobInterview = (StateJobInterview) stateJobInterviewRep.findById(idStateJobInterview)
				.orElse(null);
		if (stateJobInterview != null) {
			model.addAttribute("idStateJobInterview", stateJobInterview);
			return "job/updateStateJobInterview";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

}
