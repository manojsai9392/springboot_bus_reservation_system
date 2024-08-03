package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer,String>
{
	@Query("select e from Customer e where e.email=?1 and e.password=?2")
	public Customer checkemplogin(String email,String pwd);
}
