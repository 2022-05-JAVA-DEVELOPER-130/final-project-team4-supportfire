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
</style>	
	
<script type="text/javascript" src="js/login_content.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js"></script>

<style type="text/css">
 #radi{
 	height: 20px;
 	width: 100%;
 -webkit-appearance: button;
 
 }

</style>
<script type="text/javascript">
$(function(){
	
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
	
	
	
	
	
	
	
	
	//로그인 화면
	$('#content').html(login_form());
	
	//로그인 버튼 클릭
	$(document).on('click','#login_btn' ,function(e){
		console.log($('#login_form').serialize());
		$.ajax({
		    url:'member_login_action',
		    method:'POST',
		    data:$('#login_form').serialize(),
		    success:function(jsonResult){
		    	console.log(jsonResult.data);
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
			console.log(phone);
			console.log(phone.length);
			if(phone.length > 9 && phone.length < 12){
				$('#id_search_form').html(id_search_btn());
			}else{
				$('#id_search_form').html(id_search_btn1());
			}
	});
	
	//비밀번호 찾기
	$(document).on('click','#pass_search' ,function(e){
		$('#content').html(pass_search());
		e.preventDefault();
    });
	
	//비밀번호 찾기, 휴대폰 번호 맞을시 버튼 on
	$(document).on('keyup', '#phone_search_pass, #m_id1', function() {
		   var phone = $('#phone_search_pass').val();
		   var id = $('#m_id1').val();
			console.log(phone);
			console.log(phone.length);
			if((phone.length > 9 && phone.length < 12) && (id.length > 4 && id.length < 13)){
				$('#pass_search_form').html(pass_search_btn());
			}else{
				$('#pass_search_form').html(pass_search_btn1());
			}
	});
	
	$(document).on('click', '#id_search_btn', function(){
		console.log("m_phone=" + $('#phone_search_id').val());
		$.ajax({
		    url:'id_search_action',
		    method:'GET',
		    data:"m_phone=" + $('#phone_search_id').val(),
		    success:function(jsonResult){
		    	var id = jsonResult.data;
		    	console.log(id);
		    	if(jsonResult.code == 1){
		    	$('#content').html(id_search_com(id));
		   	 	}else if(jsonResult.code == 0){
		   	 		$('#msg_pass').html(jsonResult.msg);
		   	 	}
		    }
		});
	});
	
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
    
    <jsp:include page="top.jsp" />
    
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
