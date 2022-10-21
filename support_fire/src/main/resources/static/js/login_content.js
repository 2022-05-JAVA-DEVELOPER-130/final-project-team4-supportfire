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
            <img src="img/bg_info02.05e2a28.png" alt="login" class="login-card-img">
          </div>
          <div class="col-md-7">
            <div class="card-body">
              <div class="brand-wrapper">
                <img src="img/IMG_0608 (1).jpg" alt="logo" class="logo">
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
											<font id="msg_pass" color="red"></font>
									</div>
								</div>
								<div class="help_btn_box" id="id_search_form">
									<a disabled="disabled" href="" class="btn full solid disabled"
										data-v-3d1bcc82 data-v-3d1bcc82 id="id_search_btn"> 아이디 찾기 </a>
								</div>
							</div>
						</div>
				</div>	
		`;
	}
	
	function id_search_btn(){
		return `
		<a disabled="disabled" href="" class="btn full solid"
		data-v-3d1bcc82 data-v-3d1bcc82 id="id_search_btn" id="id_search_btn"> 아이디 찾기 </a>
		`;
	}
	
	function id_search_btn1(){
		return `
		<a disabled="disabled" href="" class="btn full solid disabled"
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
                            <a href="login_from">로그인</a>
                            <span>비밀번호 찾기</span>
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
											autocomplete="off" value="" class="input_txt" data-v-6c561060 id="m_id1">
									</div>
									<p class="input_error" data-v-6c561060>아이디를 정확히 입력해주세요.</p>
									<font id="msg_pass" color="red"></font>
								</div>
								<div class="help_btn_box" id="pass_search_form">
									<a disabled="disabled" href="" class="btn full solid disabled"
										data-v-3d1bcc82 data-v-3d1bcc82> 완료 </a>
								</div>
							</div>
						</div>
					</div>
		`;
	}
	
	function pass_search_btn(){
		return `
		<a disabled="disabled" href="" class="btn full solid"
				data-v-3d1bcc82 data-v-3d1bcc82 id="pass_search_btn"> 완료 </a>
		`;
	}
	
	function pass_search_btn1(){
		return `
		<a disabled="disabled" href="" class="btn full solid disabled"
				data-v-3d1bcc82 data-v-3d1bcc82> 완료 </a>
		`;
	}
	
	function id_search_com(id){
		return `
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
	
	<div data-v-3007c576="" class="container help" style="
												    margin-left: 750px;
												    padding-right: 600px;
												    margin-top: 50px;
												    margin-bottom: 50px;
												">
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
							<dd class="notice_txt">${id}</dd>
						</dl>
					</div>
					<div class="success_btn_box">
						<a data-v-3d1bcc82="" href="/login/find_password"
							class="btn outline large" type="button" id="pass_search_a"> 비밀번호 찾기 </a><a
							data-v-3d1bcc82="" href="" id="login_a"
							class="btn nuxt-link-active solid large" type="button"> 로그인 </a>
					</div>
				</div>
			</div>
		</div>
	</div>
		`;
		
		
	}
	
	
	function pass_search_com(pass){
		return `
		<section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>로그인</h4>
                        <div class="breadcrumb__links">
                            <a href="login_form">로그인</a>
                            <span>비밀번호 찾기</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	
	<div data-v-3007c576="" class="container help" style="
												    margin-left: 750px;
												    padding-right: 600px;
												    margin-top: 50px;
												    margin-bottom: 50px;
												">
		<div class="content mo">
			<div class="help_area">
				<!---->
				<div>
					<h2 class="help_title success">
						<div>비밀번호 찾기에</div> <div>성공하였습니다.</div>
					</h2>
					<div class="success_notice">
						<dl>
							<dt class="notice_title">비밀번호</dt>
							<dd class="notice_txt">${pass}</dd>
						</dl>
					</div>
					<div class="success_btn_box">
						<a data-v-3d1bcc82="" href=""
							class="btn nuxt-link-active solid large" type="button" id="login_a"> 로그인 </a>
					</div>
				</div>
			</div>
		</div>
	</div>
		`;
		
		
	}
	
	
function join_form(){
	return `
	<section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>회원가입</h4>
                        <div class="breadcrumb__links">
                            <a href="./join_form.jsp">회원가입</a>
                            <span>회원가입</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section Begin -->
    <section class="contact spad" style="padding-top: 15px;">
        <div class="container" style="margin-left: 750px;">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="contact__form">
                        <form action="#" id="join_form1">
                            <div class="row">
                                <div>
		                            <span>아이디</span><input type="text" name="m_id" id="m_id" placeholder="ID" value=""><font id="msg_id" color="red"></font>
                                    <span>비밀번호</span><input type="password" name="m_password" id="m_password" placeholder="password" value="">
                                    <span>비밀번호 확인</span><input type="password" name="m_password_acc" placeholder="password" value="">
                                    <span>이름</span><input type="text" name="m_name" id="m_name" placeholder="ex) 홍길동" value="">
                                    <span>핸드폰 번호</span><input type="number"  name="m_phone" id="m_phone" placeholder="ex) 01012345678" value="">
                                    <span>생년월일</span><input type="number" name="m_birth" id="m_birth" placeholder="ex) 970902" value="">
                                    <span>이메일</span><input type="text" name="m_email" id="m_email" placeholder="Email" value="">
                                    <span>남<input type="radio" name="m_gender"  id="radi" value="남" checked="checked"  style="width: 50px"/></span>
									<span>여<input type="radio" name="m_gender"  id="radi" value="여" style="width: 50px"/></span>
									<div></div>
									<div class="checkout__input">
										<p>
											<span>우편번호*</span>
										</p>
										<input type="button" class="asd" onclick="showDelivery()"
											value="우편번호 찾기" class="input_txt" style="background-color: rgba(0, 0, 0, 0.4); color: white; align-content: center;"> <input type="text"
											class="asd" name="a_zipcode" id="sample4_postcode">
								</div>
									<span>주소*</span> 
									<input type="text" class="asd" placeholder="도로명주소" class="checkout__input__add" name="m_address" id="sample4_roadAddress">
									 <input	type="text" class="asd" placeholder="지번주소" name="a_detail" id="sample4_jibunAddress">
			                      </div>
                                <div class="col-lg-12">
                                    <button type="submit" class="site-btn" id="write_action_btn">회원가입</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->
	`;
	
}
	