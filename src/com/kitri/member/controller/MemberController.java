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
			System.out.println("검색 아이디 : " + id);
			int cnt = memberService.idcheck(id);
			System.out.println("검색 아이디 갯수:" + cnt);
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print(cnt);//0 or 1이 넘어감
			//PageMove.redirect(request, response, "/join/idcheck.jsp?id=" + id + "&cnt=" + cnt);
		} else if("mvzip".equals(act)) {
			PageMove.redirect(request, response, "/join/zipsearch.jsp");
		} else if("zipsearch".equals(act)) {
			String dong = request.getParameter("dong");
			System.out.println("검색 동이름 : " + dong);
			List<ZipDto> list = memberService.zipsearch(dong);
			System.out.println("검색동 갯수 : " + list.size());
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
			if(cnt != 0) {//성공.
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
				System.out.println("아이디 쿠키저장");
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
								System.out.println("쿠키삭제");
									cookie[i].setMaxAge(0); //체크가 되어있지 않다면 만료시간을 0으로해서 만료시킴
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
				session.setAttribute("userInfo", memberDto); //리퀘스트 대신 session에 setAttibute를 담음
				///////////////////////////////////////////////////////////////////////////

//				request.setAttribute("userInfo", memberDto);
				PageMove.redirect(request, response, "/login/loginok.jsp");
			} else {
				PageMove.redirect(request, response, "/login/loginfail.jsp");
			}
		} else if("logout".equals(act)) {
			HttpSession session = request.getSession();
//			session.setAttribute("userInfo", null); // userInfo를 null로 만듬
			session.removeAttribute("userInfo");// userInfo 자체를 없앰- 특정 session만 선택 삭제
//			session.invalidate(); //여러개의 세션이 있는 경우 전부 다 지울 경우
			PageMove.redirect(request, response, "/index.jsp");

		} else if("mvmaillist".equals(act)) {
			List<String> mail = new ArrayList<String>();
			mail.add("동주1이 보낸 메일.");
			mail.add("동주2이 보낸 메일.");
			mail.add("동주3이 보낸 메일.");
			mail.add("동주4가 보낸 메일.");
			mail.add("동주5가 보낸 메일.");
			mail.add("동주6이 보낸 메일.");

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
