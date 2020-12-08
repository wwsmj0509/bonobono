package com.login.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.login.entity.login_entity;

public class login_dao {

	private static SqlSessionFactory factory;
	static {
		try {
			String resource="mybatis/mybatis-config.xml";
			Reader reader=Resources.getResourceAsReader(resource);
			factory=new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {}
	}
	
	//로그인 -----------------------------------------------------------------
	public login_entity getUser(String id, String pwd) {
		SqlSession session=factory.openSession();
		login_entity logEntity = new login_entity(id,pwd,"");
		
		System.out.println(logEntity.getId());
		System.out.println(logEntity.getPwd());
		
		login_entity entity = session.selectOne("mybatis.LoginMapper.getLoginUser",logEntity);
		session.close();
		
		System.out.println(entity.getId()+" login OK");
		return entity;
	}
	
	//회원가입 -----------------------------------------------------------------
	public int getJoin(String id, String pwd, String name) {
		SqlSession session=factory.openSession();
		login_entity logEntity = new login_entity(id,pwd,name);
		int n =0;
		
		System.out.println(logEntity.getId());
		System.out.println(logEntity.getPwd());
		System.out.println(logEntity.getName());
		
		try {
			n = session.insert("mybatis.LoginMapper.getJoinUser",logEntity);
			if(n > 0) {
				session.commit();
			}
		}catch(Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		System.out.println(" join OK");
		return n;
		
	}
	
	
	

}
