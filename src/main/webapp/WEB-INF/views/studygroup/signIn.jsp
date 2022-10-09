<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/docs/5.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

	<!-- Favicons -->
	<link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
	<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
	<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
	<link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
	<link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
	<link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
	<meta name="theme-color" content="#712cf9">
	<link
			href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
			rel="stylesheet">
	<link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css"
		  rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
			href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
			rel="stylesheet">
	<link href="${path}/resources/static/css/signIn.css" rel="stylesheet">
	<script type="text/javascript" src="${path}/resources/static/js/signIn.js"></script>
	<title>Coding Study Friends</title>
	<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="black">
<nav class="navbar bg-info fixed-top">
	<div class="container-fluid">
		<a class="navbar-brand" href="list"
		   style="color: white; font-weight: bold; margin-left: 10px; font-size: 30px">Coding
			Study Friends</a>
		<div class="buttons" >
			<a href="login" class="btn btn-secondary" style="margin-right: 10px">로그인</a>
			<button class="navbar-toggler" type="button" style="float: right;"
					data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
					aria-controls="offcanvasNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div class="offcanvas offcanvas-end bg-info" style="color: white;"
			 tabindex="-1" id="offcanvasNavbar"
			 aria-labelledby="offcanvasNavbarLabel">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasNavbarLabel">회원정보</h5>
				<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
			</div>
			<div class="offcanvas-body">
				<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
					<li class="nav-item"><a class="nav-link active"
											aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> Dropdown </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#">Something else
								here</a></li>
						</ul>
					</li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search"
						   placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</div>
</nav>



<div class="modal modal-signin position-static d-block bg-secondary py-5" tabindex="-1" role="dialog" id="modalSignin">
	<nav class="navbar bg-info fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="list"
			   style="color: white; font-weight: bold; margin-left: 10px; font-size: 30px">Coding Study Friends</a>
			<div class="buttons" style="padding:10px">
				<a href="login" class="btn btn-secondary">로그인</a>
				<a href="signIn" class="btn btn-primary"  style="margin-right:15px;">회원가입</a>
				<button class="navbar-toggler" type="button" style="float: right;"
						data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
						aria-controls="offcanvasNavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>

			<div class="offcanvas offcanvas-end bg-info" style="color: white;"
				 tabindex="-1" id="offcanvasNavbar"
				 aria-labelledby="offcanvasNavbarLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasNavbarLabel">회원정보</h5>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
							aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
						<li class="nav-item"><a class="nav-link active"
												aria-current="page" href="#">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
						<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> Dropdown </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another action</a></li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li><a class="dropdown-item" href="#">Something else
									here</a></li>
							</ul>
						</li>
					</ul>
					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							   placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</div>
	</nav>

	<div class="modal-dialog" role="document">
		<div class="modal-content rounded-4 shadow" style="margin-top: 140px">
			<div class="modal-header p-5 pb-4 border-bottom-0" >
				<!-- <h1 class="modal-title fs-5" >Modal title</h1> -->
				<h1 class="fw-bold mb-0 fs-2">회원가입</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>

			<div class="modal-body p-5 pt-0">
				<form method="post" class="">
					<div class="form-floating mb-3">
						<input type="email" class="form-control rounded-3"
							   name="email" value="${ students.email }" id="floatingInput" placeholder="name@example.com" required>
						<label for="floatingInput">Email address</label>
					</div>
					<div class="form-floating mb-3">
						<input type="password" class="form-control rounded-3"
							   name="password" value="${ students.password }" id="floatingPassword" placeholder="Password" required>
						<label for="floatingPassword">Password</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control rounded-3"
							   name="nickName" value="${ students.nickName }" placeholder="Nick Name" required>
						<label for="floatingPassword">Nick Name</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control rounded-3"
							   name="address" value="${ students.address }" placeholder="Address" required>
						<label for="floatingPassword">Address</label>
					</div>
<%--					<input type="checkbox"> <small class="text-muted">코딩프렌즈 회원약관에 동의합니다.</small>--%>
					<br><br>
					<button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">Sign up</button>
				</form>
			</div>
		</div>
	</div>
</div>


<jsp:include page="/template/footer.jsp"></jsp:include>
</body>
</html>
