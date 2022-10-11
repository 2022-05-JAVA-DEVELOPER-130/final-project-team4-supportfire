function login_form(){
	return `
	<section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>로그인</h4>
                        <div class="breadcrumb__links">
                            <a href="./login_form.jsp">로그인</a>
                            <span>로그인</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  <main class="ssd">
    <div class="container">
      <div class="card login-card">
        <div class="row no-gutters">
          <div class="col-md-5">
            <img src="img/login.jpg" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="img/logo.svg" alt="logo" class="logo">
              </div>
              <p class="login-card-description">Sign into your account</p>
              <form action="#!" id="login_form">
                  <div class="form-group">
                    <label for="email" class="sr-only">Email</label>
                    <input type="text" name="m_id" id="m_id" class="form-control" placeholder="ID"><font id="msg_id" color="red"></font>
                  </div>
                  <div class="form-group mb-4">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" name="m_password" id="m_password" class="form-control" placeholder="***********"><font id="msg_pass" color="red"></font>
                  </div>
                  <input name="login" id="login_btn" class="btn btn-block login-btn mb-4" type="button" value="Login">
                </form>
                <a href="#!" class="forgot-password-link" id=id_search>아이디 찾기</a> |
                <a href="#!" class="forgot-password-link" id=pass_search>비밀번호 찾기</a>
                <p class="login-card-footer-text"><a href="#!" class="text-reset" id="join_form">회원가입</a></p>
                <nav class="login-card-footer-nav">
                  <a href="#!">Terms of use.</a>
                  <a href="#!">Privacy policy</a>
                </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
	`;
}
	
	function id_search(){
		return `
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
    
	 <div class="container help" data-v-3007c576>
					<div class="content lg">
						<div class="help_area">
							<div>
								<h2 class="help_title">아이디 찾기</h2>
								<div class="help_notice">
									<p class="notice_txt">
										가입 시 등록한 휴대폰 번호를 입력하면<br> 아이디의 일부를 알려드립니다.
									</p>
								</div>
								<div class="input_box" data-v-6c561060>
									<h3 class="input_title" data-v-6c561060>휴대폰 번호</h3>
									<div class="input_item" data-v-6c561060>
										<input type="number" placeholder="가입하신 휴대폰 번호"
											autocomplete="off" value="" class="input_txt" data-v-6c561060 id="phone_search_id">
									</div>
								</div>
								<div class="help_btn_box" id="id_search_form">
									<a disabled="disabled" href="#" class="btn full solid disabled"
										data-v-3d1bcc82 data-v-3d1bcc82 id="id_search_btn"> 아이디 찾기 </a>
								</div>
							</div>
						</div>
				</div>	
		`;
	}
	
	function id_search_btn(){
		return `
		<a disabled="disabled" href="#" class="btn full solid"
		data-v-3d1bcc82 data-v-3d1bcc82 id="id_search_btn"> 아이디 찾기 </a>
		`;
	}
	
	function id_search_btn1(){
		return `
		<a disabled="disabled" href="#" class="btn full solid disabled"
		data-v-3d1bcc82 data-v-3d1bcc82 id="id_search_btn"> 아이디 찾기 </a>
		`;
	}
	
	function pass_search(){
		return `
		<section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>로그인</h4>
                        <div class="breadcrumb__links">
                            <a href="./login_form.jsp">로그인</a>
                            <span>비밀번호찾기</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
	 <div class="container help" data-v-3007c576>
					<div class="content lg">
						<div class="help_area">
							<div>
								<h2 class="help_title">비밀번호 찾기</h2>
								<div class="help_notice">
									<p class="notice_txt">
										가입 시 등록하신 휴대폰 번호와 아이디를 입력하시면,<br>휴대폰으로 임시 비밀번호를 전송해 드립니다.
									</p>
								</div>
								<div class="input_box" data-v-6c561060>
									<h3 class="input_title" data-v-6c561060>휴대폰 번호</h3>
									<div class="input_item" data-v-6c561060>
										<input type="number" placeholder="가입하신 휴대폰 번호"
											autocomplete="off" value="" class="input_txt" data-v-6c561060 id="phone_search_pass">
									</div>
									<p class="input_error" data-v-6c561060>휴대폰 번호를 정확히 입력해주세요.</p>
								</div>
								<div class="input_box" data-v-6c561060>
									<h3 class="input_title" data-v-6c561060>아이디 주소</h3>
									<div class="input_item" data-v-6c561060>
										<input type="text" placeholder="예) kream@kream.co.kr"
											autocomplete="off" value="" class="input_txt" data-v-6c561060 id="m_id">
									</div>
									<p class="input_error" data-v-6c561060>아이디를 정확히 입력해주세요.</p>
								</div>
								<div class="help_btn_box" id="pass_search_form">
									<a disabled="disabled" href="#" class="btn full solid disabled"
										data-v-3d1bcc82 data-v-3d1bcc82> 문자 발송하기 </a>
								</div>
							</div>
						</div>
					</div>
		`;
	}
	
	function pass_search_btn(){
		return `
		<a disabled="disabled" href="#" class="btn full solid"
				data-v-3d1bcc82 data-v-3d1bcc82> 문자 발송하기 </a>
		`;
	}
	
	function pass_search_btn1(){
		return `
		<a disabled="disabled" href="#" class="btn full solid disabled"
				data-v-3d1bcc82 data-v-3d1bcc82> 문자 발송하기 </a>
		`;
	}