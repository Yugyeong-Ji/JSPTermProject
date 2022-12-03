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
    </head>
 <body>
        <!-- Navigation-->
        <nav class="navbar bg-dark" id="Nav">
            <div class="container">
                <a class="navbar-brand" href="./index.jsp"><img src="assets/img/navbar-logo.png" alt="..." style="width:130px; height:100px;"/></a>
            </div>
        </nav>
<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Log In</h5>
            <form class="form-signin" method="post" action="loginAction.jsp">
              <div class="form-label-group">
                <input type="text" id="userID" name="userID" class="form-control" placeholder="id" required autofocus>
				</div><br>

              <div class="form-label-group">
                <input type="password" id="userPW" name="userPW" class="form-control" placeholder="Password" required>
              </div>
              <div class="form-label-group">
              <c:if test="${check == 1 }">
                <label>${message }</label>
              </c:if>
              </div>

              <button class="btn btn-primary form-control" type="submit">Sign in</button>
              <hr class="my-4">
              Forgot your <a href="javascript:void(0)" onclick="findid()">ID</a> or 
              				<a href="javascript:void(0)" onclick="findpassword()">Password</a>?
              <button class="btn btn-secondary form-control" href="join.jsp">Join</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript">
  function findid(){
		var url="find_id_form";
		
		window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
	}
  
  function findpassword(){
	  var url="find_password_form";
	  
	  window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
  }
  </script>
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
</body>
</html>