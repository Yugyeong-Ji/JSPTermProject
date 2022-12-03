<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Shop"%>
<%@page import="dao.shopRepository"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="shopDAO" class="dao.shopRepository" scope="session"/>
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
        
   <script type="text/javascript" src="./js/validation.js"></script> 
</head>
   <%
   request.setCharacterEncoding("UTF-8");
    %>
    <body>
      <fmt:setLocale value='<%=request.getParameter("language") %>'/>
      <fmt:bundle basename="com.bundle.message">
      
      <div class="container">
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
                       <li class="nav-item"><a class="nav-link">관리자님 환영합니다.</a></li>
                        <li class="nav-item"><a class="nav-link" href="addShop.jsp">가게등록</a></li>
                        <li class="nav-item"><a class="nav-link" href="./logout.jsp">로그아웃</a></li>
                    </ul>
                </div>
            </div>
        </nav>
          <section class="page-section bg-light" id="search">
            <div class="container" style="margin-top: 100px;">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase" style="padding-bottom: 50px;">가게 등록</h2>
                </div>
   <div class="container">
         <div class="text-right">
            <a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
         </div>
      <form name="newShop" action="./processAddShop.jsp"class="form-horizontal" method="post" enctype="multipart/form-data">
         <div class="form-group row">
            <label class="col-sm-2"><fmt:message key="code"/></label>
            <div class="col-sm-3">
               <input type="text" id="code" name="code" class="form-control">
            </div>
         </div>
      <div class="form-group row">
            <label class="col-sm-2"><fmt:message key="shopName"/></label>
            <div class="col-sm-3">
               <input type="text" id="shopName" name="shopName" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2"><fmt:message key="price"/></label>
            <div class="col-sm-3">
               <input type="text" id="price" name="price" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2"><fmt:message key="summary"/></label>
            <div class="col-sm-3">
               <input type="text" id="summary" name="summary" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2"><fmt:message key="address"/></label>
            <div class="col-sm-3">
               <input type="text" name="address" class="form-control">
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2"><fmt:message key="description"/></label>
            <div class="col-sm-5">
               <textarea name="description" cols="50" rows="2" class="form-control"></textarea>
            </div>
         </div>
         <div class="form-group row">
            <label class="col-sm-2"><fmt:message key="category"/></label>
            <div class="col-sm-3">
               <input type="text" name="category" class="form-control">
            </div>
         </div>
            <div class="form-group row">
            <label class="col-sm-2"><fmt:message key="grade"/></label>
            <div class="col-sm-3">
               <input type="text" name="grade" class="form-control">
            </div>
         </div>
         <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="shopImage"/></label>
                <div class="col-sm-5">
                    <input type="file" name="shopImage" class="form-control">
                </div>
            </div>
         <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
               <input type="button" class="btn btn-primary" value="<fmt:message key="button"/>" onclick="CheckAddShop()">
            </div>
         </div>
      </form>
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
        </fmt:bundle>
</body>
</html>