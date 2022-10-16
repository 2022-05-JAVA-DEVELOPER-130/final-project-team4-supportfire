/**************카테고리*****************/
insert into category values(1, '신발');
insert into category values(2, '상의');
insert into category values(3, '하의');
insert into category values(4, '전자제품');

/**************사이즈*****************/
insert into sizes values('210', 1);
insert into sizes values('220', 1);
insert into sizes values('230', 1);
insert into sizes values('240', 1);
insert into sizes values('250', 1);
insert into sizes values('260', 1);
insert into sizes values('270', 1);
insert into sizes values('280', 1);
insert into sizes values('290', 1);
insert into sizes values('300', 1);
insert into sizes values('310', 1);
insert into sizes values('320', 1);

insert into sizes values('90', 2);
insert into sizes values('95', 2);
insert into sizes values('100', 2);
insert into sizes values('105', 2);
insert into sizes values('110',2);

insert into sizes values('S', 3);
insert into sizes values('M', 3);
insert into sizes values('L', 3);
insert into sizes values('XL', 3);
insert into sizes values('XXL',3);
/*********브랜드*********/
/*신발*/
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'Nike', 1);
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'adidas', 1);

/*상의*/
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'Nike', 2);
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'adidas', 2);

/*하의*/
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'Nike', 3);
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'adidas', 3);

/*전자제품*/
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'Apple', 4);
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'Samsung', 4);

/************제품***************/
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Air Force 1 07 WB Flax', '19/09/10', 169000 ,'Nike_Air_Force_1_07_WB_Flax.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Dunk Low Retro Black', '21/01/14', 129000, 'Nike_Dunk_Low_Retro_Black.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Dunk Low Light Smoke Grey', '22/05/07', 129000, 'Nike_Dunk_Low_Light_Smoke_Grey.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Dunk Low Retro Gym Red', '22/09/21', 129000, 'Nike_Dunk_Low_Retro_Gym_Red.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike x J.Crew Killshot 2 Sail Midnight Navy', '17/02/26', 109000, 'Nike_x_J.Crew_Killshot_2_Sail_Midnight_Navy.png', 1);

insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Jordan 1 Mid Light Smoke Grey', '20/01/11', 139000 ,'Jordan_1_Mid_Light_Smoke_Grey.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Jordan 1 x Travis Scott Retro Low OG SP Sail and Ridgerock', '22/07/21', 189000 ,'Jordan_1_x_Travis_Scott_Retro_Low_OG_SP_Sail_and_Ridgerock.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Jordan 1 Retro Low OG Black and Dark Powder Blue', '22/07/27', 159000 ,'Jordan_1_Retro_Low_OG_Black_and_Dark_Powder_Blue.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Jordan 1 Retro High OG Black Mocha', '20/11/13', 199000 ,'Jordan_1_Retro_High_OG_Black_Mocha.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Jordan 1 Mid Light Smoke Grey Anthracite', '22/01/24', 149000 ,'Jordan_1_Mid_Light_Smoke_Grey_Anthracite.png', 1);
/**************제품사이즈**************/
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 1);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 2);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 3);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 4);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 5);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 5);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 6);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 7);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 8);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 9);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 9);

/************입찰상태************/
insert into bidStatus values(1, '대기중');
insert into bidStatus values(2, '거래중');
insert into bidStatus values(3, '거래완료');

/**************입찰타입***************/
insert into bidType values(1, '구매');
insert into bidType values(2, '판매');

/************회원*****************/
insert into member values('seongmin', '1234', '알찬성민', '01012345678', '970902', 'seongmin@gamil.com', '남', 1000, '서울시 강남구');
insert into member values('bongkyoun', '1234', '봉된장', '01023456789', '940601', 'bongkyoun@gamil.com', '남', 1000, '서울시 서초구');
insert into member values('jiwon', '1234', '지원준비', '01034567890', '971002', 'jiwon@gamil.com', '여', 1000, '서울시 종로구');
insert into member values('hyun', '1234', '현악기', '01045678901', '900602', 'hyun@gamil.com', '남', 1000, '서울시 중구');
    
/***********배달주소*************/

