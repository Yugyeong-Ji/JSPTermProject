<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.shopRepository"%>
<%@ page import="dto.Shop" %>
<jsp:useBean id="shopDAO" class="dao.shopRepository" scope="session"/>
<% request.setCharacterEncoding("UTF-8"); %>
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
        <script type="text/javascript">
			function addToWish(){
				// 확인 true 취소 false
				if(confirm("위시리스트에 추가하시겠습니까?")){ // 확인
					document.addForm.submit();
				}else{ // 취소
					document.addForm.reset();
				}
			}
		</script>
            <body id="page-top">
    		<%
    			String userid = (String)session.getAttribute("userID");
    		
    			String code = request.getParameter("code");
    			shopRepository dao = shopRepository.getInstance();
    			Shop shop = dao.getShopByCode(code);
    		%>
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
                        <li class="nav-item"><a class="nav-link" href="shops.jsp">빵뎅이 찾기</a></li>
                        <li class="nav-item"><a class="nav-link" href="wish.jsp">위시리스트</a></li>
                        <li class="nav-item"><a class="nav-link" href="./logout.jsp">로그아웃</a></li>
                    </ul>
                </div>
            	</div>
        	</nav>
                <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="search">
            <div class="container" style="margin-top: 100px;">
                <div class="text-center">
                    	<h2 class="section-heading text-uppercase" style="padding-bottom: 50px;">빵뎅이 맛집</h2>
                	</div>
					<div class="container">
					<div class="row">
					<img src="./assets/img/shop/<%=shop.getFilename()%>" style="width:400px; height:400px;"/>
					<div class="col-md-6">
						<h3>[<%= shop.getCategory() %>] <%= shop.getShopName() %></h3>
						<p>코드 : <span class="badge badge-danger"><%=shop.getCode() %></span>
						<p><%=shop.getSummary() %>
						<p><%=shop.getDescription() %>
						<p><b>주소</b> : <%=shop.getAddress() %>
						<p style="color:red;"><b>평점</b> : <%=shop.getGrade() %>
						<h5><%=shop.getPrice() %>원</h5>
						<p>
							<form name ="addForm" method="post" action="addWish.jsp?code=<%=shop.getCode() %>">
								<a href="#" class="btn btn-info" onclick="addToWish()">
								담기</a>
								<a href="wish.jsp" class="btn btn-warning">
        						위시리스트</a>
								<a href="./shops.jsp" class="btn btn-secondary">
								상품목록</a>
					 		</form>
					 	</div>
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