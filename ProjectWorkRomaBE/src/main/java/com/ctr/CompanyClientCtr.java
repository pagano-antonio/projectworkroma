package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.CompanyClientRepository;
import com.model.CompanyClient;


@Controller  
@RequestMapping
public class CompanyClientCtr {
	@Autowired
	private CompanyClientRepository CompanyClientRep;

	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/preAddCompanyClient")    
	public String preCompanyClient(Model model) {
		return "addCompanyClient";
	}

	@PostMapping("/addCompanyClient") 
	public String addCompanyClient(Model model, CompanyClient edt) {
		CompanyClientRep.save(edt); 
		return "addSuccess";
	}
}