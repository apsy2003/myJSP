package login_02;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login_02")
public class MemberServlet3 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	private void doHandle(HttpServletRequest request,HttpServletResponse response)  throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//SQL������ ��ȸ�� MemberDAO ��ü�� ����
		MemberDAO dao=new MemberDAO();
		PrintWriter out=response.getWriter();

		String command=request.getParameter("command");
	      
		if(command!= null && command.equals("addMember")){
			 String _id=request.getParameter("id");
			 String _pwd=request.getParameter("pwd");
			 String _name=request.getParameter("name");
			 String _email=request.getParameter("email");
			 
			 MemberVO vo=new MemberVO();
			 vo.setId(_id);
			 vo.setPwd(_pwd);
			 vo.setName(_name);
			 vo.setEmail(_email);	
			 dao.addMember(vo);
		}/*else if(command!= null && command.equals("delMember")) {
			String id = request.getParameter("id");
			dao.delMember(id);
		}*/
		List list=dao.listMembers();
		out.print("<html><body>");
		out.print("<table border=1><tr align='center' bgcolor='lightgreen'>");
		out.print("<td>���̵�</td><td>��й�ȣ</td><td>�̸�</td><td>�̸���</td><td>������</td></tr>");
		for (int i=0; i<list.size(); i++){
			MemberVO memberVO=(MemberVO) list.get(i);
	 		String id=memberVO.getId();
	 		String pwd = memberVO.getPwd();
	 		String name = memberVO.getName();
	 		String email =memberVO.getEmail();
	 		Date joinDate = memberVO.getJoinDate();	
	 		out.print("<tr><td>"+id+"</td><td>"
		                +pwd+"</td><td>"
		                +name+"</td><td>"
		                +email+"</td><td>"
		                +joinDate+"</td><td>"
	                  );	 		
		}
		out.print("</table></body></html>");
		out.print("<a href='/project01/sub02/login02.jsp'>�� ȸ�� ����ϱ�</a>");
	}
}