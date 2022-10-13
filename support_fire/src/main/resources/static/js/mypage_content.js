function mypage_form(member){
	return `
	
                                    <ul>
			                            <li>
			                                <h4></h4>
			                                <p><br></p>
			                            </li>
			                            <li>
			                                <h4>${member.m_name}</h4>
			                                <h4>${member.m_id}</h4>
			                                <p>${member.m_email}<br></p>
			                            </li>
                        			</ul>
                                    <div class="">
                                    <h4></h4>
                                    <h5></h5>
                                    <button  class="primary-btn" id="modify">프로필수정</button>
                                
                                </div> 
	`;
	
}

function modify_form(member){
	return `
	  <div>
                  <div class="section-title">
                      <h4 style="font-weight: 900">회원정보수정</h4>
			     </div>
               <hr>
    		</div>
    
                                    <!---start----> 
   <div>
        <div class="container">
                    <div class="contact__form">
                        <form action="#" id="modi_form">
                            <div class="row">
                                <div>
		                            <span>아이디</span><input type="text" name="m_id" id="m_id" placeholder="ID" value="${member.m_id}" readonly><font id="msg_id" color="red"></font>
                                    <span>비밀번호</span><input type="password" name="m_password" id="m_password" placeholder="password" value="${member.m_password}">
                                    <span>비밀번호 확인</span><input type="password" name="m_password_acc" placeholder="password" value="${member.m_password}">
                                    <span>이름</span><input type="text" name="m_name" id="m_name" placeholder="ex) 홍길동" value="${member.m_name}">
                                    <span>핸드폰 번호</span><input type="number" name="m_phone" id="m_phone" placeholder="ex) 01012345678" value="${member.m_phone}">
                                    <span>생년월일</span><input type="number" name="m_birth" id="m_birth" placeholder="ex) 970902" value="${member.m_birth}">
                                    <span>이메일</span><input type="text" name="m_email" id="m_email" placeholder="Email" value="${member.m_email}">
                                    <span>주소</span><input type="text" name="m_address" id="m_address" placeholder="address" value="${member.m_address}">
                                    <input type="hidden" id="m_gender" name="m_gender" value="${member.m_gender}">
									<div></div>
                                </div>
                                <div class="col-lg-12">
                                    <button type="submit" class="site-btn" style="margin-top: 50px; margin-left: 260px;" id="modify_btn">정보 수정</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>
	
	`;
	
}