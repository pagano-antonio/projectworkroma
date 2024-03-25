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

	@Column(name = "date")
	private Date date2;
	@Column(name = "notes")
	private String notes2;

	private int outcome;

	// bi-directional many-to-one association to Candidate
	@ManyToOne
	@JoinColumn(name = "idCandidate")
	private Candidate candidate;

	// bi-directional many-to-one association to Employee
	@ManyToOne
	@JoinColumn(name = "idEmployee")
	private Employee employee;

	// bi-directional many-to-one association to StateJobInterview
	@ManyToOne
	@JoinColumn(name = "idStateJobInterview")
	private StateJobInterview stateJobInterview;

	public JobInterview() {
	}

	public int getIdJobInterview() {
		return this.idJobInterview;
	}

	public void setIdJobInterview(int idJobInterview) {
		this.idJobInterview = idJobInterview;
	}

	public Date getDate2() {
		return this.date2;
	}

	public void setDate2(Date date2) {
		this.date2 = date2;
	}

	public String getNotes2() {
		return this.notes2;
	}

	public void setNotes2(String notes2) {
		this.notes2 = notes2;
	}

	public int getOutcome() {
		return this.outcome;
	}

	public void setOutcome(int outcome) {
		this.outcome = outcome;
	}

	public Candidate getCandidate() {
		return this.candidate;
	}

	public void setCandidate(Candidate candidate) {
		this.candidate = candidate;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public StateJobInterview getStateJobInterview() {
		return this.stateJobInterview;
	}

	public void setStateJobInterview(StateJobInterview stateJobInterview) {
		this.stateJobInterview = stateJobInterview;
	}

}