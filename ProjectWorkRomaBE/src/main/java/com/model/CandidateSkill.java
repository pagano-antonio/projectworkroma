package com.model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 * The persistent class for the candidate_skill database table.
 * 
 */
@Entity
@Table(name = "candidate_skill")
@NamedQuery(name = "CandidateSkill.findAll", query = "SELECT c FROM CandidateSkill c")
public class CandidateSkill implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Column(name = "id_candidate")
	private int idCandidate;

	@Column(name = "id_skill")
	private int idSkill;

	public CandidateSkill() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdCandidate() {
		return this.idCandidate;
	}

	public void setIdCandidate(int idCandidate) {
		this.idCandidate = idCandidate;
	}

	public int getIdSkill() {
		return this.idSkill;
	}

	public void setIdSkill(int idSkill) {
		this.idSkill = idSkill;
	}

}