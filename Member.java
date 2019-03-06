package mypage.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Member implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String memCode;
	private String memUserid;
	private String memPasswd;
	private String memName;
	private Date memBirth;
	private String memGender;
	private String memPhone;
	private String memEmail;
	private String memAddr1;
	private String memAddr2;
	private Date memEnrolldate;
	private int memPoint;
	private int memCoupon;
	private String gradeCode;
	
	public Member() {}

	public Member(int memCode, String memUserid, String memPasswd, String memName, int memBirth, String memGender,
			String memPhone, String memEmail, String memAddr1, String memAddr2, Date memEnrolldate, int memPoint,
			int memCoupon, String gradeCode) {
		super();
		this.memCode = memCode;
		this.memUserid = memUserid;
		this.memPasswd = memPasswd;
		this.memName = memName;
		this.memBirth = memBirth;
		this.memGender = memGender;
		this.memPhone = memPhone;
		this.memEmail = memEmail;
		this.memAddr1 = memAddr1;
		this.memAddr2 = memAddr2;
		this.memEnrolldate = memEnrolldate;
		this.memPoint = memPoint;
		this.memCoupon = memCoupon;
		this.gradeCode = gradeCode;
	}
	
	public Member(String memUserid, String memPasswd, String memName, int memBirth, String memGender,
			String memPhone, String memEmail, String memAddr1, String memAddr2, Date memEnrolldate, int memPoint,
			int memCoupon, String gradeCode) {
		super();
		this.memUserid = memUserid;
		this.memPasswd = memPasswd;
		this.memName = memName;
		this.memBirth = memBirth;
		this.memGender = memGender;
		this.memPhone = memPhone;
		this.memEmail = memEmail;
		this.memAddr1 = memAddr1;
		this.memAddr2 = memAddr2;
		this.memEnrolldate = memEnrolldate;
		this.memPoint = memPoint;
		this.memCoupon = memCoupon;
		this.gradeCode = gradeCode;
	}

	public int getMemCode() {
		return memCode;
	}

	public void setMemCode(int memCode) {
		this.memCode = memCode;
	}

	public String getMemUserid() {
		return memUserid;
	}

	public void setMemUserid(String memUserid) {
		this.memUserid = memUserid;
	}

	public String getMemPasswd() {
		return memPasswd;
	}

	public void setMemPasswd(String memPasswd) {
		this.memPasswd = memPasswd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public int getMemBirth() {
		return memBirth;
	}

	public void setMemBirth(int memBirth) {
		this.memBirth = memBirth;
	}

	public String getMemGender() {
		return memGender;
	}

	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemAddr1() {
		return memAddr1;
	}

	public void setMemAddr1(String memAddr1) {
		this.memAddr1 = memAddr1;
	}

	public String getMemAddr2() {
		return memAddr2;
	}

	public void setMemAddr2(String memAddr2) {
		this.memAddr2 = memAddr2;
	}

	public Date getMemEnrolldate() {
		return memEnrolldate;
	}

	public void setMemEnrolldate(Date memEnrolldate) {
		this.memEnrolldate = memEnrolldate;
	}

	public int getMemPoint() {
		return memPoint;
	}

	public void setMemPoint(int memPoint) {
		this.memPoint = memPoint;
	}

	public int getMemCoupon() {
		return memCoupon;
	}

	public void setMemCoupon(int memCoupon) {
		this.memCoupon = memCoupon;
	}

	public String getGradeCode() {
		return gradeCode;
	}

	public void setGradeCode(String gradeCode) {
		this.gradeCode = gradeCode;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return this.memCode + ", " + this.memUserid + ", "
			+ this.memPasswd + ", " + this.memName + ", "
			+ this.memBirth + ", " + this.memGender + ", "
			+ this.memPhone + ", " + this.memEmail + ", "
			+ this.memAddr1 + ", " + this.memAddr2 + ", "
			+ this.memEnrolldate + ", " + this.memPoint + ", " + this.memCoupon + ", "
			+ this.gradeCode;
	}	
}