insert into deliveryaddress values('집', '06392', '서울시 강남구', '301호', 'seongmin');
insert into deliveryaddress values('회사', '09283', '서울시 서초구', '302호', 'bongkyoun');
insert into deliveryaddress values('사무실', '11846', '서울시 종로구', '303호', 'jiwon');
insert into deliveryaddress values('집', '03527', '서울시 중구', '304호', 'hyun');

/*************제품상세****************/
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 169000, sysdate, sysdate+7, 1, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 150000, sysdate, sysdate+7, 2, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 170000, sysdate, sysdate+7, 3, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 169000, sysdate, sysdate+7, 4, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 153000, sysdate, sysdate+7, 5, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 155000, sysdate, sysdate+7, 6, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 166000, sysdate, sysdate+7, 7, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 173000, sysdate, sysdate+7, 8, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 185000, sysdate, sysdate+7, 9, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 180000, sysdate, sysdate+7, 10, 'seongmin', 2, 1);

insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 129000, sysdate, sysdate+7, 15, 'bongkyoun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 130000, sysdate, sysdate+7, 16, 'bongkyoun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 135000, sysdate, sysdate+7, 17, 'bongkyoun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 145000, sysdate, sysdate+7, 18, 'bongkyoun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 185000, sysdate, sysdate+7, 19, 'bongkyoun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 235000, sysdate, sysdate+7, 20, 'bongkyoun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 175000, sysdate, sysdate+7, 21, 'bongkyoun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 135000, sysdate, sysdate+7, 22, 'bongkyoun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 195000, sysdate, sysdate+7, 23, 'bongkyoun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 240000, sysdate, sysdate+7, 24, 'bongkyoun', 2, 1);

insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 166000, sysdate, sysdate+7, 26, 'jiwon', 1, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 155000, sysdate, sysdate+7, 27, 'jiwon', 1, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 187000, sysdate, sysdate+7, 28, 'jiwon', 1, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 197000, sysdate, sysdate+7, 29, 'jiwon', 1, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 210000, sysdate, sysdate+7, 30, 'jiwon', 1, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 197000, sysdate, sysdate+7, 31, 'jiwon', 1, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 227000, sysdate, sysdate+7, 32, 'jiwon', 1, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 307000, sysdate, sysdate+7, 33, 'jiwon', 1, 2);

insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 129000, sysdate, sysdate+7, 38, 'hyun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 166000, sysdate, sysdate+7, 39, 'hyun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 266000, sysdate, sysdate+7, 40, 'hyun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 366000, sysdate, sysdate+7, 44, 'hyun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 256000, sysdate, sysdate+7, 45, 'hyun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 286000, sysdate, sysdate+7, 46, 'hyun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 216000, sysdate, sysdate+7, 47, 'hyun', 2, 1);

insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 416000, sysdate, sysdate+7, 53, 'hyun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 495000, sysdate, sysdate+7, 54, 'hyun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 406000, sysdate, sysdate+7, 55, 'hyun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 496000, sysdate, sysdate+7, 56, 'hyun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 486000, sysdate, sysdate+7, 59, 'hyun', 2, 1);

insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 169000, sysdate, sysdate+7, 1, 'seongmin', 1, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 140000, sysdate, sysdate+7, 2, 'seongmin', 1, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 160000, sysdate, sysdate+7, 3, 'seongmin', 1, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 165000, sysdate, sysdate+7, 4, 'seongmin', 1, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 150000, sysdate, sysdate+7, 5, 'seongmin', 1, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 153000, sysdate, sysdate+7, 6, 'seongmin', 1, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 140000, sysdate, sysdate+7, 7, 'seongmin', 1, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 140000, sysdate, sysdate+7, 8, 'seongmin', 1, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 155000, sysdate, sysdate+7, 9, 'seongmin', 1, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 180000, sysdate, sysdate+7, 10, 'seongmin', 1, 2);

/************주문**************/
insert into orders values(1, sysdate, 1, 41, '배송준비중');
insert into orders values(2, sysdate, 10, 50, '배송중');

/************결제종류**************/
insert into paymentList values(1, '신용카드');
insert into paymentList values(2, '계좌이체');
insert into paymentList values(3, '카카오페이');
    
