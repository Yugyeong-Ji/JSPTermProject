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
        
        <style>
:root { -
	-input-padding-x: 1.5rem; -
	-input-padding-y: .75rem;
}

body {
	background-color: white;
}

.card-signin {
	border: 0;
	border-radius: 1rem;
	box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
	overflow: hidden;
}

.card-signin .card-title {
	margin-bottom: 2rem;
	font-weight: 300;
	font-size: 1.5rem;
}

.card-signin .card-img-left {
	width: 45%;
	/* Link to your background image using in the property below! */
	background: scroll center
		url('https://i.pinimg.com/originals/d2/cf/56/d2cf56811c4a96727d4f1494ba0914d9.jpg');
	background-size: cover;
}

.card-signin .card-body {
	padding: 2rem;
}

.form-signin {
	width: 100%;
}

.form-signin .btn {
	font-size: 80%;
	border-radius: 5rem;
	letter-spacing: .1rem;
	font-weight: bold;
	padding: 1rem;
	transition: all 0.2s;
}

.form-label-group {
	position: relative;
	margin-bottom: 1rem;
}

.form-label-group input {
	height: auto;
	border-radius: 2rem;
}

.form-label-group>input, .form-label-group>label {
	padding: var(- -input-padding-y) var(- -input-padding-x);
}

.form-label-group>label {
	position: absolute;
	top: 0;
	left: 0;
	display: inline_block;
	width: 100%;
	margin-bottom: 0;
	/* Override default `<label>` margin */
	line-height: 1.5;
	color: #495057;
	border: 1px solid transparent;
	border-radius: .25rem;
	transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
	color: transparent;
}

.form-label-group input:-ms-input-placeholder {
	color: transparent;
}

.form-label-group input::-ms-input-placeholder {
	color: transparent;
}

.form-label-group input::-moz-placeholder {
	color: transparent;
}

.form-label-group input::placeholder {
	color: transparent;
}

.form-label-group input:not(:placeholder-shown) {
	padding-top: calc(var(- -input-padding-y)+ var(- -input-padding-y)* (2/3));
	padding-bottom: calc(var(- -input-padding-y)/3);
}

.form-label-group input:not(:placeholder-shown) ~label {
	padding-top: calc(var(- -input-padding-y)/3);
	padding-bottom: calc(var(- -input-padding-y)/3);
	font-size: 12px;
	color: #777;
}
</style>

<script>
	function idcheck() {
		if (document.joinform.id.value == "") {
			alert("아이디를 입력해주세요.");
			document.joinform.id.focus();
			return false;
		}

		var url = "id_check_form?id=" + document.joinform.id.value;

		window.open(url, "_blank_1",
						"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=300");
	}
</script>
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
			<div class="col-lg-10 col-xl-9 mx-auto">
				<div class="card card-signin flex-row my-5">
					<div class="card-img-left d-none d-md-flex">
						<!-- Background image for card set in CSS! -->
					</div>
					<div class="card-body">
						<h5 class="card-title text-center">Join</h5>

						<!-- Form 시작 -->
						<form class="form-signin" id="join" action="join" method="post" name="joinform">
							<div class="form-label-group">
								<input type="text" id="id" name="id" class="form-control" placeholder="id"
									required autofocus value="${id}"> 
								<input type="hidden" name= "reid" id="reid"> <label for="id">id</label>	
							</div>

							<!-- 아이디 체크 -->
							<div class="form-label-group">
								<button
									class="btn btn-secondary form-control"
									type="button" onclick="idcheck()">ID Check</button>
							</div>

							<div class="form-label-group">
								<input type="password" id="pwd" name="pwd" class="form-control"
									placeholder="Password" required> <label for="pwd">password</label>
							</div>

							<div class="form-label-group">
								<input type="password" id="pwdcheck" name="pwdcheck" class="form-control"
									placeholder="Confirm Password" required> <label
									for="pwdcheck">Confirm password</label>
							</div>

							<hr>

							<div class="form-label-group">
								<input type="text" id="name" name="name" class="form-control" placeholder="name" required>
								<label for="name">name</label>
							</div>
							
							<!-- 문제의 input 부분 -->
							<div class="form-label-group">
								<input type="email" id="email" name="email" class="form-control" placeholder="email">
								<label for="email">email</label>
							</div>

							<hr>

							<div class="form-label-group">
								<button
									class="btn btn-secondary form-control"
									type="button" onclick="openZipSearch()">Search</button>
							</div>

							<br>

							<div class="form-label-group">
								<input type="text" id="phone" name="phone" class="form-control" placeholder="phone" required>
								<label for="phone">phone</label>
							</div>

							<input type="button"
								class="btn btn-primary form-control"
								onclick="go_save()" value="Register"> 
								
								<a class="d-block text-center mt-2 small" href="./login.jsp">Sign In</a>
							<hr class="my-4">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>