package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Bus;
import com.klef.jfsd.springboot.model.Customer;

public interface CustomerService 
{

	public String addcustomer(Customer cus);
	public Customer checkemplogin(String email,String pwd);
	public List<Customer> viewallcustomers();
	public String deletecus(String eid);
}
