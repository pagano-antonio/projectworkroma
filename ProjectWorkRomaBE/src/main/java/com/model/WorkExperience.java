package com.model;

import java.io.Serializable;
import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
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

	private String city;

	private String company;

	private String description;

	private Date endDate;

	private int idCandidate;

	private Date startDate;

	private String title;

	public WorkExperience() {
	}

	public int getIdWorkExperience() {
		return this.idWorkExperience;
	}

	public void setIdWorkExperience(int idWorkExperience) {
		this.idWorkExperience = idWorkExperience;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getIdCandidate() {
		return this.idCandidate;
	}

	public void setIdCandidate(int idCandidate) {
		this.idCandidate = idCandidate;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}