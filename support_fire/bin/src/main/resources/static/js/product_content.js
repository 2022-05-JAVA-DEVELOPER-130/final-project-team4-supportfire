function productSizeForm_p(productSize, data) {
	return ` 
	<li data-v-7ade2d82="" class="select_item">
     <button data-v-7ade2d82="" role="button" aria-selected="false" class="select_link buy1 bid p_${data.pd_no}" id="${data.pd_no}" value="${data.pd_no}">
           <div data-v-7ade2d82="" class="link_inner">
              <span data-v-7ade2d82="" class="size">
                 <!----> ${productSize.s_size}
              </span><span data-v-7ade2d82="" class="price" id="price_form_p" >${data.min_price}</span>
           </div>
        </button></li>
        `;
}
function productSizeForm_s(productSize, data) {
	return ` 
	<li data-v-7ade2d82="" class="select_item">
     <button data-v-7ade2d82="" role="button" aria-selected="false" class="select_link sell1 bid s_${data.pd_no}" id="${data.pd_no}" value="${data.pd_no}">
           <div data-v-7ade2d82="" class="link_inner">
              <span data-v-7ade2d82="" class="size">
                 <!----> ${productSize.s_size}
              </span><span data-v-7ade2d82="" class="price" id="price_form_s" >${data.min_price}</span>
           </div>
        </button></li>
        `;
}

function productSizeNameForm(product) {
	return ` 
	<div data-v-16a54f91="" class="product_thumb">
                              <div data-v-edf7886c="" data-v-16a54f91="" class="product"
                                 style="background-color: rgb(235, 240, 245); padding-bottom: 0px;">
                                 <picture data-v-6c8b3524="" data-v-edf7886c=""
                                    class="picture product_img">
                                 <source data-v-6c8b3524="" type="image/webp"
                                    srcset="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m_webp">
                                 <source data-v-6c8b3524=""
                                    srcset="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m">
                                    
                                 <!-- 상품이미지 -->
                                 <img data-v-6c8b3524="" alt="상품 이미지"
                                    src="${product.p_image}?type=m" class="image"></picture>
                                 <!---->
                                 <!---->
                                 <!---->
                              </div>
                           </div>
                           <div class="product_detail" id="p_content">
                              <p data-v-16a54f91="" class="code" style="padding-left: 10px;">${product.p_name}</p>
                              <p data-v-16a54f91="" class="translated_name">&nbsp;&nbsp; </p>
                              <!---->
                              &nbsp;&nbsp;<div data-v-6da6dff3="" data-v-16a54f91=""
                                 class="badge badge_product shipping_express">빠른배송</div>
                           </div>
        `;
}

function sizeClick_p(productDetail, productSize, product, buymin){
	return `
	<div data-v-7598e8e5="" data-v-34b11929=""
		class="container buy sm step-1 scp">
		<input type="hidden" id="hiddenPd_no_buy" value="${productDetail.pd_no}">
		<!---->
		<div data-v-7598e8e5="" class="content">
			<div data-v-dc1edea6="" data-v-7598e8e5="" class="buy_immediate">
				<div data-v-2b95d831="" data-v-dc1edea6="" class="product_info_area">
					<div data-v-2b95d831="" class="product_info">
						<div data-v-edf7886c="" data-v-2b95d831="" class="product"
							style="background-color: rgb(235, 240, 245);">
							<picture data-v-6c8b3524="" data-v-edf7886c=""
								class="picture product_img">
							<source data-v-6c8b3524="" type="image/webp"
								srcset="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=l_webp">
							<source data-v-6c8b3524=""
								srcset="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=l">
							<img data-v-6c8b3524="" alt="상품 이미지"
								src="${product.p_image}?type=l" class="image"></picture>
							<!---->
							<!---->
							<!---->
						</div>
						<div data-v-2b95d831="" class="product_detail">
							<strong data-v-2b95d831="" class="model_number">
								<!---->315122-111/CW2288-111
							</strong>
							<p data-v-2b95d831="" class="model_title">${product.p_name}</p>
							<div data-v-2b95d831="" class="model_desc">
								<p data-v-2b95d831="" class="size_txt">${productSize.s_size}</p>
								<!---->
							</div>
						</div>
					</div>
				</div>
				<div data-v-158ed304="" data-v-dc1edea6=""
					class="price_descision_box">
					<ul data-v-638c1354="" data-v-158ed304="" class="price_list">
						<li data-v-638c1354="" class="list_item"><p
								data-v-638c1354="" class="title">즉시 구매가</p>
							<span data-v-638c1354="" class="price">${productDetail.pd_price}</span><span
							data-v-638c1354="" class="unit">원</span></li>
						<li data-v-638c1354="" class="list_item"><p
								data-v-638c1354="" class="title">즉시 판매가</p>
							<span data-v-638c1354="" class="price">${buymin}</span><span
							data-v-638c1354="" class="unit">원</span></li>
					</ul>
					<div data-v-158ed304="" class="instant_group">
						<div data-v-b6b2883e="" data-v-158ed304=""
							class="tab_area buy_tab">
							<ul data-v-b6b2883e="" role="tablist" class="tab_list">
								<li data-v-b6b2883e="" role="tab" aria-selected="false"
									aria-controls="panel1" class="item" id="bid"><a data-v-b6b2883e=""
									href="" class="item_link">구매 입찰</a></li>
								<li data-v-b6b2883e="" role="tab" aria-selected="true"
									aria-controls="panel2" class="item on" id="imm"><a
									data-v-b6b2883e="" href="payment.jsp" class="item_link">즉시 구매</a></li>
							</ul>
							<!---->
							<!---->
						</div>
						<div data-v-15aa5096="" data-v-158ed304="" class="price_now">
							<dl data-v-15aa5096="" class="price_now_box">
								<dt data-v-15aa5096="" class="price_now_title">즉시 구매가</dt>
								<dd data-v-15aa5096="" class="price">
									<span data-v-15aa5096="" class="amount">${productDetail.pd_price}</span><span
										data-v-15aa5096="" class="unit">원</span>
								</dd>
							</dl>
							<div data-v-15aa5096="" class="price_warning"
								style="display: none;">
								<!---->
							</div>
						</div>
						<div data-v-158ed304="" class="price_bind">
							<p data-v-158ed304="" class="price_bind_empty">총 결제금액은 다음
								화면에서 계산됩니다.</p>
						</div>
					</div>
				</div>
				<!---->
				
			</div>
			<!---->
			<!---->
		</div>
		<!---->
		<!---->
	</div>
	`;
	
}

