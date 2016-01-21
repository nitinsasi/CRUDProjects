package com.mkyong.controller.BuglistController;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;

@Controller
@RequestMapping("/customer")
public class BuglistController {
	
	@RequestMapping(value="/buglist", method = RequestMethod.GET)
	public String getAddCustomerPage(ModelMap model) {

		return "buglist";

	}
	
	
	@RequestMapping(value="/buglist", method = RequestMethod.POST)
	public ModelAndView add(HttpServletRequest request, ModelMap model) {

		String Priority = request.getParameter("Priority");
		String Issues = request.getParameter("Issues");
		String ReportedBy = request.getParameter("ReportedBy");
		String ReportedDate = request.getParameter("ReportedDate");
		String PersonTesting = request.getParameter("PersonTesting");
		String DueDate = request.getParameter("DueDate");
		String Reviseddate = request.getParameter("Reviseddate");
		String DateIssue = request.getParameter("DateIssue");
		String CorrectedDate  = request.getParameter("CorrectedDate");
		String Resolvedby = request.getParameter("Resolvedby");
		String Tester = request.getParameter("Tester");
		String Status = request.getParameter("Status");
		String DateReTestedbyTester = request.getParameter("DateReTestedbyTester");
		String Outcome = request.getParameter("Outcome");
		String Comments = request.getParameter("Comments");
	    Key customerKey = KeyFactory.createKey("buglistCustomer", Priority);
	        
		
        Entity customer = new Entity("buglistCustomer", customerKey);
        customer.setProperty("Priority", Priority);
        customer.setProperty("Issues", Issues);
        customer.setProperty("ReportedBy", ReportedBy);
        customer.setProperty("ReportedDate", ReportedDate);
        customer.setProperty("PersonTesting", PersonTesting);
        customer.setProperty("DueDate", DueDate);
        customer.setProperty("Reviseddate", Reviseddate);
        
        customer.setProperty("DateIssue", DateIssue);
        customer.setProperty("CorrectedDate", CorrectedDate);
        customer.setProperty("Resolvedby", Resolvedby);
        customer.setProperty("Tester", Tester);
        customer.setProperty("Status", Status);
        customer.setProperty("DateReTestedbyTester", DateReTestedbyTester);
        customer.setProperty("Outcome", Outcome);
        customer.setProperty("Comments", Comments);
        


        DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
        datastore.put(customer);
        
        return new ModelAndView("redirect:list2");
        
	}
		
	
	@RequestMapping(value="/update1/{Priority}", method = RequestMethod.GET)
	public String getUpdateCustomerPage(@PathVariable String Priority, 
			HttpServletRequest request, ModelMap model) {

		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Query query = new Query("buglistCustomer");
		query.addFilter("Priority", FilterOperator.EQUAL, Priority);
		PreparedQuery pq = datastore.prepare(query);
		
		Entity e = pq.asSingleEntity();
		model.addAttribute("customer",  e);
		System.out.println("customer");
		return "update1";

	}
	
	@RequestMapping(value="/update1", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request, ModelMap model) {

		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		 
		String Priority = request.getParameter("Priority");
		String Issues = request.getParameter("Issues");
		String ReportedBy = request.getParameter("ReportedBy");
		String ReportedDate = request.getParameter("ReportedDate");
		String PersonTesting = request.getParameter("PersonTesting");
		String DueDate = request.getParameter("DueDate");
		String Reviseddate = request.getParameter("Reviseddate");
		String DateIssue = request.getParameter("DateIssue");
		String CorrectedDate  = request.getParameter("CorrectedDate");
		String Resolvedby = request.getParameter("Resolvedby");
		String Tester = request.getParameter("Tester");
		String Status = request.getParameter("Status");
		String DateReTestedbyTester = request.getParameter("DateReTestedbyTester");
		String Outcome = request.getParameter("Outcome");
		String Comments = request.getParameter("Comments");
	    
		String originalName =  request.getParameter("originalName");
		
		Query query = new Query("buglistCustomer");
		query.addFilter("Priority", FilterOperator.EQUAL, originalName);
		PreparedQuery pq = datastore.prepare(query);
		Entity customer = pq.asSingleEntity();
		
		customer.setProperty("Priority", Priority);
        customer.setProperty("Issues", Issues);
        customer.setProperty("ReportedBy", ReportedBy);
        customer.setProperty("ReportedDate", ReportedDate);
        customer.setProperty("PersonTesting", PersonTesting);

        customer.setProperty("DueDate", DueDate);
        customer.setProperty("Reviseddate", Reviseddate);
        customer.setProperty("DateIssue", DateIssue);
        customer.setProperty("CorrectedDate", CorrectedDate);
        customer.setProperty("Resolvedby", Resolvedby);
        customer.setProperty("Tester", Tester);
        customer.setProperty("Status", Status);
        customer.setProperty("DateReTestedbyTester", DateReTestedbyTester);
        customer.setProperty("Outcome", Outcome);
        customer.setProperty("Comments", Comments);
        


        datastore.put(customer);
        
        //return to list
        return new ModelAndView("redirect:list2");
        
	}
		
	@RequestMapping(value="/delete/{Priority}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String Priority,
			HttpServletRequest request, ModelMap model) {

        DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
        
        Query query = new Query("buglistCustomer");
		query.addFilter("Priority", FilterOperator.EQUAL, Priority);
		PreparedQuery pq = datastore.prepare(query);
		Entity customer = pq.asSingleEntity();
		
        datastore.delete(customer.getKey());
        
        //return to list
        return new ModelAndView("redirect:../list2");
        
	}
	
	
	//get all customers
	@RequestMapping(value="/list2", method = RequestMethod.GET)
	public String listCustomer(ModelMap model) {

		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Query query = new Query("buglistCustomer").addSort("Priority", Query.SortDirection.DESCENDING);
	    List<Entity> customersbug = datastore.prepare(query).asList(FetchOptions.Builder.withLimit(10));
	    
	    model.addAttribute("customerList",  customersbug);
	    
		return "list2";

	}
	

	
	}