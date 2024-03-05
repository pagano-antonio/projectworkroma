package com.model;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;

/**
 * The persistent class for the company_client database table.
 * 
 */
@Entity
@Table(name = "company_client")
@NamedQuery(name = "CompanyClient.findAll", query = "SELECT c FROM CompanyClient c")
public class CompanyClient implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idCompanyClient;

	private String address;

	private String city;

	private String name;

	public CompanyClient() {
	}

	public int getIdCompanyClient() {
		return this.idCompanyClient;
	}

	public void setIdCompanyClient(int idCompanyClient) {
		this.idCompanyClient = idCompanyClient;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}