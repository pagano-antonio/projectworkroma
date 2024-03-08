package com.model;

import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
	private int idJobInterview;

	@Temporal(TemporalType.DATE)
	private Date date;

	private String notes;

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

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
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