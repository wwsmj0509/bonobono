package com.login.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.dao.login_dao;

import controller.CommandAction;

public class joinService implements CommandAction{

	@Override
	public String requestPro_action(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		System.out.println("join service enter");
		
		String id=request.getParameter("input_id");
		String pwd=request.getParameter("input_pwd");
		String name=request.getParameter("input_name");
		
		login_dao dao = new login_dao();
		int n = dao.getJoin(id,pwd,name);
		
		if(n > 0) {
			request.setAttribute("joinOK", n);
			return "login.jsp";
		}else {
			return "/login/signUp.jsp";
		}
		
	}

}
