package login_01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Session") //����� �۾�����
public class SessionTest extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	
	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
	
		HttpSession session = request.getSession();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		if(session.isNew()){
			//ó�� �����ϸ�..
			if(user_id != null) {
				session.setAttribute("user_id", user_id);
				out.println("<a href='/project01/index2/index2.jsp'>�α��� ���� Ȯ��</a>");
			}else {
				out.print("<a href='/project01/sub02/sub02.jsp'>�ٽ� �α��� �ϼ���!!</a>");
			}
		}else {
			user_id = (String) session.getAttribute("user_id");
			if (user_id != null && user_id.length() !=0) {
				out.print("�ȳ��ϼ���" + user_id + "��!!!");
			}else {
				out.print("<a href=''/project01/sub02/sub02.jsp'>�ٽ� �α��� �ϼ���!!</a>");
				session.invalidate();
			}
		}
	}
}
