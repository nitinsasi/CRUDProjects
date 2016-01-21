package com.mkyong.controller.EnhancementController;


import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/customer")
public class EnhancementController {
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value="/sendEmail", method = RequestMethod.GET)
	public String getAddCustomerPage(ModelMap model) {

		return "EnhancementForm";

	}
	
	
	@RequestMapping(value="/sendEmail", method = RequestMethod.POST)
	public ModelAndView add(HttpServletRequest request, ModelMap model) {

		String ProjectName = request.getParameter("ProjectName");
		String Assignee = request.getParameter("Assignee");
		String EnhancementRequest = request.getParameter("EnhancementRequest");
		String RequesterName = request.getParameter("RequesterName");
		String LeadName = request.getParameter("LeadName");
		String LeadApproval = request.getParameter("LeadApproval");
		
		// prints debug info
		System.out.println("Subject: " + ProjectName);
		System.out.println("Subject: " + Assignee);
		System.out.println("Message: " + EnhancementRequest);
		System.out.println("To: " + RequesterName);
		System.out.println("To: " + LeadName);
		System.out.println("To: " + LeadApproval);
		
		// creates a simple e-mail object
		SimpleMailMessage email = new SimpleMailMessage();
		email.setSubject(ProjectName);
		email.setSubject(Assignee);
		email.setText(EnhancementRequest);
		email.setTo(RequesterName);
		email.setTo(LeadName);
		email.setTo(LeadApproval);
		
		
		
		System.out.println("Subject: " + ProjectName);
		System.out.println("Subject: " + Assignee);
		System.out.println("Message: " + EnhancementRequest);
		System.out.println("To: " + RequesterName);
		System.out.println("To: " + LeadName);
		System.out.println("To: " + LeadApproval);
		// sends the e-mail
		mailSender.send(email);
		
		// forwards to the view named "Result"
		return new ModelAndView("redirect:Result");
	}}