function sizeClick_p_null(productSize, product, buymin){
	return `
	<div data-v-7598e8e5="" data-v-34b11929=""
		class="container buy sm step-1" scp>
		<input type="hidden" id="hiddenPd_no_buy" value="${productDetail.pd_no}">
		<!---->
		<div data-v-7598e8e5="" class="content">
			<div data-v-dc1edea6="" data-v-7598e8e5="" class="buy_immediate">
				<div data-v-2b95d831="" data-v-dc1edea6="" class="product_info_area">
					<div data-v-2b95d831="" class="product_info">
						<div data-v-edf7886c="" data-v-2b95d831="" class="product"
							style="background-color: rgb(235, 240, 245);">
							<picture data-v-6c8b3524="" data-v-edf7886c=""
								class="picture product_img">
							<source data-v-6c8b3524="" type="image/webp"
								srcset="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=l_webp">
							<source data-v-6c8b3524=""
								srcset="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=l">
							<img data-v-6c8b3524="" alt="상품 이미지"
								src="${product.p_image}?type=l" class="image"></picture>
							<!---->
							<!---->
							<!---->
						</div>
						<div data-v-2b95d831="" class="product_detail">
							<strong data-v-2b95d831="" class="model_number">
								<!---->315122-111/CW2288-111
							</strong>
							<p data-v-2b95d831="" class="model_title">${product.p_name}</p>
							<div data-v-2b95d831="" class="model_desc">
								<p data-v-2b95d831="" class="size_txt">${productSize.s_size}</p>
								<!---->
							</div>
						</div>
					</div>
				</div>
				<div data-v-158ed304="" data-v-dc1edea6=""
					class="price_descision_box">
					<ul data-v-638c1354="" data-v-158ed304="" class="price_list">
						<li data-v-638c1354="" class="list_item"><p
								data-v-638c1354="" class="title">즉시 구매가</p>
							<span data-v-638c1354="" class="price">${productDetail.pd_price}</span><span
							data-v-638c1354="" class="unit">원</span></li>
						<li data-v-638c1354="" class="list_item"><p
								data-v-638c1354="" class="title">즉시 판매가</p>
							<span data-v-638c1354="" class="price">${buymin}</span><span
							data-v-638c1354="" class="unit">원</span></li>
					</ul>
					<div data-v-158ed304="" class="instant_group">
						<div data-v-b6b2883e="" data-v-158ed304=""
							class="tab_area buy_tab">
							<ul data-v-b6b2883e="" role="tablist" class="tab_list">
								<li data-v-b6b2883e="" role="tab" aria-selected="false"
									aria-controls="panel1" class="item" id="bid"><a data-v-b6b2883e=""
									href="" class="item_link">구매 입찰</a></li>
								<li data-v-b6b2883e="" role="tab" aria-selected="true"
									aria-controls="panel2" class="item on" id="imm"><a
									data-v-b6b2883e="" href="payment.jsp" class="item_link">즉시 구매</a></li>
							</ul>
							<!---->
							<!---->
						</div>
						<div data-v-15aa5096="" data-v-158ed304="" class="price_now">
							<dl data-v-15aa5096="" class="price_now_box">
								<dt data-v-15aa5096="" class="price_now_title">즉시 구매가</dt>
								<dd data-v-15aa5096="" class="price">
									<span data-v-15aa5096="" class="amount">${productDetail.pd_price}</span><span
										data-v-15aa5096="" class="unit">원</span>
								</dd>
							</dl>
							<div data-v-15aa5096="" class="price_warning"
								style="display: none;">
								<!---->
							</div>
						</div>
						<div data-v-158ed304="" class="price_bind">
							<p data-v-158ed304="" class="price_bind_empty">총 결제금액은 다음
								화면에서 계산됩니다.</p>
						</div>
					</div>
				</div>
				<!---->
				
			</div>
			<!---->
			<!---->
		</div>
		<!---->
		<!---->
	</div>
	`;
	
}


