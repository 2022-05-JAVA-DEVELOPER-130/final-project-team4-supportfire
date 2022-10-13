function productSizeForm(productSize, data) {
	return ` 
	<li data-v-7ade2d82="" class="select_item">
     <button data-v-7ade2d82="" role="button" aria-selected="false" class="select_link buy bid">
           <div data-v-7ade2d82="" class="link_inner">
              <span data-v-7ade2d82="" class="size">
                 <!----> ${productSize.s_size}
              </span><span data-v-7ade2d82="" class="price" >${data}</span>
           </div>
        </button></li>
        `;
}
