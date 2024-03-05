package com.model;

import java.io.Serializable;

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
	private int idCandidateSkill;

	private int idCandidate;

	private int idSkill;

	public CandidateSkill() {
	}

	public int getIdCandidateSkill() {
		return this.idCandidateSkill;
	}

	public void setIdCandidateSkill(int idCandidateSkill) {
		this.idCandidateSkill = idCandidateSkill;
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