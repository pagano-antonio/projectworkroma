package com.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 * The persistent class for the id_employee database table.
 * 
 */
@Entity
@Table(name = "employee")

//@NamedQuery(name = "employee.findAll", query = "SELECT i FROM employee i")

public class Employee implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idEmployee;

	private int idEmployeeType;

	private String password;

	private String username;

	public Employee() {
	}

	public int getIdEmployee() {
		return this.idEmployee;
	}

	public void setIdEmployee(int idEmployee) {
		this.idEmployee = idEmployee;
	}

	public int getIdEmployeeType() {
		return this.idEmployeeType;
	}

	public void setIdEmployeeType(int idEmployeeType) {
		this.idEmployeeType = idEmployeeType;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}