package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
	private CustomerRepository customerRepository;
	

	@Override
	public String addcustomer(Customer cus) {
		customerRepository.save(cus);
		return "Customer Added Succesfully";
	}


	@Override
	public Customer checkemplogin(String email, String pwd) 
	{
		return customerRepository.checkemplogin(email, pwd);
	}


	@Override
	public List<Customer> viewallcustomers() 
	{
		return customerRepository.findAll();
	}


	@Override
	public String deletecus(String eid) {
		Optional<Customer> obj =  customerRepository.findById(eid);
	       
	       String msg = null;
	       
	       if(obj.isPresent())
	       {
	         Customer cus = obj.get();
	         
	        customerRepository.delete(cus);
	         
	         msg = "Customer Deleted Successfully";
	       }
	       else
	       {
	         msg = "Customer Not Found";
	       }
	       
	       return msg;
	}

}
