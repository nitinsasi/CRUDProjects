package com.mkyong.controller.WeeklyProgressController;


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
public class WeeklyProgressController {
	
	@RequestMapping(value="/progresslist", method = RequestMethod.GET)
	public String getAddCustomerPage(ModelMap model) {

		return "progresslist";

	}
	
	
	@RequestMapping(value="/progresslist", method = RequestMethod.POST)
	public ModelAndView add(HttpServletRequest request, ModelMap model) {

		String name = request.getParameter("name");
		String projectname = request.getParameter("projectname");
		String percentagecomplete = request.getParameter("percentagecomplete");
		String taskperformed  = request.getParameter("taskperformed");
		
	    Key customerKey = KeyFactory.createKey("Projects", name);
	        
		
        Entity customer = new Entity("Projects", customerKey);
        customer.setProperty("name", name);
        customer.setProperty("projectname", projectname);
        customer.setProperty("percentagecomplete", percentagecomplete);
        customer.setProperty("taskperformed", taskperformed);
        
       

        DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
        datastore.put(customer);
        
        return new ModelAndView("redirect:list");
        
	}
		
	
	
	
	
	@RequestMapping(value="/update/{projectname}", method = RequestMethod.GET)
	public String getUpdateCustomerPage(@PathVariable String projectname, 
			HttpServletRequest request, ModelMap model) {

		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		Query query = new Query("Projects");
		query.addFilter("projectname", FilterOperator.EQUAL, projectname);
		PreparedQuery pq = datastore.prepare(query);
		
		Entity e = pq.asSingleEntity();
		model.addAttribute("customer",  e);
		
		return "update";

	}
	
	@RequestMapping(value="/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request, ModelMap model) {

		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		 
		String name = request.getParameter("name");
		String projectname = request.getParameter("projectname");
		String percentagecomplete = request.getParameter("percentagecomplete");
		String taskperformed  = request.getParameter("taskperformed");
		String originalName =  request.getParameter("originalName");
		
		Query query = new Query("Projects");
		query.addFilter("projectname", FilterOperator.EQUAL, originalName);
		PreparedQuery pq = datastore.prepare(query);
		Entity customer = pq.asSingleEntity();
		
		customer.setProperty("name", name);
        customer.setProperty("projectname", projectname);
        customer.setProperty("percentagecomplete", percentagecomplete);
        customer.setProperty("taskperformed", taskperformed);

        datastore.put(customer);
        
        //return to list
        return new ModelAndView("redirect:list");
        
	}
		
	@RequestMapping(value="/delete/{projectname}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String projectname,
			HttpServletRequest request, ModelMap model) {

        DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
        
        Query query = new Query("Projects");
		query.addFilter("projectname", FilterOperator.EQUAL, projectname);
		PreparedQuery pq = datastore.prepare(query);
		Entity customer = pq.asSingleEntity();
		
        datastore.delete(customer.getKey());
        
        //return to list
        return new ModelAndView("redirect:../list");
        
	}
	
	
	///get all customers
		@RequestMapping(value="/list", method = RequestMethod.GET)
		public String listCustomer(ModelMap model) {

			DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
			Query query = new Query("Projects").addSort("projectname", Query.SortDirection.DESCENDING);
		    List<Entity> customerss = datastore.prepare(query).asList(FetchOptions.Builder.withLimit(10));
		    
		    model.addAttribute("customerList",  customerss);
		    
			return "list";

		}}