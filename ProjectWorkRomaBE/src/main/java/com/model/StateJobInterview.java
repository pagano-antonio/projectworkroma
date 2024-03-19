package com.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

/**
 * The persistent class for the state_job_interview database table.
 * 
 */
@Entity
@Table(name = "state_job_interview")
@NamedQuery(name = "StateJobInterview.findAll", query = "SELECT s FROM StateJobInterview s")
public class StateJobInterview implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idStateJobInterview;

	private String description;

	private String title;

	// bi-directional many-to-one association to JobInterview
	@OneToMany(mappedBy = "stateJobInterview", cascade = CascadeType.ALL)
	private List<JobInterview> jobInterviews;

	public StateJobInterview() {
	}

	public int getIdStateJobInterview() {
		return this.idStateJobInterview;
	}

	public void setIdStateJobInterview(int idStateJobInterview) {
		this.idStateJobInterview = idStateJobInterview;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public List<JobInterview> getJobInterviews() {
		return this.jobInterviews;
	}

	public void setJobInterviews(List<JobInterview> jobInterviews) {
		this.jobInterviews = jobInterviews;
	}

	public JobInterview addJobInterview(JobInterview jobInterview) {
		getJobInterviews().add(jobInterview);
		jobInterview.setStateJobInterview(this);

		return jobInterview;
	}

	public JobInterview removeJobInterview(JobInterview jobInterview) {
		getJobInterviews().remove(jobInterview);
		jobInterview.setStateJobInterview(null);

		return jobInterview;
	}

}