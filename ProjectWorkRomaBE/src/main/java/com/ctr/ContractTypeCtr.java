package com.ctr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.ContractTypeRepository;
import com.model.ContractType;


@Controller
public class ContractTypeCtr {
	@Autowired
	private ContractTypeRepository contractTypeRep;

////////////////////////////////////// ADD METHOD //////////////////////////////////////////////////////////

	@GetMapping("/job/preAddContractType")
	public String preContractType(Model model) {
		return "job/addContractType";
	}

	@PostMapping("/job/addContractType")
	public String addContractType(Model model, ContractType contractType) {
		contractTypeRep.save(contractType);
		return "success";
	}

////////////////////////////////////// DELETE BY ID   ////////////////////////////////////

	@GetMapping("/job/preDeleteByIdContractType")
	public String preDeleteByIdContractType() {
		return "job/deleteByIdContractType";
	}

	@GetMapping("/job/deleteByIdContractType")
	public String deleteByIdContractType(Model model, Integer idContractType) {
		ContractType contractType = (ContractType) contractTypeRep.findById(idContractType).orElse(null);
		if (contractType != null) {
			contractTypeRep.delete(contractType);
			return "success";
		} else {
			String errorMessage = "ops!";
			model.addAttribute("errorMessage", errorMessage);
			return "error";
		}
	}

//////////////////////////////////////   UPDATE   /////////////////////////////////////////

	@GetMapping("/job/preUpdateByIdContractType")
	public String preUpdateByIdContractType(Model model,@RequestParam Integer idContractType) {
		ContractType contractType = contractTypeRep.findById(idContractType).orElse(null);
			model.addAttribute("idContractType", contractType);
			return "job/updateByIdContractType";
	}
	@PostMapping("/job/updateByIdContractType")		
	public String updateByIdContractType(Model model,ContractType contractType) {
		contractTypeRep.save(contractType);	        
	        return "success";  
	}
}