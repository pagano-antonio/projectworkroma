package com.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.dao.ContractTypeRepository;
import com.model.ContractType;

@RestController
@RequestMapping("ContractTypeRest")
public class ContractTypeRest {
	
	@Autowired
	private ContractTypeRepository contractTypeRep;
	
/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
	
	 @PostMapping("addContractType") 
	 public String addContractType(@RequestBody ContractType contractType) {
		 contractTypeRep.save(contractType);
		 return "contractTypeAdded"; 
	 }
	 
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
	 
	 @PutMapping("updateContractType") 
		public String updateContractType(@RequestBody ContractType contractType) {
		 contractTypeRep.save(contractType);
			 return "contractTypeUpdated"; 
		 }
	 
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////
		
	 @DeleteMapping("deleteContractType") 
		public String deleteContractType(@RequestBody ContractType contractType) {
		 contractTypeRep.delete(contractType);
			 return "contractTypeDeleted"; 
		 }

}