package com.rest;

	import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.PutMapping;
	import org.springframework.web.bind.annotation.RequestBody;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RestController;

   import com.dao.EmployeeRepository;
   import com.model.Employee;



        @RestController
		@RequestMapping("Employee")
        @CrossOrigin
		public class EmployeeRest { 
			
			@Autowired 
			private EmployeeRepository EmployeeRep;

/////////////////////////////////// ADD /////////////////////////////////////////////////////////////
			
			 @PostMapping("addEmployee") //metodo post
			 public String addEmployee(@RequestBody Employee employee) {
				 EmployeeRep.save(employee);
				 return "employeeAdded"; //su postman mi stampa OK
			 }
			 
/////////////////////////////////// UPDATE /////////////////////////////////////////////////////////////
			 
			 @PutMapping("updateEmployee") 
				public String updateEmployee(@RequestBody Employee employee) {
				 EmployeeRep.save(employee);
					 return "employeeUpdated"; 
				 }
			 
/////////////////////////////////// DELETE /////////////////////////////////////////////////////////////
				
			 @DeleteMapping("deleteEmployeee") 
				public String deleteEmployee(@RequestBody Employee employee) {
				 EmployeeRep.delete(employee);
					 return "employeeDeleted"; 
				 }

///////////////////////////////////////FIND BY ID //////////////////////////////////////////////////////////		

        @GetMapping("findById/{idEmployee}")
         public Employee findByIdEmployee(@PathVariable("idEmployee") int idEmployee) {
    		return EmployeeRep.findById(idEmployee).get();
    	}
        }
