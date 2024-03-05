package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ContractTypeRepository;
import com.model.ContractType;


@Controller  
@RequestMapping
public class ContractTypeCtr {
	@Autowired
	private ContractTypeRepository ContractTypeRep;

	
////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////
	
	@GetMapping("/preAddContractType")    
	public String preContractType(Model model) {
		return "addContractType";
	}

	@PostMapping("/addContractType") 
	public String addContractType(Model model, ContractType edt) {
		ContractTypeRep.save(edt); 
		return "addSuccess";
	}
}
