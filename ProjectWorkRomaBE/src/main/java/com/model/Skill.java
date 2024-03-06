package com.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;

/**
 * The persistent class for the skill database table.
 * 
 */
@Entity
@NamedQuery(name = "Skill.findAll", query = "SELECT s FROM Skill s")
public class Skill implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idSkill;

	private String description;

	private String title;

	// bi-directional many-to-one association to CandidateSkill
	@OneToMany(mappedBy = "skill")
	private List<CandidateSkill> candidateSkills;

	// bi-directional many-to-one association to JobOfferSkill
	@OneToMany(mappedBy = "skill")
	private List<JobOfferSkill> jobOfferSkills;

	public Skill() {
	}

	public int getIdSkill() {
		return this.idSkill;
	}

	public void setIdSkill(int idSkill) {
		this.idSkill = idSkill;
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

	public List<CandidateSkill> getCandidateSkills() {
		return this.candidateSkills;
	}

	public void setCandidateSkills(List<CandidateSkill> candidateSkills) {
		this.candidateSkills = candidateSkills;
	}

	public CandidateSkill addCandidateSkill(CandidateSkill candidateSkill) {
		getCandidateSkills().add(candidateSkill);
		candidateSkill.setSkill(this);

		return candidateSkill;
	}

	public CandidateSkill removeCandidateSkill(CandidateSkill candidateSkill) {
		getCandidateSkills().remove(candidateSkill);
		candidateSkill.setSkill(null);

		return candidateSkill;
	}

	public List<JobOfferSkill> getJobOfferSkills() {
		return this.jobOfferSkills;
	}

	public void setJobOfferSkills(List<JobOfferSkill> jobOfferSkills) {
		this.jobOfferSkills = jobOfferSkills;
	}

	public JobOfferSkill addJobOfferSkill(JobOfferSkill jobOfferSkill) {
		getJobOfferSkills().add(jobOfferSkill);
		jobOfferSkill.setSkill(this);

		return jobOfferSkill;
	}

	public JobOfferSkill removeJobOfferSkill(JobOfferSkill jobOfferSkill) {
		getJobOfferSkills().remove(jobOfferSkill);
		jobOfferSkill.setSkill(null);

		return jobOfferSkill;
	}

}