



function payment_modify_form_content(){
	return`


	<section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form name="f" id="payment_modify_form" method="post">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            
                            <h6 class="checkout__title">주소추가하기</h6>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>이름<span>*</span></p>
                                        <input type="text" palceholder="수령">
                                    </div>
                                </div>
                               
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>휴대전화<span>*</span></p>
                                        <input type="text">
                                    </div>
                                </div>
                                
                            </div>
                            
                            
                            
                            <div class="checkout__input">
                                <p>우편번호<span>*</span></p>
                                <input type="button" onclick="showDelivery()" value="우편번호 찾기" class="input_txt">
                                <input type="text" id="sample4_postcode">
                            </div>
                            <div class="checkout__input">
                                <p>주소<span>*</span></p>
                                <input type="text" placeholder="도로명주소" class="checkout__input__add" id="sample4_roadAddress">
                                <input type="text" placeholder="지번주소" id="sample4_jibunAddress" >
                            </div>
                            
                            <div class="checkout__input">
                                <p>배송메모<span>*</span></p>
                                <input type="text"
                                placeholder="배송메모">
                            </div>
                            <div class="checkout__input__checkbox">
                                <label for="acc">
                                  기본 배송지로설정
                                    <input type="checkbox" id="acc">
                                    <span class="checkmark"></span>
                                </label>
                            <input type="button" onclick="insertAddress()" value="저장하기" class="input_txt" id="insertAddress">
                               
                            </div>
                        </div>
                       
    </section>
	</form>
	
	
	`;
}


function address_form_content(){
	return`
	
	<div data-v-6a5da210="" class="section_content">
	<div data-v-6a5da210="" class="delivery_info">
		<div data-v-05a4f438="" data-v-6a5da210="" class="address_info">
			<dl data-v-05a4f438="" class="info_list">
				<div data-v-05a4f438="" class="info_box">
					<dt data-v-05a4f438="" class="title">받는 분</dt>
					<dd data-v-05a4f438="" class="desc">김**</dd>
				</div>
				<div data-v-05a4f438="" class="info_box">
					<dt data-v-05a4f438="" class="title">연락처</dt>
					<dd data-v-05a4f438="" class="desc">010-4***-*829</dd>
				</div>
				<div data-v-05a4f438="" class="info_box">
					<dt data-v-05a4f438="" class="title">배송 주소</dt>
					<dd data-v-05a4f438="" class="desc">서울 강동구 동남로 733 (길동) 202호</dd>
				</div>
			</dl>
		</div>
		<a data-v-3d1bcc82="" data-v-6a5da210="" href="#"
			class="btn btn_edit outlinegrey small"> 변경 </a>
	</div>
</div>`;
}