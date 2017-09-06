package com.tgb.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tgb.web.controller.entity.User;
import com.tgb.web.controller.service.IUserManager;
import com.utils.DebugTools;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
@RequestMapping("/user")
public class UserController {
 
	@Resource(name="userManager")
	private IUserManager userManager;
	
	private Logger logger = LoggerFactory.getLogger(getClass());

	
	@RequestMapping("/toAddUser")
	public String toAddUser(){
		System.out.println("添加请求开始");
		return "/addUser";
	}
	
	@RequestMapping("/addUser")
	public String addUser(User user){
		
		userManager.addUser(user);
		
		return "redirect:/user/getAllUser";
	}
	
	@RequestMapping("/getAllUser")
	public String getAllUser(HttpServletRequest request){
		List<User> user = userManager.getAllUser();
		
		request.setAttribute("user", user);
		
		return "/userManager";
	}
	
	@RequestMapping("/delUser")
	public void delUser(int id,HttpServletResponse response){
		String result = "{\"result\":\"error\"}";
		if(userManager.delUser(id)){
			result = "{\"result\":\"success\"}";
		}
		PrintWriter out = null;
		response.setContentType("application/json");
		
		try {
			out = response.getWriter();
			out.write(result);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	@RequestMapping("/getUser")
	public String getUser(int id,HttpServletRequest request){
		User user = userManager.getUser(id);
		
		request.setAttribute("user", user);
		return "/editUser";
	}
	
	@RequestMapping("/updateUser")
	public String updateUser(User user,HttpServletRequest request){
		DebugTools.debug(user, Thread.currentThread().getStackTrace()[2].getMethodName()
				, "操作", logger, true);
		
		if(userManager.updateUser(user)){
			user = userManager.getUser(user.getId());
			request.setAttribute("user", user);
			return "/success";
		}else{
			return "/error";
		}
		
	}
	@RequestMapping("/AjaxServlet")
	public void AjaxServlet(HttpServletRequest request,HttpServletResponse response) throws Exception{
		System.out.println(new Date());
		response.setContentType("text/html");  
		//速度Json串：
		String s = "{\"MOBILE_SPEED\":0,\"MOBILE_TOTAL_COUNT\":160000,\"MSG_SPEED\":0,\"MSG_TOTAL_COUNT\":16000}";  
		String ss = "{\"MOBILE_SPEED\":1,\"MOBILE_TOTAL_COUNT\":320000,\"MSG_SPEED\":1,\"MSG_TOTAL_COUNT\":32000}";   
	    PrintWriter out = response.getWriter();  
 	    out.print(s+";"+ss);
	}
}
