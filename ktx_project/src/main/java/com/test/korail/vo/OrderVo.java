package com.test.korail.vo;

public class OrderVo {

	String sstation, sdate, stime, runtime, dstation, reservnum, charnum, id, mid;
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	int price, trainnum, qty, cancel;
	
	
	public int getCancel() {
		return cancel;
	}
	public void setCancel(int cancel) {
		this.cancel = cancel;
	}
	public String getSstation() {
		return sstation;
	}
	public void setSstation(String sstation) {
		this.sstation = sstation;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getStime() {
		return stime;
	}
	public void setStime(String stime) {
		this.stime = stime;
	}
	public String getRuntime() {
		return runtime;
	}
	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDstation() {
		return dstation;
	}
	public void setDstation(String dstation) {
		this.dstation = dstation;
	}
	public String getReservnum() {
		return reservnum;
	}
	public void setReservnum(String reservnum) {
		this.reservnum = reservnum;
	}
	public String getCharnum() {
		return charnum;
	}
	public void setCharnum(String charnum) {
		this.charnum = charnum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getTrainnum() {
		return trainnum;
	}
	public void setTrainnum(int trainnum) {
		this.trainnum = trainnum;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	
}
