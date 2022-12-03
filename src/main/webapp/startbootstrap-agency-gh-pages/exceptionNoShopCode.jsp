<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8" />
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
    <body id="page-top">
        <%
    	String userid = (String)session.getAttribute("userID");
    %>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top"><img src="assets/img/navbar-logo.png" alt="..." style="width:130px; height:100px;"/></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                    	<li class="nav-item"><a class="nav-link"><%=userid %>님 환영합니다.</a></li>
                        <li class="nav-item"><a class="nav-link" href="main.jsp#profile">빵뎅이 소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="shops.jsp">빵뎅이 찾기</a></li>
                        <li class="nav-item"><a class="nav-link" href="wish.jsp">위시리스트</a></li>
                        <li class="nav-item"><a class="nav-link" href="./logout.jsp">로그아웃</a></li>
                    </ul>
                </div>
            </div>
        </nav>
	<%!
		String main = "해당 가게가 존재하지 않습니다.";
	%>
		<div class="container">
			<h2 class = "alert alert-danger"><%=main %></h2>
		</div>
	<div class="contaimer">
		<div class="text-center">
			<p><%=request.getRequestURL() %>?<%=request.getQueryString() %>
			<p> <a href="shops.jsp" class="btn btn-secondary"> 가게 목록</a>
		</div>
	</div>
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