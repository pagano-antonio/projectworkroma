package com.model;

import java.io.Serializable;
import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;


/**
 * The persistent class for the work_experience database table.
 * 
 */
@Entity
@Table(name = "work_experience")
@NamedQuery(name = "WorkExperience.findAll", query = "SELECT w FROM WorkExperience w")
public class WorkExperience implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idWorkExperience;
	
	@Column(name = "city")
	private String city2;

	private String company;
	@Column(name = "description")
	private String description2;

	private Date endDate;

	private Date startDate;
	@Column(name = "title")
	private String title2;

	// bi-directional many-to-one association to Candidate
	@ManyToOne
	@JoinColumn(name = "idCandidate")
	private Candidate candidate;

	public WorkExperience() {
	}

	public int getIdWorkExperience() {
		return this.idWorkExperience;
	}

	public void setIdWorkExperience(int idWorkExperience) {
		this.idWorkExperience = idWorkExperience;
	}

	public String getCity2() {
		return this.city2;
	}

	public void setCity2(String city2) {
		this.city2 = city2;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getDescription2() {
		return this.description2;
	}

	public void setDescription2(String description2) {
		this.description2 = description2;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getTitle2() {
		return this.title2;
	}

	public void setTitle2(String title2) {
		this.title2 = title2;
	}

	public Candidate getCandidate() {
		return this.candidate;
	}

	public void setCandidate(Candidate candidate) {
		this.candidate = candidate;
	}

}