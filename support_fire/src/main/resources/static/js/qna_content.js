function qna_list(qna) {
	return `
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="headingOne">
		      <button class="accordion-button collapsed" type="button" data-mdb-toggle="collapse"
		        data-mdb-target="#basicAccordionCollapseOne" aria-expanded="false" aria-controls="collapseOne">
		       111
		      </button>
		    </h2>
		    <div id="basicAccordionCollapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne"
		      data-mdb-parent="#basicAccordion" style="">
		      <div class="accordion-body">
		        <strong>222
		      </div>
		    </div>
		  </div>
		</div>
	`
}

function qna_app(item) {
	return `
<div class="c_list" id="id_list" >
  <ul class='hiden'>
 	<li>${item.q_date.substring(0,10)}</li>
 	<li>${item.q_content}</li>
 </ul>
</div>
	`
}

function changeQnaList(pageno){
	console.log(pageno);
	$.ajax({
		url: "qna_list_rest",
		method: "post",
		data: {"pageno" :pageno},
		dataType: "json",
		success:function(resultObj){
			console.log(resultObj);
			if(resultObj.code > 0){
				let data = resultObj.data;
				let htmlBuffer = ``;
				data.itemList.forEach(function(qna){
					if(qna.reQna == null){
					htmlBuffer += `
									<tr>
	                            	    <th>
	                                        <a href = "qna_view?n_no=${qna.q_no}&pageno=${data.pageMaker.curPage}" id="slide_p">${qna.q_title}</a>
	                                        <ul class='hiden'>
		                                      <li>작성자 : ${qna.m_id}
		                                      <li>작성일 : ${qna.q_date}
		                                      <li>내용 : ${qna.q_content}
	                                     <br>
		                                      <br>
		                                      <div style='width:100px;float: right;'> <button type='button' class='btn btn-primary' id = 'reWrite'>답변하기</button></div>
    		 									</ul>
	                                        </th>
	                                        <th>${qna.q_date.substring(0,10)}</th><th>${qna.m_id}</th>
	                                     </tr>
	                               	`;
	                }else{
                    htmlBuffer += `
                    				<tr>
                   						<th><a href = "qna_view?n_no=${qna.q_no}&pageno=${data.pageMaker.curPage}" id="slide_p">${qna.q_title}</a>
	                                        <ul class='hiden'>
		                                      <li>작성자 : ${qna.m_id}
		                                      <li>작성일 : ${qna.q_date}
		                                      <li>내용 : ${qna.q_content}
		                                      <li><br>
		                                      <hr><br>
		                                      <li>작성일 : ${qna.reQna.rq_date}
		                                      <li>내용 : ${qna.reQna.rq_content}
    		 									</ul>
	                                        </th>
	                                        <th>${qna.q_date.substring(0,10)}</th><th>${qna.m_id}</th>
	                                    </tr>
	                                `;
	                                }
				});
				console.log(htmlBuffer)
				$("#notice_list_tbody").html(htmlBuffer);
				let paginationBuffer = ``;
				if(data.pageMaker.prevPage > 0){
					paginationBuffer += `<li class="page-item">
		                                    <button class="page-link" onclick="changeQnaList(${data.pageMaker.prevPage});"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
		                               	 </li>`;
				}
				for(let no = data.pageMaker.blockBegin; no <= data.pageMaker.blockEnd; no++){
					if(data.pageMaker.curPage == no){
						paginationBuffer += `<li class="page-item active"><button class="page-link" href="#">${no}</button></li>`;
					}
					if(data.pageMaker.curPage != no){
						paginationBuffer += `<li class="page-item"><button class="page-link" onclick="changeQnaList(${no});">${no}</button></li>`;
					}
				}
				if(data.pageMaker.curPage < data.pageMaker.totPage){
					paginationBuffer += `<li class="page-item">
					                        <button class="page-link" onclick="changeQnaList(${data.pageMaker.nextPage});"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
				                    	 </li>`;
				}
				$(".pagination.pagination-sm.justify-content-center").html(paginationBuffer);
			}else{
				
			}
		}
	});
}