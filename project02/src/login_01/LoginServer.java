package login_01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//�α��� �� admin ID�� �α����ϸ� ȸ�� ������ ȸ�� ���� ����� �����ֵ��� �ۼ��غ�����.
@WebServlet("/login_01")
public class LoginServer extends HttpServlet{
	@Override
	public void init() {
		System.out.println("init �޼��� ȣ��");
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			String id = request.getParameter("user_id");
			String pw = request.getParameter("user_pw");
			
			System.out.println("���̵� :"+id);
			System.out.println("�н����� :"+pw);
			
			//ID�� ��й�ȣ�� ������ �ٽ� �α������� �̵��Ѵ�.
			
			if(id!= null &&(id.length()!=0)){
				if(id.equals("admin")) {
					out.print("<html>");
					out.print("<body>");
					out.print("<font size='12'>�����ڷ� �α����ϼ̽��ϴ�!!</font>");
					out.print("<br>");
					out.print("<input type=button value='ȸ������ �����ϱ�' />");
					out.print("<input type=button value='ȸ������ �����ϱ�' />");
					out.print("</body>");
					out.print("</html>");
				} else {
					out.print("<html>");
					out.print("<body>");
					out.print(id + "��!! �α��� �ϼ̽��ϴ�.");
					out.print("</body>");
					out.print("</html>");
				} 
			}else {
				out.print("<html>");
				out.print("<body>");
				out.print("���̵� �Է��ϼ���.");
				out.print("<br>");
				out.print("<a href='/project02/sub02/login01.html'>�α��� â���� �̵�</a>");
				out.print("</body>");
				out.print("</html>");
				
			}
	}	
	@Override
	public void destroy() {
		System.out.println("destroy �޼��� ȣ��");
	}
}