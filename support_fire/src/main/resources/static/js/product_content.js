function productSizeForm_p(productSize, data) {
	return ` 
	<li data-v-7ade2d82="" class="select_item">
     <button data-v-7ade2d82="" role="button" aria-selected="false" class="select_link buy1 bid p_${data.pd_no}" id="${data.pd_no}" value="${data.pd_no}">
	<input type="hidden" class="p_size" value="${productSize.s_size}">
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
     <input type="hidden" class="p_size" value="${productSize.s_size}">
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
                                 <source data-v-6c8b3524="" type="image"
                                    srcset="img/product/${product.p_image}">
                                 <source data-v-6c8b3524=""
                                    srcset="img/product/${product.p_image}">
                                    
                                 <!-- 상품이미지 -->
                                 <img src="img/product/${product.p_image}" class="image"></picture>
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
		<input type="hidden" id="hiddenPd_no_aa" value="${productDetail.pd_price}">
		<!---->
		<div data-v-7598e8e5="" class="content">
			<div data-v-dc1edea6="" data-v-7598e8e5="" class="buy_immediate">
				<div data-v-2b95d831="" data-v-dc1edea6="" class="product_info_area">
					<div data-v-2b95d831="" class="product_info">
						<div data-v-edf7886c="" data-v-2b95d831="" class="product"
							style="background-color: rgb(235, 240, 245);">
							<picture data-v-6c8b3524="" data-v-edf7886c=""
								class="picture product_img">
							<source data-v-6c8b3524="" type="image"
								srcset="img/product/${product.p_image}">
							<source data-v-6c8b3524=""
								srcset="img/product/${product.p_image}">
							<img data-v-6c8b3524="" alt="상품 이미지"
								src="img/product/${product.p_image}"></picture>
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
								<input type="hidden" id="s_size" value="${productSize}">
								<p data-v-2b95d831="" class="size_txt">${productSize}</p>
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
								<dt data-v-15aa5096="" class="price_now_title">즉시구매가</dt>
								<dd data-v-15aa5096="" class="price">
									<span data-v-15aa5096="" class="amount"><input type="number" id="price_g" value="${productDetail.pd_price}" readonly="ture"></span>
									<span data-v-15aa5096="" class="unit">원</span>
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
		class="container buy sm step-1" scp style="margin-top: 50px;">
		<input type="hidden" id="hiddenPd_no_buy" value="">
		<!---->
		<div data-v-7598e8e5="" class="content">
			<div data-v-dc1edea6="" data-v-7598e8e5="" class="buy_immediate">
				<div data-v-2b95d831="" data-v-dc1edea6="" class="product_info_area">
					<div data-v-2b95d831="" class="product_info">
						<div data-v-edf7886c="" data-v-2b95d831="" class="product"
							style="background-color: rgb(235, 240, 245);">
							<picture data-v-6c8b3524="" data-v-edf7886c=""
								class="picture product_img">
							<source data-v-6c8b3524="" type="image"
								srcset="img/product/${product.p_image}">
							<source data-v-6c8b3524=""
								srcset="img/product/${product.p_image}">
							<img data-v-6c8b3524="" alt="상품 이미지"
								src="img/product/${product.p_image}"></picture>
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
							<input type="hidden" id="s_size" value="${productSize}">
								<p data-v-2b95d831="" class="size_txt">${productSize}</p>
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
							<span data-v-638c1354="" class="price" id="price_v" value=" - "> - </span><span
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
									aria-controls="panel1" class="item on" id="bid"><a data-v-b6b2883e=""
									href="" class="item_link">구매 입찰</a></li>
								<li data-v-b6b2883e="" role="tab" aria-selected="true"
									aria-controls="panel2" class="item"><a
									data-v-b6b2883e="" class="item_link">즉시 구매</a></li>
							</ul>
							<!---->
							<!---->
						</div>
						<div data-v-15aa5096="" data-v-158ed304="" class="price_now">
							<dl data-v-15aa5096="" class="price_now_box">
								<dt data-v-15aa5096="" class="price_now_title">구매희망가</dt>
								<dd data-v-15aa5096="" class="price">
									<span data-v-15aa5096="" class="amount"><input type="number" id="price_g" value="0"></span><span
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
		<input type="hidden" id="hiddenPd_no_buy" value="${productDetail.pd_no}">
		<input type="hidden" id="hiddenPd_no_aa" value="${productDetail.pd_price}">
		<!---->
		<div data-v-7598e8e5="" class="content">
			<div data-v-dc1edea6="" data-v-7598e8e5="" class="buy_immediate">
				<div data-v-2b95d831="" data-v-dc1edea6="" class="product_info_area">
					<div data-v-2b95d831="" class="product_info">
						<div data-v-edf7886c="" data-v-2b95d831="" class="product"
							style="background-color: rgb(235, 240, 245);">
							<picture data-v-6c8b3524="" data-v-edf7886c=""
								class="picture product_img">
							<source data-v-6c8b3524="" type="image"
								srcset="img/product/${product.p_image}">
							<source data-v-6c8b3524=""
								srcset="img/product/${product.p_image}">
							<img data-v-6c8b3524="" alt="상품 이미지"
								src="img/product/${product.p_image}"></picture>
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
							<input type="hidden" id="s_size" value="${productSize}">
								<p data-v-2b95d831="" class="size_txt">${productSize}</p>
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
									data-v-b6b2883e="" href="sell.jsp" class="item_link">즉시 판매</a></li>
							</ul>
							<!---->
							<!---->
						</div>
						<div data-v-15aa5096="" data-v-158ed304="" class="price_now">
							<dl data-v-15aa5096="" class="price_now_box">
								<dt data-v-15aa5096="" class="price_now_title">즉시 판매가</dt>
								<dd data-v-15aa5096="" class="price">
									<span data-v-15aa5096="" class="amount"><input type="number" id="price_g" value="${productDetail.pd_price}" readonly="ture"></span><span
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

function sizeClick_s_null(productSize, product, buymin){
	return `
	<div data-v-7598e8e5="" data-v-34b11929=""
		class="container sell sm step-1">
		<input type="hidden" id="hiddenPd_no_buy" value="">
		<!---->
		<div data-v-7598e8e5="" class="content">
			<div data-v-dc1edea6="" data-v-7598e8e5="" class="buy_immediate">
				<div data-v-2b95d831="" data-v-dc1edea6="" class="product_info_area">
					<div data-v-2b95d831="" class="product_info">
						<div data-v-edf7886c="" data-v-2b95d831="" class="product"
							style="background-color: rgb(235, 240, 245);">
							<picture data-v-6c8b3524="" data-v-edf7886c=""
								class="picture product_img">
							<source data-v-6c8b3524="" type="image"
								srcset="img/product/${product.p_image}">
							<source data-v-6c8b3524=""
								srcset="img/product/${product.p_image}">
							<img data-v-6c8b3524="" alt="상품 이미지"
								src="img/product/${product.p_image}"></picture>
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
							<input type="hidden" id="s_size" value="${productSize}">
								<p data-v-2b95d831="" class="size_txt">${productSize}</p>
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
							<span data-v-638c1354="" class="price"> - </span><span
							data-v-638c1354="" class="unit">원</span></li>
					</ul>
					<div data-v-158ed304="" class="instant_group">
						<div data-v-b6b2883e="" data-v-158ed304=""
							class="tab_area buy_tab">
							<ul data-v-b6b2883e="" role="tablist" class="tab_list">
								<li data-v-b6b2883e="" role="tab" aria-selected="false"
									aria-controls="panel1" class="item on" id="bid"><a data-v-b6b2883e=""
									href="" class="item_link">판매 입찰</a></li>
								<li data-v-b6b2883e="" role="tab" aria-selected="true"
									aria-controls="panel2" class="item"><a
									data-v-b6b2883e="" class="item_link">즉시 판매</a></li>
							</ul>
							<!---->
							<!---->
						</div>
						<div data-v-15aa5096="" data-v-158ed304="" class="price_now">
							<dl data-v-15aa5096="" class="price_now_box">
								<dt data-v-15aa5096="" class="price_now_title">즉시 판매가</dt>
								<dd data-v-15aa5096="" class="price">
									<span data-v-15aa5096="" class="amount"><input type="number" id="price_g" value="" ></span><span
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

function changeProductList(pageno) {
	console.log(pageno);
	$.ajax({
		url: "product_list_rest",
		method: "post",
		data: {"pageno" :pageno},
		dataType: "json",
		success:function(resultObj){
			console.log(resultObj);
			if(resultObj.code > 0){
				let data = resultObj.data;
				let htmlBuffer = ``;
				for(var i=0; i<data.priceList.length; i++){
					htmlBuffer += `
					 <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg"> <img src="img/product/${data.itemList[i].p_image}">
                                <input type="hidden" id="p_no" value="${data.itemList[i].p_no}">
                                </div>
                                <div class="product__item__text">
                                	<h6>${resultObj.brandList[i]}</h6>
                                    <a href="shop-details?p_no=${data.itemList[i].p_no}" class="add-cart">제품 상세보기</a>
                                    <h5>${data.itemList[i].p_name}</h5>
                                    <h6>${data.priceList[i].min_price}</h6>
                                </div>
                            </div>
                        </div>
											`;
			                   };
				console.log(htmlBuffer)
				$("#notice_list_tbody").html(htmlBuffer);
				let paginationBuffer = ``;
				if(data.pageMaker.prevPage > 0){
					paginationBuffer += `<li class="page-item">
		                                    <button class="page-link" onclick="changeProductList(${data.pageMaker.prevPage});"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
		                               	 </li>`;
				}
				for(let no = data.pageMaker.blockBegin; no <= data.pageMaker.blockEnd; no++){
					if(data.pageMaker.curPage == no){
						paginationBuffer += `<li class="page-item active"><button class="page-link" href="#">${no}</button></li>`;
					}
					if(data.pageMaker.curPage != no){
						paginationBuffer += `<li class="page-item"><button class="page-link" onclick="changeProductList(${no});">${no}</button></li>`;
					}
				}
				if(data.pageMaker.curPage < data.pageMaker.totPage){
					paginationBuffer += `<li class="page-item">
					                        <button class="page-link" onclick="changeProductList(${data.pageMaker.nextPage});"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
				                    	 </li>`;
				}
				$(".pagination.pagination-sm.justify-content-center").html(paginationBuffer);
			}else{
				
			}
		}
	});
}
function brandsList_content(jsonResult, brand, min_price) {
	return	`
				 <div class="col-lg-4 col-md-6 col-sm-6">
                      <div class="product__item">
                           <div class="product__item__pic set-bg"> <img src="img/product/${jsonResult.p_image}">
                                <input type="hidden" id="p_no" value="${jsonResult.p_no}">
                                </div>
                                <div class="product__item__text">
                                	<h6>${brand}</h6>
                                    <a href="shop-details?p_no=${jsonResult.p_no}" class="add-cart">제품 상세보기</a>
                                    <h5>${jsonResult.p_name}</h5>
                                    <h6>${min_price}</h6>
                                </div>
                            </div>
                        </div>
							`;
		
}

function number_btn(){
	return `
	<li class="page-item active"><button class="page-link" href="#">1</button></li>
	<li class="page-item">
					                        <button class="page-link" onclick="changeProductList();"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
				                    	 </li>
	
	`;
	
}