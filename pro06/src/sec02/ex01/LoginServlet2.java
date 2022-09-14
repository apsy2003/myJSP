package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login2")
public class LoginServlet2 extends HttpServlet{
	
	@Override
	public void init() throws ServletException {
		System.out.println("init 메서드 호출");
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter(); //PrintWriter out에 저장.
		
		String id = request.getParameter("user_id"); //나중에 회원정보를 내 웹페이지에 뿌리는 역할.
		String pw = request.getParameter("user_pw");
		
		String data ="<html>";
		data += "<body>";
		data += "아이디:" + id;
		data += "<br/>";
		data += "비밀번호:" + pw;
		data += "</body>";
		data += "</html>";
		out.print(data);
	}

	@Override
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	
 
}
