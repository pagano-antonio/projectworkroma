package com.model;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 * The persistent class for the job_interview database table.
 * 
 */
@Entity
@Table(name = "job_interview")
@NamedQuery(name = "JobInterview.findAll", query = "SELECT j FROM JobInterview j")
public class JobInterview implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idJobInterview;

	private Date date;

	private int idCandidate;

	private int idEmployee;

	private int idStateJobInterview;

	private String notes;

	private int outcome;

	public JobInterview() {
	}

	public int getIdJobInterview() {
		return this.idJobInterview;
	}

	public void setIdJobInterview(int idJobInterview) {
		this.idJobInterview = idJobInterview;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getIdCandidate() {
		return this.idCandidate;
	}

	public void setIdCandidate(int idCandidate) {
		this.idCandidate = idCandidate;
	}

	public int getIdEmployee() {
		return this.idEmployee;
	}

	public void setIdEmployee(int idEmployee) {
		this.idEmployee = idEmployee;
	}

	public int getIdStateJobInterview() {
		return this.idStateJobInterview;
	}

	public void setIdStateJobInterview(int idStateJobInterview) {
		this.idStateJobInterview = idStateJobInterview;
	}

	public String getNotes() {
		return this.notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public int getOutcome() {
		return this.outcome;
	}

	public void setOutcome(int outcome) {
		this.outcome = outcome;
	}

}