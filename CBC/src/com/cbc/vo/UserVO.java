package com.cbc.vo;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserVO {
private String login,password,fname,lname,gender,role,email,address,city,age,number,zip,country,fundgroupname;
private Double amount;
public Double getAmount() {
	return amount;
}
public void setAmount(Double amount) {
	this.amount = amount;
}
public String getFundgroupname() {
	return fundgroupname;
}
public void setFundgroupname(String fundgroupname) {
	this.fundgroupname = fundgroupname;
}
public String getDate() {
	DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
	Date date = new Date();
	String h=dateFormat.format(date); //2014/08/06 15:59:48
	//System.out.println(d.toString());
	return h;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}

public String getLogin() {
	return login;
}

public void setLogin(String login) {
	this.login = login;
}



public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getLname() {
	return lname;
}

public void setLname(String lname) {
	this.lname = lname;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getAge() {
	return age;
}

public void setAge(String age) {
	this.age = age;
}

public String getNumber() {
	return number;
}

public void setNumber(String number) {
	this.number = number;
}

public String getZip() {
	return zip;
}

public void setZip(String zip) {
	this.zip = zip;
}







}
