package com.login.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.login_dao;
import com.login.entity.login_entity;

import controller.CommandAction;

public class loginService implements CommandAction{

	@Override
	public String requestPro_action(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		
		System.out.println("loging service enter");
		
		String id=request.getParameter("input_id");
		String pwd=request.getParameter("input_pwd");
		
		login_dao dao = new login_dao();
		login_entity entity = dao.getUser(id,pwd);
		
		
		if(entity != null) {
			//세션설정
			HttpSession session=request.getSession();
			session.setAttribute("logOK", entity);
			return "boardList.do";
		}else {
			return "login.jsp";
		}
	}

	
	
	
}
