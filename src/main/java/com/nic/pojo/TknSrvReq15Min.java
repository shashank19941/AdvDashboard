package com.nic.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class TknSrvReq15Min {
	private long tokenId;
	private String date;
	private String timeIn;
	private String timeOut;
	private long token1Req;
	private long token2Req;
	private long token3Req;
	private long token4Req;
	private long token5Req;
	private long token6Req;
	private long token7Req;
	private long token8Req;

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

	public long getToken1Req() {
		return token1Req;
	}

	public void setToken1Req(long token1Req) {
		this.token1Req = token1Req;
	}

	public long getToken2Req() {
		return token2Req;
	}

	public void setToken2Req(long token2Req) {
		this.token2Req = token2Req;
	}

	public long getToken3Req() {
		return token3Req;
	}

	public void setToken3Req(long token3Req) {
		this.token3Req = token3Req;
	}

	public long getToken4Req() {
		return token4Req;
	}

	public void setToken4Req(long token4Req) {
		this.token4Req = token4Req;
	}

	public long getToken5Req() {
		return token5Req;
	}

	public void setToken5Req(long token5Req) {
		this.token5Req = token5Req;
	}

	public long getToken6Req() {
		return token6Req;
	}

	public void setToken6Req(long token6Req) {
		this.token6Req = token6Req;
	}

	public long getToken7Req() {
		return token7Req;
	}

	public void setToken7Req(long token7Req) {
		this.token7Req = token7Req;
	}

	public long getToken8Req() {
		return token8Req;
	}

	public void setToken8Req(long token8Req) {
		this.token8Req = token8Req;
	}

}
