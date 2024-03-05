package com.model;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

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
	private int id;

	@Temporal(TemporalType.DATE)
	private Date date;

	@Column(name = "id_candidate")
	private int idCandidate;

	@Column(name = "id_employee")
	private int idEmployee;

	@Column(name = "id_state_job_interview")
	private int idStateJobInterview;

	private String notes;

	private int outcome;

	public JobInterview() {
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