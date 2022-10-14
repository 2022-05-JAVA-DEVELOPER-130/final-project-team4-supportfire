function payment_modify_form_content(payment){
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