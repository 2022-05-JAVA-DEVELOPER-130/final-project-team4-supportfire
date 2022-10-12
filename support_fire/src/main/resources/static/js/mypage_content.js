function mypage_form(member){
	return `
	
                
                    
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item" style="margin-left: 60px;">
                            <img style="height: 170px; width: 170px" class="product__item__pic set-bg" src="img/mypage_img.png" alt="">
                
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg">
                                    
                                    <ul>
			                            <li>
			                                <h4></h4>
			                                <p><br></p>
			                            </li>
			                            <li>
			                                <h4>${member.m_id}</h4>
			                                <p>${member.m_email}<br></p>
			                            </li>
                        			</ul>
                                    <div class="">
                                    <h4></h4>
                                    <h5></h5>
                                    <button  class="primary-btn">프로필수정</button>
                                
                                </div> 
                                </div>
                                
                            </div>
                        </div>
             <div>
                                    <div class="section-title">
                                            <h4>구매내역</h4>
			                       </div>
                        </div>
                        <div class="col-lg-12 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" >
                                    <!---start----> 
                                    <div class="shopping__cart__table">
				                        <table>
				                            <thead>
				                                <tr>
				                                    <th>이미지</th>
				                                    <th>이름</th>
				                                    <th>가격</th>
				                                    <th>신청일</th>
				                                    <th>종료일</th>
				                                    <th>상태</th>
				                                </tr>
				                            </thead>
				                            <tbody>
				                                <tr>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__pic">
				                                            <img src="./img/shopping-cart/cart-1.jpg" alt="">
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                            <h6>T-shirt</h6>
				                                           
				                                        </div>
				                                    </td>
				                                     <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                           
				                                            <h5>$98.49</h5>
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                            <h5>10/12</h5>
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item"> 
				                                    	<div class="product__cart__item__text">
				                                            <h5>10/15</h5>
				                                        </div></td>
				                                    <td class="product__cart__item">
				                                    	 <div class="product__cart__item__text">
				                                            <h5>입찰중</h5>
				                                        </div>
				                                    </td>
				                                </tr>
				                                
				                            </tbody>
				                        </table>
                    				</div>
                                    <!-- end -->
                       
                                    <!-- end -->
                                </div>
                                
                            </div>
                        </div>
                        <div>
                                   <div class="section-title">
                                            <h4>판매내역</h4>
			                      </div>
                        </div>
                        <div class="col-lg-12 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" >
                                    <!---start----> 
                                    <div class="shopping__cart__table">
				                        <table>
				                            <thead>
				                                <tr>
				                                    <th>이미지</th>
				                                    <th>이름</th>
				                                    <th>가격</th>
				                                    <th>신청일</th>
				                                    <th>종료일</th>
				                                    <th>상태</th>
				                                </tr>
				                            </thead>
				                            <tbody>
				                                <tr>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__pic">
				                                            <img src="img/shopping-cart/cart-1.jpg" alt="">
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                            <h6>T-shirt</h6>
				                                           
				                                        </div>
				                                    </td>
				                                     <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                           
				                                            <h5>$98.49</h5>
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item">
				                                        <div class="product__cart__item__text">
				                                            <h5>10/12</h5>
				                                        </div>
				                                    </td>
				                                    <td class="product__cart__item"> 
				                                    	<div class="product__cart__item__text">
				                                            <h5>10/15</h5>
				                                        </div></td>
				                                    <td class="product__cart__item">
				                                    	 <div class="product__cart__item__text">
				                                            <h5>입찰중</h5>
				                                        </div>
				                                    </td>
				                                </tr>
				                                
				                            </tbody>
				                        </table>
                    				</div>
                                    <!-- end -->
                                </div>
                                
                            </div>
                        </div>
    
                    </div>
                    
                </div>
            </div>
        </div>
    </section>
	`;
	
}