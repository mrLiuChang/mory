package com.kh.mory.Diarycontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.kh.mory.DiaryIDAO.ICommentDAO;

public class Diary_DiarynameUpdateController implements Controller
{
	   // DAO �������̽� �ڷ��� ��� ����
	   private ICommentDAO commentdao;

	   // setter ����
	   public void setCommentdao(ICommentDAO commentdao)
	   {
	   	this.commentdao = commentdao;
	   } 

	   @Override
	   public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	   {
		return null;
		   
	   }
	
}