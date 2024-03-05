package com.model;

import java.io.Serializable;
import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 * The persistent class for the job_offer database table.
 * 
 */
@Entity
@Table(name = "job_offer")
@NamedQuery(name = "JobOffer.findAll", query = "SELECT j FROM JobOffer j")
public class JobOffer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idJobOffer;

	private String description;

	private Date endDate;

	private int idCompanyClient;

	private int idContractType;

	private int maxRal;

	private int minRal;

	private Date startDate;

	private String title;

	public JobOffer() {
	}

	public int getIdJobOffer() {
		return this.idJobOffer;
	}

	public void setIdJobOffer(int idJobOffer) {
		this.idJobOffer = idJobOffer;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getIdCompanyClient() {
		return this.idCompanyClient;
	}

	public void setIdCompanyClient(int idCompanyClient) {
		this.idCompanyClient = idCompanyClient;
	}

	public int getIdContractType() {
		return this.idContractType;
	}

	public void setIdContractType(int idContractType) {
		this.idContractType = idContractType;
	}

	public int getMaxRal() {
		return this.maxRal;
	}

	public void setMaxRal(int maxRal) {
		this.maxRal = maxRal;
	}

	public int getMinRal() {
		return this.minRal;
	}

	public void setMinRal(int minRal) {
		this.minRal = minRal;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}