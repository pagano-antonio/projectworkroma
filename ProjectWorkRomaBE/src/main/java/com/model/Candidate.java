package com.model;

import java.io.Serializable;
import java.math.BigInteger;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;

/**
 * The persistent class for the candidate database table.
 * 
 */
@NamedQuery(name = "Candidate.findAll", query = "SELECT c FROM Candidate c")
@Entity
public class Candidate implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String address;

	@Column(name = "birth_place")
	private String birthPlace;

	private int birthday;

	private String city;

	private String email;

	private String name;

	private BigInteger phone;

	private String surname;

	public Candidate() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthPlace() {
		return this.birthPlace;
	}

	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}

	public int getBirthday() {
		return this.birthday;
	}

	public void setBirthday(int birthday) {
		this.birthday = birthday;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigInteger getPhone() {
		return this.phone;
	}

	public void setPhone(BigInteger phone) {
		this.phone = phone;
	}

	public String getSurname() {
		return this.surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

}