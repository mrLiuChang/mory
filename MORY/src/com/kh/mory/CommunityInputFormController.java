package com.kh.mory;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class CommunityInputFormController implements Controller
{
	
	private ICommunityDAO dao;

	public void setDao(ICommunityDAO dao) 
	{
		this.dao = dao;
	}

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		request.setCharacterEncoding("UTF-8");
		
		ModelAndView modelandview = new ModelAndView();
		
		ArrayList<CommunityDTO> dto = new ArrayList<CommunityDTO>();

		
		try 
		{
			dto = dao.type_list();
			
			
			modelandview.addObject("dto" , dto);
			
			modelandview.setViewName("/WEB-INF/community/CommunityInputForm.jsp");

		} catch (Exception e) 
		{
				System.out.println(e.toString());
		}

		return modelandview;
	}
	
	
	
}
