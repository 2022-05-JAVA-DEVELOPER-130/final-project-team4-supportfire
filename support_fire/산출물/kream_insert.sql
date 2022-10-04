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
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Air Force 1 07 WB Flax', '19/09/10', 169000 ,'img', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Dunk Low Retro Black', '21/01/14', 129000, 'img', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Dunk Low Light Smoke Grey', '22/05/07', 129000, 'img', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Dunk Low Retro Gym Red', '22/09/21', 129000, 'img', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike x J.Crew Killshot 2 Sail Midnight Navy', '17/02/26', 109000, 'img', 1);

/**************제품사이즈**************/
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 1);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 2);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 3);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 4);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 5);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, 'S', 6);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, 'M', 7);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, 'XL', 8);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, 'XXL', 9);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '90', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '95', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '100', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '105', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '110', 14);

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
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 12000, sysdate, sysdate+7, 1, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 17000, sysdate, sysdate+7, 1, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 35000, sysdate, sysdate+7, 2, 'bongkyoun', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 87000, sysdate, sysdate+7, 3, 'jiwon', 1, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 66000, sysdate, sysdate+7, 4, 'hyun', 2, 1);

insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 87000, sysdate, sysdate+7, 3, 'seongmin', 2, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 54000, sysdate, sysdate+7, 5, 'bongkyoun', 2, 2);

/************주문**************/
insert into orders values(1, sysdate, 3, 6, '배송준비중');
insert into orders values(2, sysdate, 5, 7, '배송중');

/************결제종류**************/
insert into paymentList values(1, '신용카드');
insert into paymentList values(2, '계좌이체');
insert into paymentList values(3, '카카오페이');
    
/*********결제***********/
insert into payment values(1, '지원준비', '01034567890', '인천', '안전한 배송 부탁 드립니다.', 1, 1);
insert into payment values(2, '우치하', '01087654321', '나뭇잎 마을', '안전한 배송 부탁 드립니다.', 2, 3);

/*********QNA***********/
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목1', '내용내용내용내용내용내용내용내용내용내용1', sysdate, QNA_Q_NO_SEQ.currval, 1, 0, 'seongmin');
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목2', '내용내용내용내용내용내용내용내용내용내용2', sysdate, QNA_Q_NO_SEQ.currval, 1, 0, 'seongmin');
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목3', '내용내용내용내용내용내용내용내용내용내용3', sysdate, QNA_Q_NO_SEQ.currval, 1, 0, 'seongmin');
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목4', '내용내용내용내용내용내용내용내용내용내용4', sysdate, QNA_Q_NO_SEQ.currval, 1, 0, 'seongmin');
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목5', '내용내용내용내용내용내용내용내용내용내용5', sysdate, QNA_Q_NO_SEQ.currval, 1, 0, 'seongmin');
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목6', '내용내용내용내용내용내용내용내용내용내용6', sysdate, QNA_Q_NO_SEQ.currval, 1, 0, 'seongmin');
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목7', '내용내용내용내용내용내용내용내용내용내용7', sysdate, QNA_Q_NO_SEQ.currval, 1, 0, 'seongmin');
insert into qna values(QNA_Q_NO_SEQ.nextval, '제목8', '내용내용내용내용내용내용내용내용내용내용8', sysdate, QNA_Q_NO_SEQ.currval, 1, 0, 'seongmin');

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
