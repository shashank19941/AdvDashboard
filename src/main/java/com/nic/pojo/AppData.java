package com.nic.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AppData {
	private long id;
	private String applicationCode;
	private String date;
	private String timeIn;
	private String timeOut;
	private String tokenRequest;
	private String tokenTokensIssued;
	private String tokenAlreadyExi;
	private String jwtRequest;
	private String jwtResponse;
	private String detokenRequest;
	private String detokenResponse;
	
	
	
	private String checkUID;
	private String error;
	private String errorByUser;
	private String totalRecords;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getApplicationCode() {
		return applicationCode;
	}

	public void setApplicationCode(String applicationCode) {
		this.applicationCode = applicationCode;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTimeIn() {
		return timeIn;
	}

	public void setTimeIn(String timeIn) {
		this.timeIn = timeIn;
	}

	public String getTimeOut() {
		return timeOut;
	}

	public void setTimeOut(String timeOut) {
		this.timeOut = timeOut;
	}

	public String getTokenRequest() {
		return tokenRequest;
	}

	public void setTokenRequest(String tokenRequest) {
		this.tokenRequest = tokenRequest;
	}

	public String getTokenTokensIssued() {
		return tokenTokensIssued;
	}

	public void setTokenTokensIssued(String tokenTokensIssued) {
		this.tokenTokensIssued = tokenTokensIssued;
	}

	public String getTokenAlreadyExi() {
		return tokenAlreadyExi;
	}

	public void setTokenAlreadyExi(String tokenAlreadyExi) {
		this.tokenAlreadyExi = tokenAlreadyExi;
	}
	public String getJwtRequest() {
		return jwtRequest;
	}

	public void setJwtRequest(String jwtRequest) {
		this.jwtRequest = jwtRequest;
	}

	public String getJwtResponse() {
		return jwtResponse;
	}

	public void setJwtResponse(String jwtResponse) {
		this.jwtResponse = jwtResponse;
	}

	public String getDetokenRequest() {
		return detokenRequest;
	}

	public void setDetokenRequest(String detokenRequest) {
		this.detokenRequest = detokenRequest;
	}

	public String getDetokenResponse() {
		return detokenResponse;
	}

	public void setDetokenResponse(String detokenResponse) {
		this.detokenResponse = detokenResponse;
	}

	public String getCheckUID() {
		return checkUID;
	}

	public void setCheckUID(String checkUID) {
		this.checkUID = checkUID;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getErrorByUser() {
		return errorByUser;
	}

	public void setErrorByUser(String errorByUser) {
		this.errorByUser = errorByUser;
	}

	public String getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(String totalRecords) {
		this.totalRecords = totalRecords;
	}

}
