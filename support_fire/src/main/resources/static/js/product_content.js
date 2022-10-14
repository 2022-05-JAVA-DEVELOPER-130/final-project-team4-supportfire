function productSizeForm_p(productSize, data) {
	return ` 
	<li data-v-7ade2d82="" class="select_item">
     <button data-v-7ade2d82="" role="button" aria-selected="false" class="select_link buy bid">
           <div data-v-7ade2d82="" class="link_inner">
              <span data-v-7ade2d82="" class="size">
                 <!----> ${productSize.s_size}
              </span><span data-v-7ade2d82="" class="price" id="price_form_p" >${data}</span>
           </div>
        </button></li>
        `;
}
function productSizeForm_s(productSize, data) {
	return ` 
	<li data-v-7ade2d82="" class="select_item">
     <button data-v-7ade2d82="" role="button" aria-selected="false" class="select_link buy bid">
           <div data-v-7ade2d82="" class="link_inner">
              <span data-v-7ade2d82="" class="size">
                 <!----> ${productSize.s_size}
              </span><span data-v-7ade2d82="" class="price" id="price_form_s" >${data}</span>
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