/*********결제***********/
insert into payment values(1, '지원준비', '01034567890', '인천', '안전한 배송 부탁 드립니다.', 1, 1);
insert into payment values(2, '우치하', '01087654321', '나뭇잎 마을', '안전한 배송 부탁 드립니다.', 2, 3);

/********************REQNA*****************/
insert into reqna values(reqna_rq_no_seq.nextval, '답변답변답변답변답변1', sysdate);
insert into reqna values(reqna_rq_no_seq.nextval, '답변답변답변답변답변2', sysdate);
insert into reqna values(reqna_rq_no_seq.nextval, '답변답변답변답변답변3', sysdate);
insert into reqna values(reqna_rq_no_seq.nextval, '답변답변답변답변답변4', sysdate);
insert into reqna values(reqna_rq_no_seq.nextval, '답변답변답변답변답변5', sysdate);
insert into reqna values(reqna_rq_no_seq.nextval, '답변답변답변답변답변6', sysdate);

/*********QNA***********/
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목1', '내용내용내용내용내용내용내용내용내용내용1', sysdate, 'seongmin', 1);
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목2', '내용내용내용내용내용내용내용내용내용내용2', sysdate, 'seongmin', 2);
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목3', '내용내용내용내용내용내용내용내용내용내용3', sysdate, 'seongmin', 3);
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목4', '내용내용내용내용내용내용내용내용내용내용4', sysdate, 'seongmin', 4);
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목5', '내용내용내용내용내용내용내용내용내용내용5', sysdate, 'seongmin', 5);
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목6', '내용내용내용내용내용내용내용내용내용내용6', sysdate, 'seongmin', 6);
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목7', '내용내용내용내용내용내용내용내용내용내용7', sysdate, 'seongmin', null);
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목8', '내용내용내용내용내용내용내용내용내용내용8', sysdate, 'seongmin', null);
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목8', '내용내용내용내용내용내용내용내용내용내용8', sysdate, 'seongmin', null);
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목8', '내용내용내용내용내용내용내용내용내용내용8', sysdate, 'seongmin', null);
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목8', '내용내용내용내용내용내용내용내용내용내용8', sysdate, 'seongmin', null);



/**********notice***********/
insert into notice values(NOTICE_N_NO_SEQ.nextval, '제목1', '내용1', sysdate);
insert into notice values(NOTICE_N_NO_SEQ.nextval, '제목2', '내용2', sysdate);
insert into notice values(NOTICE_N_NO_SEQ.nextval, '제목3', '내용3', sysdate);
insert into notice values(NOTICE_N_NO_SEQ.nextval, '제목4', '내용4', sysdate);
insert into notice values(NOTICE_N_NO_SEQ.nextval, '제목5', '내용5', sysdate);
insert into notice values(NOTICE_N_NO_SEQ.nextval, '제목6', '내용6', sysdate);

/*********review**********/
insert into review values(REVIEW_R_NO_SEQ.nextval, '제목1', '내용1', sysdate, '5', 'seongmin', '1');
insert into review values(REVIEW_R_NO_SEQ.nextval, '제목2', '내용2', sysdate, '5', 'seongmin', '2');
insert into review values(REVIEW_R_NO_SEQ.nextval, '제목3', '내용3', sysdate, '1', 'seongmin', '3');
insert into review values(REVIEW_R_NO_SEQ.nextval, '제목4', '내용4', sysdate, '5', 'seongmin', '4');
insert into review values(REVIEW_R_NO_SEQ.nextval, '제목5', '내용5', sysdate, '5', 'seongmin', '5');
insert into review values(REVIEW_R_NO_SEQ.nextval, '제목6', '내용6', sysdate, '4', 'seongmin', '6');
insert into review values(REVIEW_R_NO_SEQ.nextval, '제목7', '내용7', sysdate, '3', 'seongmin', '7');
insert into review values(REVIEW_R_NO_SEQ.nextval, '제목8', '내용8', sysdate, '5', 'seongmin', '8');
insert into review values(REVIEW_R_NO_SEQ.nextval, '제목9', '내용9', sysdate, '4', 'seongmin', '9');
insert into review values(REVIEW_R_NO_SEQ.nextval, '제목10', '내용10', sysdate, '5', 'seongmin', '10');

commit;
