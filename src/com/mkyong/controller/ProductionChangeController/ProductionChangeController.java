package com.mkyong.controller.ProductionChangeController;


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
public class ProductionChangeController {
	
	@RequestMapping(value="/productionchangeform", method = RequestMethod.GET)
	public String getAddCustomerPage(ModelMap model) {

		return "productionchangeform";

	}
	
	
	@RequestMapping(value="/productionchangeform", method = RequestMethod.POST)
	public ModelAndView add(HttpServletRequest request, ModelMap model) {

		String ProjectName = request.getParameter("ProjectName");
		String Assignee = request.getParameter("Assignee");
		String ChangeDetailsTextarea = request.getParameter("ChangeDetailsTextarea");
		String LeadName = request.getParameter("LeadName");
		
	    Key customerKey = KeyFactory.createKey("Customerproduction", ProjectName);
	        
		
        Entity customer1 = new Entity("Customerproduction", customerKey);
        customer1.setProperty("ProjectName", ProjectName);
        customer1.setProperty("Assignee", Assignee);
        customer1.setProperty("ChangeDetailsTextarea", ChangeDetailsTextarea);
        customer1.setProperty("LeadName", LeadName);

        DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
        datastore.put(customer1);
        
        return new ModelAndView("redirect:list1");
        
        
	}
		
	
	/*
	//get all customers
		@RequestMapping(value="/list1", method = RequestMethod.GET)
		public String listCustomer(ModelMap model) {

			DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
			Query query = new Query("Customerproduction").addSort("ProjectName", Query.SortDirection.DESCENDING);
		    List<Entity> customerss = datastore.prepare(query).asList(FetchOptions.Builder.withLimit(10));
		    
		    model.addAttribute("customerList",  customerss);
		    
			return "list1";

		}
		*/
	}