function sizeClick_s(productDetail, productSize, product, buymin){
	return `
	<div data-v-7598e8e5="" data-v-34b11929=""
		class="container sell sm step-1">
		<input type="hidden" id="hiddenPd_no_sell" value="${productDetail.pd_no}">
		<!---->
		<div data-v-7598e8e5="" class="content">
			<div data-v-dc1edea6="" data-v-7598e8e5="" class="buy_immediate">
				<div data-v-2b95d831="" data-v-dc1edea6="" class="product_info_area">
					<div data-v-2b95d831="" class="product_info">
						<div data-v-edf7886c="" data-v-2b95d831="" class="product"
							style="background-color: rgb(235, 240, 245);">
							<picture data-v-6c8b3524="" data-v-edf7886c=""
								class="picture product_img">
							<source data-v-6c8b3524="" type="image/webp"
								srcset="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=l_webp">
							<source data-v-6c8b3524=""
								srcset="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=l">
							<img data-v-6c8b3524="" alt="상품 이미지"
								src="${product.p_image}?type=l" class="image"></picture>
							<!---->
							<!---->
							<!---->
						</div>
						<div data-v-2b95d831="" class="product_detail">
							<strong data-v-2b95d831="" class="model_number">
								<!---->315122-111/CW2288-111
							</strong>
							<p data-v-2b95d831="" class="model_title">${product.p_name}</p>
							<div data-v-2b95d831="" class="model_desc">
								<p data-v-2b95d831="" class="size_txt">${productSize.s_size}</p>
								<!---->
							</div>
						</div>
					</div>
				</div>
				<div data-v-158ed304="" data-v-dc1edea6=""
					class="price_descision_box">
					<ul data-v-638c1354="" data-v-158ed304="" class="price_list">
						<li data-v-638c1354="" class="list_item"><p
								data-v-638c1354="" class="title">즉시 구매가</p>
							<span data-v-638c1354="" class="price">${buymin}</span><span
							data-v-638c1354="" class="unit">원</span></li>
						<li data-v-638c1354="" class="list_item"><p
								data-v-638c1354="" class="title">즉시 판매가</p>
							<span data-v-638c1354="" class="price">${productDetail.pd_price}</span><span
							data-v-638c1354="" class="unit">원</span></li>
					</ul>
					<div data-v-158ed304="" class="instant_group">
						<div data-v-b6b2883e="" data-v-158ed304=""
							class="tab_area buy_tab">
							<ul data-v-b6b2883e="" role="tablist" class="tab_list">
								<li data-v-b6b2883e="" role="tab" aria-selected="false"
									aria-controls="panel1" class="item" id="bid"><a data-v-b6b2883e=""
									href="" class="item_link">판매 입찰</a></li>
								<li data-v-b6b2883e="" role="tab" aria-selected="true"
									aria-controls="panel2" class="item on" id="imm"><a
									data-v-b6b2883e="" href="payment.jsp" class="item_link">즉시 판매</a></li>
							</ul>
							<!---->
							<!---->
						</div>
						<div data-v-15aa5096="" data-v-158ed304="" class="price_now">
							<dl data-v-15aa5096="" class="price_now_box">
								<dt data-v-15aa5096="" class="price_now_title">즉시 판매가</dt>
								<dd data-v-15aa5096="" class="price">
									<span data-v-15aa5096="" class="amount">${productDetail.pd_price}</span><span
										data-v-15aa5096="" class="unit">원</span>
								</dd>
							</dl>
							<div data-v-15aa5096="" class="price_warning"
								style="display: none;">
								<!---->
							</div>
						</div>
						<div data-v-158ed304="" class="price_bind">
							<p data-v-158ed304="" class="price_bind_empty">총 결제금액은 다음
								화면에서 계산됩니다.</p>
						</div>
					</div>
				</div>
				<!---->
				
			</div>
			<!---->
			<!---->
		</div>
		<!---->
		<!---->
	</div>
	`;
	
}