package com.nic.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TknSrvErrorCategories {
	private long errId;
	private String date;
	private String timeIn;
	private String timeOut;
	private String advError;
	private String invalidaadhaarnumber;
	private String ipaddressisnotwhitelisted;
	private String invalidauthkey;
	private String invalidinputdata;
	private String invalidjwttoken;
	private String expiredjwttoken;
	private String incorrectusernameorpassword;
	private String invalidjwtsignature;
	private String tokennotexistinvault;
	private String failedvalidatejwttoken;
	private String failedtoprocessbulktokenreq;

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

	public String getAdvError() {
		return advError;
	}

	public void setAdvError(String advError) {
		this.advError = advError;
	}

	public String getInvalidaadhaarnumber() {
		return invalidaadhaarnumber;
	}

	public void setInvalidaadhaarnumber(String invalidaadhaarnumber) {
		this.invalidaadhaarnumber = invalidaadhaarnumber;
	}

	public String getIpaddressisnotwhitelisted() {
		return ipaddressisnotwhitelisted;
	}

	public void setIpaddressisnotwhitelisted(String ipaddressisnotwhitelisted) {
		this.ipaddressisnotwhitelisted = ipaddressisnotwhitelisted;
	}

	public String getInvalidauthkey() {
		return invalidauthkey;
	}

	public void setInvalidauthkey(String invalidauthkey) {
		this.invalidauthkey = invalidauthkey;
	}

	public String getInvalidinputdata() {
		return invalidinputdata;
	}

	public void setInvalidinputdata(String invalidinputdata) {
		this.invalidinputdata = invalidinputdata;
	}

	public String getInvalidjwttoken() {
		return invalidjwttoken;
	}

	public void setInvalidjwttoken(String invalidjwttoken) {
		this.invalidjwttoken = invalidjwttoken;
	}

	public String getExpiredjwttoken() {
		return expiredjwttoken;
	}

	public void setExpiredjwttoken(String expiredjwttoken) {
		this.expiredjwttoken = expiredjwttoken;
	}

	public String getIncorrectusernameorpassword() {
		return incorrectusernameorpassword;
	}

	public void setIncorrectusernameorpassword(String incorrectusernameorpassword) {
		this.incorrectusernameorpassword = incorrectusernameorpassword;
	}

	public String getInvalidjwtsignature() {
		return invalidjwtsignature;
	}

	public void setInvalidjwtsignature(String invalidjwtsignature) {
		this.invalidjwtsignature = invalidjwtsignature;
	}

	public String getTokennotexistinvault() {
		return tokennotexistinvault;
	}

	public void setTokennotexistinvault(String tokennotexistinvault) {
		this.tokennotexistinvault = tokennotexistinvault;
	}

	public String getFailedvalidatejwttoken() {
		return failedvalidatejwttoken;
	}

	public void setFailedvalidatejwttoken(String failedvalidatejwttoken) {
		this.failedvalidatejwttoken = failedvalidatejwttoken;
	}

	public String getFailedtoprocessbulktokenreq() {
		return failedtoprocessbulktokenreq;
	}

	public void setFailedtoprocessbulktokenreq(String failedtoprocessbulktokenreq) {
		this.failedtoprocessbulktokenreq = failedtoprocessbulktokenreq;
	}


}
