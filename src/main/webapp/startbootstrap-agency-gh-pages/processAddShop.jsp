<%@page import="java.util.concurrent.Flow.Publisher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Shop"%>
<%@ page import="dao.shopRepository"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String fileName="";
	String realFolder=request.getSession().getServletContext().getRealPath("./startbootstrap-agency-gh-pages/assets/img");
	int maxSize=5*1024*1024;
	String encType="utf-8";
	MultipartRequest multi = new MultipartRequest(request, realFolder, 5*1024*1024, encType, new DefaultFileRenamePolicy());
    
	String code = multi.getParameter("code");
	String shopName = multi.getParameter("shopName");
	String price = multi.getParameter("price");
	String address = multi.getParameter("address");
	String summary = multi.getParameter("summary");
	String description = multi.getParameter("description");
	String category = multi.getParameter("category");
	String grade = multi.getParameter("grade");
	
	Integer unitPrice;
	
	if(price.isEmpty())
		unitPrice=0;
	else unitPrice=Integer.valueOf(price);
	
	double unitGrade;
	
	if(grade.isEmpty())
		unitGrade=0;
	else unitGrade=Double.valueOf(grade);
	
	Enumeration files=multi.getFileNames();
    String fname=(String)files.nextElement();
    String filename=multi.getFilesystemName(fname);
	
   // shopRepository dao = new shopRepository();
	shopRepository dao = shopRepository.getInstance();
	
	Shop newShop=new Shop();
	newShop.setCode(code);
	newShop.setShopName(shopName);
	newShop.setPrice(unitPrice);
	newShop.setGrade(unitGrade);
	newShop.setSummary(summary);
	newShop.setDescription(description);
	newShop.setCategory(category);
	newShop.setFilename(fileName);
	
	dao.addShop(newShop);
	response.sendRedirect("shops.jsp");
%>