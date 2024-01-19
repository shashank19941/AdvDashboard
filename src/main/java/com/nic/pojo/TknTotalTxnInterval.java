package com.nic.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TknTotalTxnInterval {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long txnId;
	private String date;
	private String timeIn;
	private String timeOut;
	private String totalTxnPerInterval;
	private String txnPerInterval;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public long getTxnId() {
		return txnId;
	}

	public void setTxnId(long txnId) {
		this.txnId = txnId;
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

	public String getTotalTxnPerInterval() {
		return totalTxnPerInterval;
	}

	public void setTotalTxnPerInterval(String totalTxnPerInterval) {
		this.totalTxnPerInterval = totalTxnPerInterval;
	}

	public String getTxnPerInterval() {
		return txnPerInterval;
	}

	public void setTxnPerInterval(String txnPerInterval) {
		this.txnPerInterval = txnPerInterval;
	}

}
