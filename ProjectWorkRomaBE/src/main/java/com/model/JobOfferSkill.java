package com.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 * The persistent class for the job_offer_skill database table.
 * 
 */
@Entity
@Table(name = "job_offer_skill")
@NamedQuery(name = "JobOfferSkill.findAll", query = "SELECT j FROM JobOfferSkill j")
public class JobOfferSkill implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idJobOfferSkill;

	// bi-directional many-to-one association to JobOffer
	@ManyToOne
	@JoinColumn(name = "idJobOffer")
	private JobOffer jobOffer;

	// bi-directional many-to-one association to Skill
	@ManyToOne
	@JoinColumn(name = "idSkill")
	private Skill skill;

	public JobOfferSkill() {
	}

	public int getIdJobOfferSkill() {
		return this.idJobOfferSkill;
	}

	public void setIdJobOfferSkill(int idJobOfferSkill) {
		this.idJobOfferSkill = idJobOfferSkill;
	}

	public JobOffer getJobOffer() {
		return this.jobOffer;
	}

	public void setJobOffer(JobOffer jobOffer) {
		this.jobOffer = jobOffer;
	}

	public Skill getSkill() {
		return this.skill;
	}

	public void setSkill(Skill skill) {
		this.skill = skill;
	}

}