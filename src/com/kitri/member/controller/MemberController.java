package com.kitri.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.kitri.member.model.*;
import com.kitri.member.service.MemberService;
import com.kitri.member.service.MemberServiceImpl;
import com.kitri.util.PageMove;

@WebServlet("/user")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MemberService memberService;

	public void init() {
		memberService = new MemberServiceImpl();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String root = request.getContextPath();
		String act = request.getParameter("act");
		System.out.println("act ==== " + act);

		if("mvjoin".equals(act)) {
			PageMove.redirect(request, response, "/join/member.jsp");
		} else if("mvlogin".equals(act)) {
			PageMove.redirect(request, response, "/login/login.jsp");
		} else if("idsearch".equals(act)) {
			String id = request.getParameter("id");
			System.out.println("�˻� ���̵� : " + id);
			int cnt = memberService.idcheck(id);
			System.out.println("�˻� ���̵� ����:" + cnt);
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print(cnt);//0 or 1�� �Ѿ
			//PageMove.redirect(request, response, "/join/idcheck.jsp?id=" + id + "&cnt=" + cnt);
		} else if("mvzip".equals(act)) {
			PageMove.redirect(request, response, "/join/zipsearch.jsp");
		} else if("zipsearch".equals(act)) {
			String dong = request.getParameter("dong");
			System.out.println("�˻� ���̸� : " + dong);
			List<ZipDto> list = memberService.zipsearch(dong);
			System.out.println("�˻��� ���� : " + list.size());
			request.setAttribute("zipList", list);
			request.setAttribute("searchDong", dong);


			PageMove.forward(request, response, "/join/zipsearch.jsp");
		} else if("register".equals(act)) {
			MemberDetailDto memberDetailDto = new MemberDetailDto();
			memberDetailDto.setId(request.getParameter("id"));
			memberDetailDto.setName(request.getParameter("name"));
			memberDetailDto.setPass(request.getParameter("pass"));
			memberDetailDto.setEmail1(request.getParameter("email1"));
			memberDetailDto.setEmail2(request.getParameter("email2"));
			memberDetailDto.setTel1(request.getParameter("tel1"));
			memberDetailDto.setTel2(request.getParameter("tel2"));
			memberDetailDto.setTel3(request.getParameter("tel3"));
			memberDetailDto.setAddr1(request.getParameter("addr1"));
			memberDetailDto.setAddr2(request.getParameter("addr2"));

			int cnt = memberService.registerMember(memberDetailDto);
			if(cnt != 0) {//����.
				request.setAttribute("userInfo", memberDetailDto);
				PageMove.forward(request, response, "/join/registerok.jsp");
			} else {
				PageMove.redirect(request, response, "/join/registerfail.jsp");
			}
		} else if("login".equals(act)) {
			String id = request.getParameter("id");
			String pass = request.getParameter("pass");

			MemberDto memberDto = memberService.login(id, pass);

			if(memberDto != null) {
				///////////////////////////////////////////////// Cookie ///////////////////////////////////////////////////////
				if("saveok".equals(request.getParameter("idsave"))) {
				System.out.println("���̵� ��Ű����");
				Cookie cookie = new Cookie("loginid", id);
				cookie.setPath(root);
				cookie.setMaxAge(60 * 60 * 24 * 365 * 10);

				response.addCookie(cookie);
				} else {
					Cookie cookie[] = request.getCookies();
					if(cookie != null) {
						int len = cookie.length;
						for(int i=0;i<len;i++) {
							if("loginid".equals(cookie[i].getName())) {
								System.out.println("��Ű����");
									cookie[i].setMaxAge(0); //üũ�� �Ǿ����� �ʴٸ� ����ð��� 0�����ؼ� �����Ŵ
									cookie[i].setPath(root);

									response.addCookie(cookie[i]);
									break;
							}
						}
					}
				}
				/////////////////////////////////////////////////////////////////////////////
				/////////////////////////////// session ////////////////////////////////////

				HttpSession session = request.getSession();
				session.setAttribute("userInfo", memberDto); //������Ʈ ��� session�� setAttibute�� ����
				///////////////////////////////////////////////////////////////////////////

//				request.setAttribute("userInfo", memberDto);
				PageMove.redirect(request, response, "/login/loginok.jsp");
			} else {
				PageMove.redirect(request, response, "/login/loginfail.jsp");
			}
		} else if("logout".equals(act)) {
			HttpSession session = request.getSession();
//			session.setAttribute("userInfo", null); // userInfo�� null�� ����
			session.removeAttribute("userInfo");// userInfo ��ü�� ����- Ư�� session�� ���� ����
//			session.invalidate(); //�������� ������ �ִ� ��� ���� �� ���� ���
			PageMove.redirect(request, response, "/index.jsp");

		} else if("mvmaillist".equals(act)) {
			List<String> mail = new ArrayList<String>();
			mail.add("����1�� ���� ����.");
			mail.add("����2�� ���� ����.");
			mail.add("����3�� ���� ����.");
			mail.add("����4�� ���� ����.");
			mail.add("����5�� ���� ����.");
			mail.add("����6�� ���� ����.");

			request.setAttribute("maillist", mail);
			PageMove.forward(request, response, "/mail/list.jsp");
		} else if("mvmodify".equals(act)) {
			HttpSession session = request.getSession();
			session.getAttribute("userInfo");
			MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
			String id = memberDto.getId();
			System.out.println("modify loading check >>>" + id);
			MemberDetailDto memberDetailDto = memberService.getMember(id);
			session.setAttribute("m.name", memberDetailDto.getName());
			session.setAttribute("m.id", memberDetailDto.getId());
			session.setAttribute("m.pass", memberDetailDto.getPass());
			session.setAttribute("m.email1", memberDetailDto.getEmail1());
			session.setAttribute("m.email2", memberDetailDto.getEmail2());
			session.setAttribute("m.joindate", memberDetailDto.getJoindate());
			session.setAttribute("md.zipcode", memberDetailDto.getZipcode());
			session.setAttribute("md.addr1", memberDetailDto.getAddr1());
			session.setAttribute("md.addr2", memberDetailDto.getAddr2());
			session.setAttribute("md.tel1", memberDetailDto.getTel1());
			session.setAttribute("md.tel2", memberDetailDto.getTel2());
			session.setAttribute("md.tel3", memberDetailDto.getTel3());

			System.out.println("member Modify id check >>>" + memberDetailDto.getId());
			System.out.println("member Modify name check >>>" + memberDetailDto.getName());
			PageMove.forward(request, response, "/join/modify.jsp");

		} else if("modifyok".equals(act)) {
			HttpSession session = request.getSession();
			session.getAttribute("userInfo");

			MemberDetailDto memberDetailDto = new MemberDetailDto();
			memberDetailDto.setPass(request.getParameter("newpass"));
			memberDetailDto.setEmail1(request.getParameter("email1"));
			memberDetailDto.setEmail2(request.getParameter("email2"));
			memberDetailDto.setTel1(request.getParameter("tel1"));
			memberDetailDto.setTel2(request.getParameter("tel2"));
			memberDetailDto.setTel3(request.getParameter("tel3"));
			memberDetailDto.setAddr1(request.getParameter("addr1"));
			memberDetailDto.setAddr2(request.getParameter("addr2"));

			int cnt = memberService.modifyMember(memberDetailDto);
			if(cnt != 0) {
				request.setAttribute("UserInfo", memberDetailDto);
				PageMove.forward(request, response, "/join/modifyok.jsp");
			} else {
				PageMove.redirect(request, response, "/join/modifyfail.jsp");
			}


		} else if("delete".equals(act)) {

		} else {
			PageMove.redirect(request, response, "/index.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
