package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "cus_table")
public class Customer
{
	@Id
	@Column(name="customer_email")
    private String email;
   @Column(name="customer_username",nullable=false,unique = true,length = 50)
    private String username;
   @Column(name="customer_password",nullable=false,length = 30)
    private String password;
   @Column(name="customer_contactno",nullable=false,unique = true)
   private String contactno;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	@Override
	public String toString() {
		return "Customer [email=" + email + ", username=" + username + ", password=" + password + ", contactno="
				+ contactno + "]";
	}
	
    
 }
