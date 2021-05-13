package kr.co.mlec.controller;

import java.io.IOException;
import java.lang.ModuleLayer.Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		uri = uri.substring(request.getContextPath().length());
		
		System.out.println("요청 URI : " + uri);
		
		String callPage = "";
		BoardController controller = new BoardController();
		
		switch(uri) {
		case "/board/list.do" :
			callPage = controller.selectAll(request, response);
			break;
		case "/board/writeForm.do" :
			callPage =controller.newBoard(request, response);
			break;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(callPage);
		dispatcher.forward(request, response);
		
	}
	
	

}
