package com.nic.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TknSrvResp {
	private long tokenId;
	private String date;
	private String timeIn;
	private String timeOut;
	private long token1Resp;
	private long token2Resp;
	private long token3Resp;
	private long token4Resp;
	private long token5Resp;
	private long token6Resp;
	private long token7Resp;
	private long token8Resp;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getTokenId() {
		return tokenId;
	}

	public void setTokenId(long tokenId) {
		this.tokenId = tokenId;
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

	public long getToken1Resp() {
		return token1Resp;
	}

	public void setToken1Resp(long token1Resp) {
		this.token1Resp = token1Resp;
	}

	public long getToken2Resp() {
		return token2Resp;
	}

	public void setToken2Resp(long token2Resp) {
		this.token2Resp = token2Resp;
	}

	public long getToken3Resp() {
		return token3Resp;
	}

	public void setToken3Resp(long token3Resp) {
		this.token3Resp = token3Resp;
	}

	public long getToken4Resp() {
		return token4Resp;
	}

	public void setToken4Resp(long token4Resp) {
		this.token4Resp = token4Resp;
	}

	public long getToken5Resp() {
		return token5Resp;
	}

	public void setToken5Resp(long token5Resp) {
		this.token5Resp = token5Resp;
	}

	public long getToken6Resp() {
		return token6Resp;
	}

	public void setToken6Resp(long token6Resp) {
		this.token6Resp = token6Resp;
	}

	public long getToken7Resp() {
		return token7Resp;
	}

	public void setToken7Resp(long token7Resp) {
		this.token7Resp = token7Resp;
	}

	public long getToken8Resp() {
		return token8Resp;
	}

	public void setToken8Resp(long token8Resp) {
		this.token8Resp = token8Resp;
	}

}
