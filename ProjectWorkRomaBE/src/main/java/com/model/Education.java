package com.model;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

/**
 * The persistent class for the education database table.
 * 
 */
@Entity
@NamedQuery(name = "Education.findAll", query = "SELECT e FROM Education e")
public class Education implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Temporal(TemporalType.DATE)
	private Date date;

	@Column(name = "final_grade")
	private String finalGrade;

	@Column(name = "id_education_degree_type")
	private int idEducationDegreeType;

	private String place;

	@Column(name = "school_name")
	private String schoolName;

	public Education() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
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