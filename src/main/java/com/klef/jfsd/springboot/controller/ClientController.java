package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Bus;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BusService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.EmailService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class ClientController 
{
	@Autowired
	private CustomerService customerService;

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private BusService busService;
	
	@Autowired
	 private EmailService emailService;
	
	@GetMapping("/")
	public String main()

	{
		return "home";
	}
	
	@GetMapping("signup")
	   public ModelAndView empregistration()

	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("signup");
	     return mv;
	   }
	
	@GetMapping("login")
	public ModelAndView cuslogin()

	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("login");
	     return mv;
	   }
	
	
    @PostMapping("insertcus")
	public ModelAndView insertaction(HttpServletRequest request)

	{
		ModelAndView mv = new ModelAndView();
		
		
		try
		{
			String email = request.getParameter("email");
			String username = request.getParameter("username");
			String pwd = request.getParameter("password");
			String contact = request.getParameter("contact");
			
			Customer cus = new Customer();
			
		       cus.setEmail(email);
		       cus.setUsername(username);
		       cus.setPassword(pwd);
		       cus.setContactno(contact);
		       
		       
		      customerService.addcustomer(cus);
		      
		      emailService.sendEmail(cus.getEmail(),"BMS BUS RESERVATION","THANKS FOR REGISTERING");
		      
		      
		      mv.setViewName("login");
		      
		      
		      
		}
		catch (Exception e) 
		{
			
	       mv.setViewName("home");
			
		}
		
		return mv;
	}
    
    
    @GetMapping("adminlogin") 
	   public ModelAndView adminlogin()

	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminlogin");
	     return mv;
	   }
    
    
    @PostMapping("checkcuslogin")
	public ModelAndView checkemplogin(HttpServletRequest request)

	{
		ModelAndView mv = new ModelAndView();
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		Customer cus = customerService.checkemplogin(email, pwd);
		
		if(cus!=null)
		{
			
			mv.setViewName("index");
			
		}
		else
		{
			mv.setViewName("signup");
			
		}
		return mv;
	}
    
    @GetMapping("checkcuslogin")
	public ModelAndView viewallcustomer()

	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcustomers");
		
		List<Customer> customerlist = customerService.viewallcustomers();
		mv.addObject("customerdata", customerlist);
		
		return mv;
	}
    
    @PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)

	{
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		
		Admin a = adminService.checkadminlogin(uname, pwd);
		
		ModelAndView mv = new ModelAndView();
		if(a!=null)
		{
			mv.setViewName("adminhome");
			
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
    
    @GetMapping("checkbuses")
	public ModelAndView viewallemps()

	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcus");
		
		List<Bus> cuslist = busService.viewallbus();
		mv.addObject("cusdata", cuslist);
		
		return mv;
	}
    
    @GetMapping("checkallcustomer")
	public ModelAndView viewallcustomers()

	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcustomers");
		
		List<Customer> customerlist = customerService.viewallcustomers();
		mv.addObject("customerdata", customerlist);
		
		return mv;
	}
    
    @GetMapping("customerlogout")
	   public ModelAndView customerlogout()
	   {
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("login");
		   
		   return mv;
	   }
    
    @GetMapping("deletecus")
	   public ModelAndView deleteemp()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("deletecus");
	     
	     List<Customer> cuslist =  customerService.viewallcustomers();
	     
	     mv.addObject("customerdata", cuslist);
	     
	     return mv;
	   }
    
    @GetMapping("delete/{id}")
	public String deleteaction(@PathVariable("id") String eid) 
	{
		customerService.deletecus(eid);
		
		return "redirect:/deletecus";
	}
}
