package com.rest;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.web.bind.annotation.DeleteMapping;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.PutMapping;
	import org.springframework.web.bind.annotation.RequestBody;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RestController;

    import com.dao.EmployeeTypeRepository;
    import com.model.EmployeeType;


        @RestController
		@RequestMapping("EmployeeType")
		public class EmployeeTypeRest { 
			
			@Autowired 
			private EmployeeTypeRepository EmployeeTypeRep;

/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
			
			 @PostMapping("addEmployeeType") //metodo post
			 public String addEmployee(@RequestBody EmployeeType employeetype) {
				 EmployeeTypeRep.save(employeetype);
				 return "employeetypeAdded"; //su postman mi stampa OK
			 }
			 
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
			 
			 @PutMapping("updateEmployeeType") 
				public String updateEmployee(@RequestBody EmployeeType employeetype) {
				 EmployeeTypeRep.save(employeetype);
					 return "employeeTypeUpdated"; 
				 }
			 
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////
				
			 @DeleteMapping("deleteEmployeeeType") 
				public String deleteEmployee(@RequestBody EmployeeType employeetype) {
				 EmployeeTypeRep.delete(employeetype);
					 return "employeeTypeDeleted"; 
				 }

		}



