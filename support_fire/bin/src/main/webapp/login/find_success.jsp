<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login Template</title>
<link
	href="../https://fonts.googleapis.com/css?family=Karla:400,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="../https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="../https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/login.css">
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="../css/nice-select.css" type="text/css">
<link rel="stylesheet" href="../css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../css/test.css" type="text/css">

<link rel="stylesheet" href="../_nuxt/css/1381ce9.css">
<link rel="stylesheet" href="../_nuxt/css/734fa9a.css">
<link rel="stylesheet" href="../_nuxt/css/171b9ac.css">
<link rel="stylesheet" href="../_nuxt/css/a3c2917.css">
<link rel="stylesheet" href="../_nuxt/css/4e3da1f.css">
<link rel="stylesheet" href="../_nuxt/css/6502f07.css">
<link rel="stylesheet" href="../_nuxt/css/0036557.css">



</head>
<body>
	<!-- Offcanvas Menu Begin -->

	<jsp:include page="../top.jsp" />

	<!-- Offcanvas Menu End -->

	<!-- Header Section Begin -->

	<jsp:include page="../header.jsp" />

	<!-- Header Section End -->
	<!-- Header Section End -->
	 <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>로그인</h4>
                        <div class="breadcrumb__links">
                            <a href="./login_form.jsp">로그인</a>
                            <span>아이디찾기</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	
	<div data-v-3007c576="" class="container help">
		<div class="content mo">
			<div class="help_area">
				<!---->
				<div>
					<h2 class="help_title success">
						<div>이메일 주소 찾기에</div> <div>성공하였습니다.</div>
					</h2>
					<div class="success_notice">
						<dl>
							<dt class="notice_title">이메일 주소</dt>
							<dd class="notice_txt">k*****8@naver.com</dd>
						</dl>
					</div>
					<div class="success_btn_box">
						<a data-v-3d1bcc82="" href="/login/find_password"
							class="btn outline large" type="button"> 비밀번호 찾기 </a><a
							data-v-3d1bcc82="" href="/login"
							class="btn nuxt-link-active solid large" type="button"> 로그인 </a>
					</div>
				</div>
			</div>
		</div>
		</div>
		
	<!---->
	<!-- <div class="card login-card">
        <img src="assets/images/login.jpg" alt="login" class="login-card-img">
        <div class="card-body">
          <h2 class="login-card-title">Login</h2>
          <p class="login-card-description">Sign in to your account to continue.</p>
          <form action="#!">
            <div class="form-group">
              <label for="email" class="sr-only">Email</label>
              <input type="email" name="email" id="email" class="form-control" placeholder="Email">
            </div>
            <div class="form-group">
              <label for="password" class="sr-only">Password</label>
              <input type="password" name="password" id="password" class="form-control" placeholder="Password">
            </div>
            <div class="form-prompt-wrapper">
              <div class="custom-control custom-checkbox login-card-check-box">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1">Remember me</label>
              </div>              
              <a href="#!" class="text-reset">Forgot password?</a>
            </div>
            <input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">
          </form>
          <p class="login-card-footer-text">Don't have an account? <a href="#!" class="text-reset">Register here</a></p>
        </div>
      </div> -->
	</div>
	</main>
	<script src="../https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="../https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="../https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<!-- Offcanvas Menu Begin -->

	<jsp:include page="../footer.jsp" />

	<!-- Offcanvas Menu End -->
</body>
</html>
