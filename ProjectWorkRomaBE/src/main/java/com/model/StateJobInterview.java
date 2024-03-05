package com.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
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
	private int idStateInterview;

	private String description;

	private String title;

	public StateJobInterview() {
	}

	public int getIdStateInterview() {
		return this.idStateInterview;
	}

	public void setIdStateInterview(int idStateInterview) {
		this.idStateInterview = idStateInterview;
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

}