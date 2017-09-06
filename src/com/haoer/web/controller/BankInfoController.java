package com.haoer.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haoer.web.entity.TmBankInfo;
import com.haoer.web.service.IBankManager;
import com.tgb.web.controller.entity.User;
import com.tgb.web.controller.service.IUserManager;
import com.utils.DebugTools;

@Controller
@RequestMapping("/bank")
public class BankInfoController {
 
	@Resource(name="userManager")
	private IUserManager userManager;
	
	@Resource(name="bankManager")
	private IBankManager bankManager;
	
	private Logger logger = LoggerFactory.getLogger(getClass());

	
	@RequestMapping("/toAddBank")
	public String toAddUser(){
		logger.info("添加银行信息");
		return "/addBankInfo";
	}
	
	@RequestMapping("/toAddBankFreemarker")
	public String toAddUserFreemarker(){
		logger.info("添加银行信息");
		
		return "/freemarker_addBankInfo";
	}
	
	@RequestMapping("/addBank")
	public String addUser(TmBankInfo user){
		DebugTools.debug(user, "添加银行信息"
				, "操作", logger, true);
		bankManager.addUser(user);
		
		return "redirect:/bank/getAllUser";
	}
	
	@RequestMapping("/getAllUser")
	public String getAllUser(HttpServletRequest request){
		
		DebugTools.debug(request, "添加银行信息"
				, "操作", logger, true);
		List<TmBankInfo> user = bankManager.getAllUser();
		
		request.setAttribute("user", user);
		
		return "/bankManager";
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
