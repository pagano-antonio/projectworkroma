package com.model;

import java.io.Serializable;

import jakarta.persistence.Column;
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
	private int id;

	@Column(name = "id_job_offer")
	private int idJobOffer;

	@Column(name = "id_skill")
	private int idSkill;

	public JobOfferSkill() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
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