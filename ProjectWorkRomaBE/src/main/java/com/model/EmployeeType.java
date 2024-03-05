package com.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
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
	private int id;

	private String description;

	public EmployeeType() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}