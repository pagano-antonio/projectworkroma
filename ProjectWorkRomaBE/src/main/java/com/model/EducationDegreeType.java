package com.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 * The persistent class for the education_degree_type database table.
 * 
 */
@Entity
@Table(name = "education_degree_type")
@NamedQuery(name = "EducationDegreeType.findAll", query = "SELECT e FROM EducationDegreeType e")
public class EducationDegreeType implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idEducationDegreeType;

	private String description;

	public EducationDegreeType() {
	}

	public int getIdEducationDegreeType() {
		return this.idEducationDegreeType;
	}

	public void setIdEducationDegreeType(int idEducationDegreeType) {
		this.idEducationDegreeType = idEducationDegreeType;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}