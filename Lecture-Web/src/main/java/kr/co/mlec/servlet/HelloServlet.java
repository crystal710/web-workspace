package kr.co.mlec.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

@WebServlet("/hi")
public class HelloServlet extends HttpServlet{

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("최초로 한번만 실행되는 메소드입니다.");
	}
	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("실제 작업이 수행되는 메소드입니다. 요청이 들어올때마다 실행됩니다.");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
	
		out.println("<HTML>");
		out.println("	<HEAD>");
		out.println("		<TITLE>servlet</TITLE>");
		out.println("	</HEAD>");
		out.println("	<BODY>");
		out.println("		<h1>Hello World</h1>");
		out.println("		<h1>안녕 서블릿</h1>");
		out.println("	</BODY>");
		out.println("</HTML>");
	}

}
