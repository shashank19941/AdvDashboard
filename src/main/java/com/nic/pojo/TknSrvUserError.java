package com.nic.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TknSrvUserError {
	private long errId;
	private String date;
	private String timeIn;
	private String timeOut;
	private long token1UserErr;
	private long token2UserErr;
	private long token3UserErr;
	private long token4UserErr;
	private long token5UserErr;
	private long token6UserErr;
	private long token7UserErr;
	private long token8UserErr;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getErrId() {
		return errId;
	}

	public void setErrId(long errId) {
		this.errId = errId;
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

	public long getToken1UserErr() {
		return token1UserErr;
	}

	public void setToken1UserErr(long token1UserErr) {
		this.token1UserErr = token1UserErr;
	}

	public long getToken2UserErr() {
		return token2UserErr;
	}

	public void setToken2UserErr(long token2UserErr) {
		this.token2UserErr = token2UserErr;
	}

	public long getToken3UserErr() {
		return token3UserErr;
	}

	public void setToken3UserErr(long token3UserErr) {
		this.token3UserErr = token3UserErr;
	}

	public long getToken4UserErr() {
		return token4UserErr;
	}

	public void setToken4UserErr(long token4UserErr) {
		this.token4UserErr = token4UserErr;
	}

	public long getToken5UserErr() {
		return token5UserErr;
	}

	public void setToken5UserErr(long token5UserErr) {
		this.token5UserErr = token5UserErr;
	}

	public long getToken6UserErr() {
		return token6UserErr;
	}

	public void setToken6UserErr(long token6UserErr) {
		this.token6UserErr = token6UserErr;
	}

	public long getToken7UserErr() {
		return token7UserErr;
	}

	public void setToken7UserErr(long token7UserErr) {
		this.token7UserErr = token7UserErr;
	}

	public long getToken8UserErr() {
		return token8UserErr;
	}

	public void setToken8UserErr(long token8UserErr) {
		this.token8UserErr = token8UserErr;
	}

}
