package com.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
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

	private int idJobOffer;

	private int idSkill;

	public JobOfferSkill() {
	}

	public int getIdJobOfferSkill() {
		return this.idJobOfferSkill;
	}

	public void setIdJobOfferSkill(int idJobOfferSkill) {
		this.idJobOfferSkill = idJobOfferSkill;
	}

	public int getIdJobOffer() {
		return this.idJobOffer;
	}

	public void setIdJobOffer(int idJobOffer) {
		this.idJobOffer = idJobOffer;
	}

	public int getIdSkill() {
		return this.idSkill;
	}

	public void setIdSkill(int idSkill) {
		this.idSkill = idSkill;
	}

}