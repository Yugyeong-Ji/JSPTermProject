<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="dao.shopRepository"%>
<%@ page import="dto.Shop" %>
<jsp:useBean id="shopDAO" class="dao.shopRepository" scope="session"/>

<%
	// 세션의 고유 아이디를 가져온다.
	String wishId = session.getId();
%>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>빵뎅이</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        </head>
        <%
		String userid = (String)session.getAttribute("userID");
        %>
            <body id="page-top">
        	<!-- Navigation-->
        	<nav class="navbar navbar-expand-lg bg-dark fixed-top" id="mainNav" style="height: 120px;">
            	<div class="container">
                	<a class="navbar-brand" href="main.jsp"><img src="assets/img/navbar-logo.png" alt="..." style="width:130px; height:100px;"/></a>
                	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    	Menu
                    <i class="fas fa-bars ms-1"></i>
                	</button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                    	<li class="nav-item"><a class="nav-link"><%=userid %>님 환영합니다.</a></li>
                        <li class="nav-item"><a class="nav-link" href="main.jsp#profile">빵뎅이 소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="bbangdengi.jsp">빵뎅이 찾기</a></li>
                        <li class="nav-item"><a class="nav-link" href="./wish.jsp">마이페이지</a></li>
                        <li class="nav-item"><a class="nav-link" href="./logout.jsp">로그아웃</a></li>
                    </ul>
                </div>
            	</div>
        	</nav>
		<section class="page-section bg-light" id="search">
            <div class="container" style="margin-top: 100px;">
                <div class="text-center">
                    	<h2 class="section-heading text-uppercase" style="padding-bottom: 50px;">빵뎅이 맛집</h2>
                	</div>
		<div class="container">
			<div class="row">
				<table style="width:100%;">
					<tr>
						<td align="left">
						<a href="deleteWish.jsp?wishId=<%=wishId%>" class="btn btn-danger">
						삭제하기
						</a>
						</td>
					</tr>
				</table> 
			</div>
			<div style="padding-top:50px;">
				<table class="table table-hover">
					<tr>
						<th>가게</th>
						<th>위치</th>
						<th>한줄소개</th>
						<th>평점</th>
						<th>비고</th>
					</tr>
					<%
    		
    				int sum = 0;
					ArrayList<Shop> wishList = (ArrayList<Shop>) session.getAttribute("wishlist");
					if (wishList == null){
						wishList = new ArrayList<Shop>();
					}
					for(int i=0; i<wishList.size(); i++){
						Shop shop = wishList.get(i);
						sum++;
					%>
					<tr>
						<td><%=shop.getShopName() %></td>
						<td><%=shop.getAddress() %></td>
						<td><%=shop.getSummary() %></td>
						<td><%=shop.getGrade()%></td>
						<td>삭제</td>
					</tr>
					<%
						}
					%>			
						<tr>
							<th></th>
							<th></th>
							<th>개수</th>
							<th><%=sum %></th>
							<th></th>
						</tr>	
					</table>
					<a href="./shops.jsp" class="btn btn-secondary"> 맛집 계속보기</a>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer py-4">
        <div class="container">
            <div class="row align-items-center">
               <div class="col-lg-4 text-lg-start">Copyright &copy; Your Website 2022</div>
                   <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-end">
                        <a class="link-dark text-decoration-none me-3" href="#!">Privacy Policy</a>
                        <a class="link-dark text-decoration-none" href="#!">Terms of Use</a>
                    </div>
                </div>
            </div>
        </footer>
</body>
</html>