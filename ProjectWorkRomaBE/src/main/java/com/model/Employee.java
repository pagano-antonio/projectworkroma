package com.model;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;

/**
 * The persistent class for the employee database table.
 * 
 */
@Entity
@NamedQuery(name = "Employee.findAll", query = "SELECT e FROM Employee e")
public class Employee implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idEmployee;

	private String email;

	private String name;

	private String password;

	private String surname;

	private String username;
	
	// bi-directional many-to-one association to EmployeeType
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "idEmployeeType")
	private EmployeeType employeeType;

	// bi-directional many-to-one association to JobInterview
	@JsonIgnore
	@OneToMany(mappedBy = "employee", cascade = CascadeType.ALL)
	private List<JobInterview> jobInterviews;

	public Employee() {
	}

	public int getIdEmployee() {
		return this.idEmployee;
	}

	public void setIdEmployee(int idEmployee) {
		this.idEmployee = idEmployee;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSurname() {
		return this.surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public EmployeeType getEmployeeType() {
		return this.employeeType;
	}

	public void setEmployeeType(EmployeeType employeeType) {
		this.employeeType = employeeType;
	}

	public List<JobInterview> getJobInterviews() {
		return this.jobInterviews;
	}

	public void setJobInterviews(List<JobInterview> jobInterviews) {
		this.jobInterviews = jobInterviews;
	}

	public JobInterview addJobInterview(JobInterview jobInterview) {
		getJobInterviews().add(jobInterview);
		jobInterview.setEmployee(this);

		return jobInterview;
	}

	public JobInterview removeJobInterview(JobInterview jobInterview) {
		getJobInterviews().remove(jobInterview);
		jobInterview.setEmployee(null);

		return jobInterview;
	}


}