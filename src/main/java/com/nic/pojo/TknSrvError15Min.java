package com.nic.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TknSrvError15Min {
	private long errId;
	private String date;
	private String timeIn;
	private String timeOut;
	private long token1Err;
	private long token2Err;
	private long token3Err;
	private long token4Err;
	private long token5Err;
	private long token6Err;
	private long token7Err;
	private long token8Err;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getErrId() {
		return errId;
	}

	public void setErrId(Long errId) {
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

	public long getToken1Err() {
		return token1Err;
	}

	public void setToken1Err(long token1Err) {
		this.token1Err = token1Err;
	}

	public long getToken2Err() {
		return token2Err;
	}

	public void setToken2Err(long token2Err) {
		this.token2Err = token2Err;
	}

	public long getToken3Err() {
		return token3Err;
	}

	public void setToken3Err(long token3Err) {
		this.token3Err = token3Err;
	}

	public long getToken4Err() {
		return token4Err;
	}

	public void setToken4Err(long token4Err) {
		this.token4Err = token4Err;
	}

	public long getToken5Err() {
		return token5Err;
	}

	public void setToken5Err(long token5Err) {
		this.token5Err = token5Err;
	}

	public long getToken6Err() {
		return token6Err;
	}

	public void setToken6Err(long token6Err) {
		this.token6Err = token6Err;
	}

	public long getToken7Err() {
		return token7Err;
	}

	public void setToken7Err(long token7Err) {
		this.token7Err = token7Err;
	}

	public long getToken8Err() {
		return token8Err;
	}

	public void setToken8Err(long token8Err) {
		this.token8Err = token8Err;
	}

	public void setErrId(long errId) {
		this.errId = errId;
	}

}
