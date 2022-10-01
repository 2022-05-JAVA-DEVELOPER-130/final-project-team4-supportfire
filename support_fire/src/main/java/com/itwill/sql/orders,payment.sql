--고객한명구매내역전체보기(제품명,사이즈,구매일자,배송상태)
select * from orders o join productdetail pd on o.pd_no_purchase=pd.pd_no where m_id='jiwon' ;
--고객한명판매내역전체보기
select * from orders o join productdetail pd on o.pd_no_sell=pd.pd_no where m_id='seongmin';
select * from orders o join productdetail pd on o.pd_no_sell=pd.pd_no ;
--주문번호로주문한개조회
select * from orders where o_no=1;

--주문전체조회
select * from orders;
--주문번호한개삭제
delete from orders where o_no=3;

--주문정보한개업데이트(주문상태변경)
update orders set o_status='배송준비중' where o_no=1;

--주문한개생성
insert into orders (o_no, o_date, pd_no_purchase,pd_no_sell,o_status)
  values (orders_o_no_seq.nextval, TO_DATE(SYSDATE), 4,8,'배송완료');
  
  
  
-----------------------------------------------
--결제번호로 결제정보조회
select * from payment where pm_no=1;

--결제정보전제조회
select * from payment;

--주문번호로 결제정보조회
select * from payment where o_no=2;
--주문번호로결제정보업데이트(배송지변경,이름,핸드폰,배송메모)
update payment set pm_name='지원사격',pm_phone='01011111111',pm_address='서울',pm_memo='집앞에' where o_no=1;
--번호로결제내역삭제
delete from payment where pm_no=1;
--결제하나 생성
insert into payment(pm_no,pm_name,pm_phone,pm_address,pm_memo,o_no,pl_no) 
    values (payment_pm_no_seq.nextval,'김지원','01020202020','강동구','개조심',4,2);