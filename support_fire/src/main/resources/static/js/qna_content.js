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
		                                      <li>작성자 : <span style="font-size: 12px;">${qna.m_id}</span>
		                                      <li>작성일
		                                      <li style="font-size: 12px;">${qna.q_date}
		                                      <li><br>
		                                      <li>${qna.q_content}
	                                     <br>
		                                      <br><div class="reqna_write_form${qna.q_no}">
		                                      <div style='width:100px;float: right;'> <button type='button' class='btn btn-primary reWrite' value="${qna.q_no}">답변하기</button></div>`;
		                                      
		           if(resultObj.sUserId == qna.m_id){
		                         htmlBuffer +=  `
		                                       <div style='width:100px;float: right;'>
		                                       <button type='button' class='btn btn-primary qnaDelete' value="${qna.q_no}">삭제하기</button>
		                                       </div>
		                                       `
		                                       }else{
			
		}
		                            htmlBuffer += `</div>
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
		                                      <li>작성자 : <span style="font-size: 12px;">${qna.m_id}</span>
		                                      <li>작성일
		                                      <li style="font-size: 12px;">${qna.q_date}
		                                      <li><br>
		                                      <li>${qna.q_content}
		                                      <li><br>
		                                      <hr><br>
		                                      <li>작성일
		                                      <li style="font-size: 12px;">${qna.reQna.rq_date}
		                                      <li><br>
		                                      <li>${qna.reQna.rq_content}
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


function qna_write_form(sUserId){
	return `
	<section class="write" style="padding-top: 50px; margin-bottom: 50px;">
                
      <div class="">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="shortcodes_title mb-30">
                        <h4 style="margin-bottom: 50px;"><strong>QNA 글쓰기</strong></h4>
                    </div>
                    <div class="shortcodes_content">
                        <div class="table-responsive">
                        	<form id="qna_write_form" method="post">
	                            <table class="table mb-0 table-bordered"">
	                                <thead>
	                                <tr>
	                                	<th colspan="2">제목</th>
	                                	<th style="text-align: center;">아이디</th>
	                                	<th style="text-align: center;">날짜</th>
	                                </tr>
	                                    <tr>
	                                        <th colspan="2" class="board_title">
	                                        	<input type="text" class="write" name="q_title" id="q_title" placeholder=" title" />
	                                        </th>
	                                        <th style="width: 150px; text-align: center;">${sUserId}</th>
	                                        <th scope="col" class="board_date" id="today" style="width: 150px; text-align: center; padding-bottom: 20px;"></th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                    <tr>
	                                        <td id="notice_content_td" colspan="4">
	                                        	<textarea name="q_content" id="q_content" placeholder=" content" style="resize: none;"></textarea>
	                                        </td>
	                                    </tr>
	                                </tbody>
	                            </table>
                      				<input type="hidden" name="m_id" value="${sUserId}" />
                			</form>
                        </div>
                    </div>
                    		<div>
							<button class="btn btn-primary butt" id="write_action" type="button" value="등록" />등록</button>
							<button class="btn btn-primary butt" id="w_list" type="button"  value="목록" />목록</button>
							</div>
                </div>
            </div>
            
         </div>
    </div>   
    </section>
	
	`;
	
}

function reqna_form(val1){
	return `
		<input type="text" style="width: 100%; height: 200px;" id="rq_content${val1}" value="">
		<div style='width:100px;float: right; margin-top:15px;'> <button type='button' class='btn btn-primary reWrite_action' value="${val1}">답변하기</button> </div>
		<div style='width:100px;float: right; margin-top:15px;'><button type='button' class='btn btn-primary' id='back'>취소하기</button></div>
	`;
}
function reqna_back(){
	return `
		<div style='width:100px;float: right;'> <button type='button' class='btn btn-primary reWrite'>답변하기</button></div>
	`;
}
