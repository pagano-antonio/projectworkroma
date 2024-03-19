package com.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

/**
 * The persistent class for the employee_type database table.
 * 
 */
@Entity
@Table(name = "employee_type")
@NamedQuery(name = "EmployeeType.findAll", query = "SELECT e FROM EmployeeType e")
public class EmployeeType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idEmployeeType;

	private String description;

	// bi-directional many-to-one association to Employee
	@OneToMany(mappedBy = "employeeType", cascade = CascadeType.ALL)
	private List<Employee> employees;

	public EmployeeType() {
	}

	public int getIdEmployeeType() {
		return this.idEmployeeType;
	}

	public void setIdEmployeeType(int idEmployeeType) {
		this.idEmployeeType = idEmployeeType;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Employee> getEmployees() {
		return this.employees;
	}

	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}

	public Employee addEmployee(Employee employee) {
		getEmployees().add(employee);
		employee.setEmployeeType(this);

		return employee;
	}

	public Employee removeEmployee(Employee employee) {
		getEmployees().remove(employee);
		employee.setEmployeeType(null);

		return employee;
	}

}