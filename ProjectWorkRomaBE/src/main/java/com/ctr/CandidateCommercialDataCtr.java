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
	
	@GetMapping("/preAddCandidateCommercialData")    
	public String preAddCandidateCommercialData(Model model) {
		return "addCandidateCommercialData";
	}

	@PostMapping("/addCandidateCommercialData") 
	public String addCandidateCommercialData(Model model, CandidateCommercialData ccd) {
		candidateCommercialDataRep.save(ccd); 
		return "addSuccess";
	}
}