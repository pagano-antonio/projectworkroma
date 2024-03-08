package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CandidateCommercialDataRepository;
import com.model.CandidateCommercialData;

@Controller
@RequestMapping
public class CandidateCommercialDataCtr {
	@Autowired
	private CandidateCommercialDataRepository candidateCommercialDataRep;

////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/candidate/preAddCandidateCommercialData")
	public String preAddCandidateCommercialData(Model model) {
		return "candidate/addCandidateCommercialData";
	}

	@PostMapping("/candidate/addCandidateCommercialData")
	public String addCandidateCommercialData(Model model, CandidateCommercialData candidateCommercialData) {
		candidateCommercialDataRep.save(candidateCommercialData);
		return "success";
	}

//////////////////////////////////////DELETE BY ID  ////////////////////////////////////

	@GetMapping("/candidate/preDeleteByIdCandidateCommercialData")
	public String preDeleteByIdCandidateCommercialData() {
		return "candidate/deleteByIdCandidateCommercialData";
	}

	@GetMapping("/candidate/deleteByIdCandidateCommercialData")
	public String deleteByIdCandidateCommercialData(Model model, Integer idCandidateCommercialData) {
		CandidateCommercialData candidateCommercialData = (CandidateCommercialData) candidateCommercialDataRep
				.findById(idCandidateCommercialData).orElse(null);
		if (candidateCommercialData != null) {
			candidateCommercialDataRep.delete(candidateCommercialData);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

////////////////////////////////////// UPDATE //////////////////////////////////////////////////////

	@GetMapping("/candidate/preUpdateByIdCandidateCommercialData")
	public String preUpdateByIdCandidateCommercialData() {
		return "candidate/updateIdCandidateCommercialData";
	}

	@GetMapping("/candidate/updateByIdCandidateCommercialData")
	public String updateByIdIdCandidateCommercialData(Model model, int idCandidateCommercialData) {
		CandidateCommercialData candidateCommercialData = (CandidateCommercialData) candidateCommercialDataRep
				.findById(idCandidateCommercialData).orElse(null);
		if (candidateCommercialData != null) {
			model.addAttribute("idCandidateCommercialData", candidateCommercialData);
			return "candidate/updateIdCandidateCommercialData";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "errore";
		}
	}

////////////////////////////////////// FIND BY ID //////////////////////////////////

}