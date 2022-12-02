<%@ page contentType="text/html; charset=utf-8" %>
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
        
        <script type="text/javascript">
        	var imgArray = new Array();
        	imgArray[0] = "assets/img/붕어빵1-1.png";
        	imgArray[1] = "assets/img/붕어빵1-2.png";
        	imgArray[2] = "assets/img/붕어빵2-1.png";
        	imgArray[3] = "assets/img/붕어빵2-2.png";
        	imgArray[4] = "assets/img/붕어빵3-1.png";
        	imgArray[5] = "assets/img/붕어빵3-2.png";
        	function showImage() {
        		var imgNum = Math.floor(Math.round(Math.random()*5));
            	var objImg = document.getElementById("rankImg");
            	objImg.src = imgArray[imgNum];
 
            	setTimeout("showImage()", 2000);
        	}

   	 </script>
    </head>
    
    <body id="page-top">
    <%
    	String userid = (String)session.getAttribute("userID");
    %>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top"><img src="assets/img/navbar-logo.png" alt="..." style="width:130px; height:100px;"/></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                    	<li class="nav-item"><a class="nav-link"><%=userid %>님 환영합니다.</a></li>
                        <li class="nav-item"><a class="nav-link" href="#profile">빵뎅이 소개</a></li>
                        <li class="nav-item"><a class="nav-link" href="shops.jsp">빵뎅이 찾기</a></li>
                        <li class="nav-item"><a class="nav-link" href="./mypage.jsp">마이페이지</a></li>
                        <li class="nav-item"><a class="nav-link" href="./logout.jsp">로그아웃</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead" style="width:100%; height: 100%;">
            <div class="container">
                <div class="masthead-subheading">Welcome To 빵뎅이!</div>
                <div class="masthead-heading text-uppercase" id="title">붕어<span style="color: sandybrown;">빵</span> 오<span style="color: sandybrown;">뎅</span> 떡볶<span style="color: sandybrown;">이</span></div>
                <a class="btn btn-primary btn-xl text-uppercase" href="#profile">빵뎅이란?</a>
            </div>
        </header>
        <!-- Services-->
        <section class="page-section" id="profile">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">빵뎅이란?</h2>
                </div>
                <div class="row text-center" style="margin-top:50px;">	

       				<body onload="showImage()">
       				<div style="display: flex;">
        				<img id="rankImg" border="0" style="width:500px;">
        				<div style="margin-left: 60px; min-width: 600px;">
							<h4 class="portfolio-caption-subheading text-muted">빵뎅이는 붕어빵, 오뎅, 떡볶이의 줄임말로, <br />
							전국의 붕어빵, 오뎅, 떡볶이 맛집을 소개해주는 사이트입니다.<br /><br />
							겨울철 우리들의 소소한 행복을 책임져줄 빵뎅이!<br /><br />
							리뷰로 맛집을 추천하고, <br />찜을 통해 가고싶은 맛집을 선택할 수 있습니다.<br /><br />
							빵뎅이로 따뜻한 하루를 시작하세요:)<br /><br /><br />
							</h4>
							<h6 class="portfolio-caption-subheading text-muted">developer:Ji-Yugyeong</h6>
							<h6 class="portfolio-caption-subheading text-muted">github url: <a href="https://github.com/Yugyeong-Ji">https://github.com/Yugyeong-Ji</a></h6>
							<h6 class="portfolio-caption-subheading text-muted">문의사항 : yugyeong29@kyonggi.ac.kr</h6>
							<h6 class="portfolio-caption-subheading text-muted">연락처 : 010-1234-5678</h6>
						</div>
					</div>
                </div>
            </div>
        </section>
		       <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">BBANGDENGI</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/붕어빵.gif" alt="..." style="width:416px; height:277px;" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">붕어빵</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/오뎅.gif" alt="..." style="width:416px; height:277px;" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">오뎅</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/떡볶이.gif" alt="..." style="width:416px; height:277px;" />
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">떡볶이</div>
                            </div>
                        </div>
                    </div>
        <!-- Footer-->
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
        <!-- Portfolio Modals-->
        <!-- Portfolio item 1 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">fish bread</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/붕어빵.png" alt="..." " style="width:808px;"/>
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Threads
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Illustration
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 2 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">fish cake</h2>
                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/오뎅.png" alt="..." style="width:808px;"/>
                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita beatae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Client:</strong>
                                            Explore
                                        </li>
                                        <li>
                                            <strong>Category:</strong>
                                            Graphic Design
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close Project
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 3 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <h2 class="text-uppercase">Tteokbokki</h2>
                                    <p class="item-intro text-muted">떡볶이는 떡을 주재료로 하는 한국 요리이다.</p>
                                    <img class="img-fluid d-block mx-auto" src="assets/img/portfolio/떡볶이.png" alt="..."  style="width:808px;"/>
                                    <p>일반적인 떡볶이는 밀떡, 쌀떡, 어묵, 채소, 고추장 등의 양념을 넣어 볶은 음식으로 한국의 대표적 길거리 음식이다. 고추장과 간장을 기본으로 양념할 수 있는데 전자가 가장 대표적인 형태이다.<br /><br />현대 한국에서 즐겨먹는 고추장 떡볶이는 한국 전쟁 직후에 개발된 음식이다. 이전에 궁중에서 먹던 떡볶이는 간장 양념에 재어둔 쇠고기를 떡과 같이 볶아서 만들었다고 한다.</p>
                                    <div>
                                    <button class="btn btn-primary btn-l text-uppercase" type="button" href="shops.jsp">
                                        Famous restaurant
                                    </button>
                                    <button class="btn btn-secondary btn-l text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-xmark me-1"></i>
                                        Close
                                    </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>