<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%

String id =request.getParameter("wishId");
if(id==null || id.trim().equals("")){
	response.sendRedirect("wish.jsp");
	return;
}
// 위시리스트에 등록된 모든 가게를 삭제
session.invalidate();

// wish.jsp로 돌아가기
response.sendRedirect("wish.jsp");

%>