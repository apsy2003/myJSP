package sec06.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(
		name = "InitParamServlet", 
		urlPatterns = { 
				"/sInit", 
				"/sInit2"
		}, 
		initParams = { 
				@WebInitParam(name = "email", value = "apsy2003@naver.com"), 
				@WebInitParam(name = "tel", value = "010-6323-1899")
		})
public class lnitParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;//자동으로 우선순위 작용

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String email = getInitParameter("email");
		String tel = getInitParameter("tel");
		out.print("<html><body>");
		out.print("<table><tr>");
		out.print("<td>email: </td><td>" + email + "</td></tr>");
		out.print("<tr><td>휴대전화: </td><td>" + tel + "</td>");
		out.print("</tr></table></body></html>");		
	}

}
