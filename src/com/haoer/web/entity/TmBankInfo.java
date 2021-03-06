package com.haoer.web.entity;

// Generated 2017-9-3 23:13:54 by Hibernate Tools 4.0.0

import java.math.BigDecimal;
import java.util.Date;

/**
 * TmBankInfo generated by hbm2java
 */
public class TmBankInfo implements java.io.Serializable {

	private Integer id;
	private String bank;
	private Integer billDay;
	private Date dueDate;
	private BigDecimal totalAmount;
	private BigDecimal normalAmount;
	private BigDecimal cashAmount;
	private BigDecimal cashFee;

	public TmBankInfo() {
	}

	public TmBankInfo(String bank, Integer billDay, Date dueDate,
			BigDecimal totalAmount, BigDecimal normalAmount,
			BigDecimal cashAmount, BigDecimal cashFee) {
		this.bank = bank;
		this.billDay = billDay;
		this.dueDate = dueDate;
		this.totalAmount = totalAmount;
		this.normalAmount = normalAmount;
		this.cashAmount = cashAmount;
		this.cashFee = cashFee;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBank() {
		return this.bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public Integer getBillDay() {
		return this.billDay;
	}

	public void setBillDay(Integer billDay) {
		this.billDay = billDay;
	}

	public Date getDueDate() {
		return this.dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public BigDecimal getTotalAmount() {
		return this.totalAmount;
	}

	public void setTotalAmount(BigDecimal totalAmount) {
		this.totalAmount = totalAmount;
	}

	public BigDecimal getNormalAmount() {
		return this.normalAmount;
	}

	public void setNormalAmount(BigDecimal normalAmount) {
		this.normalAmount = normalAmount;
	}

	public BigDecimal getCashAmount() {
		return this.cashAmount;
	}

	public void setCashAmount(BigDecimal cashAmount) {
		this.cashAmount = cashAmount;
	}

	public BigDecimal getCashFee() {
		return this.cashFee;
	}

	public void setCashFee(BigDecimal cashFee) {
		this.cashFee = cashFee;
	}

}
