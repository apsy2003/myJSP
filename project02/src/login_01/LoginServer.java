package login_01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//로그인 시 admin ID로 로그인하면 회원 관리와 회원 삭제 기능을 보여주도록 작성해보세요.
//진짜 주소를 숨길 수 있다. (보안)
@WebServlet("/login_01")
public class LoginServer extends HttpServlet{
	@Override
	public void init() {
		System.out.println("init 메서드 호출");
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			String id = request.getParameter("id");
			String pw = request.getParameter("pwd");
			
			System.out.println("아이디 :"+id);
			System.out.println("패스워드 :"+pw);
			
			//ID와 비밀번호가 없으면 다시 로그인으로 이동한다.
			
			if(id!= null && (id.length()!=0)){
				if(id.equals("admin")) {
					out.print("<html>");
					out.print("<body>");
					out.print("<font size='12'>관리자로 로그인하셨습니다!!</font>");
					out.print("<br>");
					out.print("<input type=button value='회원정보 수정하기' />");
					out.print("<input type=button value='회원정보 삭제하기' />");
					out.print("</body>");
					out.print("</html>");
				} else {
					out.print("<html>");
					out.print("<body>");
					out.print(id + "님!! 로그인 하셨습니다.");
					out.print("</body>");
					out.print("</html>");
				} 
			} else {
				out.print("<html>");
				out.print("<body>");
				out.print("로그인을 다시 진행해주세요.");
				out.print("<br>");
				out.print("<a href='sub02/login01.html'>로그인 창으로 이동</a>");
				out.print("</body>");
				out.print("</html>");
				
			}
	}	
	@Override
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}
}
