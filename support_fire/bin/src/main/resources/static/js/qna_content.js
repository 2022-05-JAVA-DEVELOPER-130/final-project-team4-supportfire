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