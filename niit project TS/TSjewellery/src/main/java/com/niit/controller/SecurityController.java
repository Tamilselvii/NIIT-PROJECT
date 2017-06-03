package com.niit.controller;


 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.niit.modeldao.Productdao;
import com.niit.modeldto.Product;

import java.util.Collection;
import java.util.List;
 
import javax.servlet.http.HttpSession;
 

@Controller
public class SecurityController 
{
   @Autowired
   Productdao productdao;
   @Autowired
	private HttpSession session; 
   @RequestMapping("/UserHome")
   public String showUserHome(Model m)
   {
       List<Product> list=productdao.retrieveProduct();      
       m.addAttribute("prodlist",list);
       return "UserHome";
   }
    
   @RequestMapping("/login_success")
   public String showAuthenticatedPage(HttpSession session,Model m)
   {
       String page=null;
       String username = SecurityContextHolder.getContext().getAuthentication().getName();
       @SuppressWarnings("unchecked")
	Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
        
       System.out.println("User Name:"+username);
        
       session.setAttribute("username",username);
        
       boolean LoggedIn=false;
       for(GrantedAuthority role:authorities)
       {
           System.out.println("Role Name:"+role);
           session.setAttribute("role",role.getAuthority());
           if(role.getAuthority().equals("USER".trim()))
           {
               LoggedIn=true;
               page="UserHome";
               List<Product> list=productdao.retrieveProduct();      
               m.addAttribute("prodlist",list);
           }
           else
           {
               LoggedIn=true;
               page="AdminHome";
           }
            
       }
       session.setAttribute("LoggedIn",LoggedIn);
        
        
       return page;
   }
   @RequestMapping(value="/ProductDesc/{productid}",method=RequestMethod.GET)
   public String showProductDesc(@PathVariable("productid")int productid,Model m)
   {
       Product prod=productdao.getProduct(productid);
       m.addAttribute("prodinfo",prod);
       return "ProductDesc";
   }
   @RequestMapping("/secure_logout")
	public ModelAndView secureLogout()
	{
		//what you attach to session at the time login need to remove.
		
		//session.removeAttribute("loggedInUserID");
		session.invalidate();
		
		ModelAndView mv = new ModelAndView("home");
		
		//After logout also use should able to browse the categories and products
		//as we invalidated the session, need to load these data again.
		
	//	session.setAttribute("category", category); // domain object names
		session.setAttribute("product", productdao);
		//session.setAttribute("supplier", supplier);
		
		
		//session.setAttribute("categoryList", categoryDAO.list());
		
		//session.setAttribute("supplierList", supplierDAO.list());
		
		session.setAttribute("productList", productdao.retrieveProduct());
		
		
		//OR Simpley remove only one attribute from the session.
		
		//session.removeAttribute("loggedInUser"); // you no need to load categoriees,suppliers and products
	
		return mv;
	}
   
}
    
