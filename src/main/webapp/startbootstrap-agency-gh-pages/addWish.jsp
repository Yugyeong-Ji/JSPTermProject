<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.Shop"%>
<%@page import="dao.shopRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	String code = request.getParameter("code");
	
	// code가 없으면
	if(code==null || code.trim().equals("")){
		// shop.jsp로 되돌아간다.
		response.sendRedirect("shops.jsp");
		// 프로그램 종료
		return;
	}
	
	shopRepository dao = shopRepository.getInstance();
	
	Shop shop = dao.getShopByCode(code);
	if(shop == null){
		response.sendRedirect("/exceptionNoShopCode.jsp");
	}

	ArrayList<Shop> shopsList = dao.getAllShops();
	Shop shops = new Shop();
	for(int i=0; i<shopsList.size(); i++){
		shops = shopsList.get(i);
		if(shops.getCode().equals(code)){
			break;
		}
	}
	
	
	ArrayList<Shop> list = (ArrayList<Shop>)session.getAttribute("wishlist");
	if(list == null){
		list = new ArrayList<Shop>();
		session.setAttribute("wishlist", list);
	}
	
	int cnt = 0;
	Shop shopsQnt = new Shop();
	for(int i=0; i<list.size(); i++){
		shopsQnt = list.get(i);
		if(shopsQnt.getCode().equals(code)){
			cnt++;
		}
	}

	if(cnt == 0){
		list.add(shops);
	}

	response.sendRedirect("shop.jsp?code="+code);
%>
