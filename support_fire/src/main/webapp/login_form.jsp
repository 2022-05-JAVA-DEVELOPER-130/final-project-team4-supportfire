<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Login Template</title>
  <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/login.css">
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/test.css" type="text/css">
    <link rel="stylesheet" href="_nuxt/css/1381ce9.css">
	<link rel="stylesheet" href="_nuxt/css/734fa9a.css">
	<link rel="stylesheet" href="_nuxt/css/171b9ac.css">
	<link rel="stylesheet" href="_nuxt/css/a3c2917.css">
	<link rel="stylesheet" href="_nuxt/css/4e3da1f.css">
	<link rel="stylesheet" href="_nuxt/css/6502f07.css">
	<link rel="stylesheet" href="_nuxt/css/0036557.css">
<style type="text/css">
/*****************form validator css추가************/
input.error,textarea.error{
	border: 1px solid red;
	
}
label.error{
	color:orange;
}
.valid{
	border: 1px solid green;
}

	.aad{
	margin-bottom: 0px;
	}
	
	input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
</style>	
	
<script type="text/javascript" src="js/login_content.js"></script>
<script type="text/javascript" src="js/top_content.js"></script>
<script	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js"></script>


<style type="text/css">
 #radi{
 	height: 20px;
 	width: 100%;
 	display: inline;
 -webkit-appearance: button;
 
 }
 
 .contact__form input{
	margin-left: 70px;
	margin-bottom: 5px;
	width : 600px;
    border: 0;
    border-bottom: 1px solid #ebebeb;
    display: block;
    }

form span{
	width: auto;
	margin-top: 25px;
	margin-left: 50px;
	display: block;

}

.error{
	margin-left: 60px;

}
</style>
<script type="text/javascript">
function showDelivery() {
	new daum.Postcode(
			{
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('sample4_postcode').value = data.zonecode;
					document.getElementById("sample4_roadAddress").value = roadAddr;
					document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

					// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
					if (roadAddr !== '') {
						document.getElementById("sample4_extraAddress").value = extraRoadAddr;
					} else {
						document.getElementById("sample4_extraAddress").value = '';
					}
					var guideTextBox = document.getElementById("guide");
					// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
					if (data.autoRoadAddress) {
						var expRoadAddr = data.autoRoadAddress
								+ extraRoadAddr;
						guideTextBox.innerHTML = '(예상 도로명 주소 : '
								+ expRoadAddr + ')';
						guideTextBox.style.display = 'block';

					} else if (data.autoJibunAddress) {
						var expJibunAddr = data.autoJibunAddress;
						guideTextBox.innerHTML = '(예상 지번 주소 : '
								+ expJibunAddr + ')';
						guideTextBox.style.display = 'block';
					} else {
						guideTextBox.innerHTML = '';
						guideTextBox.style.display = 'none';
					}
				}
			}).open();

};

