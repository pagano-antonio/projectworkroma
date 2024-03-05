package com.model;

import java.io.Serializable;
import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;

/**
 * The persistent class for the education database table.
 * 
 */
@Entity
@NamedQuery(name = "Education.findAll", query = "SELECT e FROM Education e")
public class Education implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idEducation;

	private Date date;

	private String finalGrade;

	private int idEducationDegreeType;

	private String place;

	private String schoolName;

	public Education() {
	}

	public int getIdEducation() {
		return this.idEducation;
	}

	public void setIdEducation(int idEducation) {
		this.idEducation = idEducation;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getFinalGrade() {
		return this.finalGrade;
	}

	public void setFinalGrade(String finalGrade) {
		this.finalGrade = finalGrade;
	}

	public int getIdEducationDegreeType() {
		return this.idEducationDegreeType;
	}

	public void setIdEducationDegreeType(int idEducationDegreeType) {
		this.idEducationDegreeType = idEducationDegreeType;
	}

	public String getPlace() {
		return this.place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getSchoolName() {
		return this.schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}

}