$(function(){
	
	$.ajax({
		url:'session_check',
		method:'POST',
		dataType:'json',
		success:function(jsonResult){
		    if(jsonResult.code==1){
		    	var member = jsonResult.data;
			 	$('#top_content').html(login_top(member));
		    }else if(jsonResult.code==2){
			 	$('#top_content').html(logout_top());
		    }
		   
		}
	});
	
	var url = window.location.pathname
	$.ajax({
		url:'url_check',
		method:'POST',
		data:'url='+url,
		success:function(jsonResult){
		    if(jsonResult.code == 1){
		    	$('#home').addClass('active');
		    }else if(jsonResult.code == 2){
		    	$('#shop').addClass('active');
		    }else if(jsonResult.code == 3){
		    	$('#notice').addClass('active');
		    }
		   
		}
	});
	
	/* validator객체변수선언 */
	var validator = null;
	/*validator객체 디폴트속성 설정*/
     $.validator.setDefaults({
			rules:{
				m_id:{
					required:true,
					minlength: 6,
					maxlength: 12
				},
				m_password:{
					required: true,
					minlength: 4,
					maxlength: 12
				},
				m_password_acc:{
					required: true,
					equalTo : "#m_password"
				},
				m_name:{
					required: true
				},
				m_phone:{
					required: true
				},
				m_birth:{
					required: true
				},
				m_email:{
					required: true,
					email:true
				},
				m_gender:{
					required: true
				},
				m_address:{
					required: true
				}
				
			},
			messages:{
				m_id:{
					required: "아이디를 입력하세요"
				},
				m_name:{
					required: "이름을 입력하세요",
					minlength: "이름은 {0} 글자이상입니다.",
					maxlength: "이름은 {0} 글자이하입니다."
				},
				m_password:{
					required: "비밀번호를 입력해주세요",
					minlength: "비밀번호는 {0} 글자이상입니다.",
					maxlength: "비밀번호는 {0} 글자이하입니다."
				},
				m_password_acc : {
				    required : '비밀번호를 입력하세요',
				    equalTo:'비밀번호와 비밀번호 확인은 일치하여야 합니다'
				},
				m_phone:{
					required: "휴대폰 번호는 '01012345678' 형식으로 입력해주세요"
				},
				m_birth:{
					required: "생년월일은 '990101 형식으로 입력해주세요"
				},
				m_email:{
					required: "이메일을 입력해 주세요",
					email:'이메일 형식이 맞지않습니다.'
				},
				m_gender:{
					required: "성별을 선택해주세요"
				},
				m_address:{
					required: "주소를 입력해주세요"
				}
			},
			errorClass:'error',
			validClass:'valid'
    });
	
	
	
	
     $(document).on('click','#login_a' ,function(e){
			$('#content').html(login_form());
			e.preventDefault();
     });
	
	
	//로그인 화면
	$('#content').html(login_form());
	
	//로그인 버튼 클릭
	$(document).on('click','#login_btn' ,function(e){
		$.ajax({
		    url:'member_login_action',
		    method:'POST',
		    data:$('#login_form').serialize(),
		    success:function(jsonResult){
				var data = jsonResult.data;
				if(data==0){
				$('#msg_id').html(jsonResult.msg);
				$('#msg_pass').html("");
				}else if(data==1){
				$('#msg_id').html("");
				$('#msg_pass').html(jsonResult.msg);
				}else if(data==2){
					location.href = jsonResult.url;
				}
		    }
		});
		e.preventDefault();
    });
	
	//아이디 찾기
	$(document).on('click','#id_search' ,function(e){
		$('#content').html(id_search());
		e.preventDefault();
    });
	
	//아이디 찾기, 휴대폰 번호 맞을시 버튼 on
	$(document).on('keyup', '#phone_search_id', function() {
		   var phone = $('#phone_search_id').val();
			if(phone.length > 9 && phone.length < 12){
				$('#id_search_form').html(id_search_btn());
			}else{
				$('#id_search_form').html(id_search_btn1());
			}
	});
	
	//비밀번호 찾기
	$(document).on('click','#pass_search, #pass_search_a' ,function(e){
		$('#content').html(pass_search());
		e.preventDefault();
    });
	
	//비밀번호 찾기, 휴대폰 번호 맞을시 버튼 on
	$(document).on('keyup', '#phone_search_pass, #m_id1', function() {
		   var phone = $('#phone_search_pass').val();
		   var id = $('#m_id1').val();
			if((phone.length > 9 && phone.length < 12) && (id.length > 4 && id.length < 13)){
				$('#pass_search_form').html(pass_search_btn());
			}else{
				$('#pass_search_form').html(pass_search_btn1());
			}
	});
	
	//아이디찾기 버튼클릭시
	$(document).on('click', '#id_search_btn', function(e){
		$.ajax({
		    url:'id_search_action',
		    method:'GET',
		    data:"m_phone=" + $('#phone_search_id').val(),
		    success:function(jsonResult){
		    	var id = jsonResult.data;
		    	if(jsonResult.code == 1){
		    	$('#content').html(id_search_com(id));
		   	 	}else if(jsonResult.code == 0){
		   	 		$('#msg_pass').html(jsonResult.msg);
		   	 	}
		    }
		});
		e.preventDefault();
	});
	
	//비밀번호찾기 버튼클릭시
	$(document).on('click', '#pass_search_btn', function(e){
		$.ajax({
		    url:'pass_search_action',
		    method:'POST',
		    data:"m_phone=" + $('#phone_search_pass').val() + "&m_id=" + $('#m_id1').val(),
		    
		    success:function(jsonResult){
		    	var pass = jsonResult.data;
		    	if(jsonResult.code == 1){
		    	$('#content').html(pass_search_com(pass));
		   	 	}else if(jsonResult.code == 0){
		   	 		$('#msg_pass').html(jsonResult.msg);
		   	 	}
		    }
		});
		e.preventDefault();
	});
	
	//회원가입폼
	$(document).on('click', '#join_form', function(e){
		$('#content').html(join_form());
		validator = $('#join_form1').validate({
	 		rules:{
	 			m_id:{
	 				required:true,
	 				minlength:6,
	 				maxlength:12
	 			}
	 		},
	 		messages:{
	 			m_id:{
	 				required:'아이디를 입력하세요',
	 				minlength:'아이디는 {0}글자 이상 입니다.',
	 				maxlength:'아이디는 {0}글자 이하 입니다.'
	 			}
	 		},
	 		errorClass:'error',
	 		validclass:'valid'
	 	});
		e.preventDefault();
		
	});
	
	//회원가입 버튼클릭시
	$(document).on('click', '#write_action_btn', function(e){
		console.log($('#join_form1').serialize());
		if(validator.form()){
		$.ajax({
		    url:'member_write_action',
		    method:'POST',
		    data:$('#join_form1').serialize(),
		    success:function(jsonResult){
		    	if(jsonResult.code == 1){
			    	alert('회원가입이 완료되었습니다.');
			    	$('#content').html(login_form());
		    	}else if(jsonResult.code == 2){
		    		$('#msg_id').html(jsonResult.msg);
		    		$('#m_id').focus();
		    		$('#m_id').val("");
		    	}
		    }
		});
		e.preventDefault();
		}
	});
	
});

</script>
    
    
</head>
<body>
<!-- Offcanvas Menu Begin -->
    <div id="top_content">
    <jsp:include page="top.jsp" />
    </div>
    <!-- Offcanvas Menu End -->
	
	<!-- Header Section Begin -->
	
	<jsp:include page="header.jsp" />
	
	 <!-- Header Section End -->
	
	<div id="content">
	</div>
  <!-- Offcanvas Menu Begin -->
    
    <jsp:include page="footer.jsp" />
    
    <!-- Offcanvas Menu End -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
