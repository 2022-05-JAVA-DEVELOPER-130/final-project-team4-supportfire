DROP TABLE payment CASCADE CONSTRAINTS;
DROP TABLE paymentList CASCADE CONSTRAINTS;
DROP TABLE wishList CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE QNA CASCADE CONSTRAINTS;
DROP TABLE productDetail CASCADE CONSTRAINTS;
DROP TABLE bidStatus CASCADE CONSTRAINTS;
DROP TABLE bidType CASCADE CONSTRAINTS;
DROP TABLE productSize CASCADE CONSTRAINTS;
DROP TABLE sizes CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE brands CASCADE CONSTRAINTS;
DROP TABLE category CASCADE CONSTRAINTS;
DROP TABLE deliveryAddress CASCADE CONSTRAINTS;
DROP TABLE member CASCADE CONSTRAINTS;

CREATE TABLE member(
		m_id                          		VARCHAR2(20)		 NOT NULL,
		m_password                    		VARCHAR2(10)		 NOT NULL,
		m_name                        		VARCHAR2(20)		 NOT NULL,
		m_phone                       		VARCHAR2(15)		 NULL ,
		m_birth                       		VARCHAR2(10)		 NULL ,
		m_email                       		VARCHAR2(50)		 NULL ,
		m_gender                      		VARCHAR2(10)		 NOT NULL,
		m_point                       		NUMBER(10)		 NULL ,
		m_address                     		VARCHAR2(100)		 NULL 
);

DROP SEQUENCE member_m_id_SEQ;

CREATE SEQUENCE member_m_id_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE deliveryAddress(
		da_name                       		VARCHAR2(30)		 NULL ,
		da_zipcode                    		VARCHAR2(20)		 NULL ,
		da_streetAddr                 		VARCHAR2(30)		 NULL ,
		da_detailAddr                 		VARCHAR2(30)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);


CREATE TABLE category(
		c_no                          		NUMBER(10)		 NULL ,
		c_name                        		VARCHAR2(30)		 NULL 
);


CREATE TABLE brands(
		br_no                         		NUMBER(10)		 NULL ,
		br_name                       		VARCHAR2(30)		 NULL ,
		c_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE brands_br_no_SEQ;

CREATE SEQUENCE brands_br_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE product(
		p_no                          		NUMBER(10)		 NOT NULL,
		p_name                        		VARCHAR2(50)		 NULL ,
		p_date                        		VARCHAR2(15)		 NULL ,
		p_price                       		NUMBER(20)		 NULL ,
		p_image                       		VARCHAR2(50)		 NULL ,
		br_no                         		NUMBER(10)		 NULL 
);

DROP SEQUENCE product_p_no_SEQ;

CREATE SEQUENCE product_p_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE sizes(
		s_size                        		VARCHAR2(30)		 NULL ,
		c_no                          		NUMBER(10)		 NULL 
);


CREATE TABLE productSize(
		ps_no                         		VARCHAR2(20)		 NULL ,
		s_size                        		VARCHAR2(30)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE productSize_ps_no_SEQ;

CREATE SEQUENCE productSize_ps_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE bidType(
		bt_no                         		NUMBER(10)		 NULL ,
		bt_type                       		VARCHAR2(20)		 NULL 
);


CREATE TABLE bidStatus(
		b_no                          		NUMBER(10)		 NULL ,
		b_status                      		VARCHAR2(20)		 NULL 
);


CREATE TABLE productDetail(
		pd_no                         		NUMBER(10)		 NOT NULL,
		pd_price                      		NUMBER(20)		 NULL ,
		pd_start                      		DATE		 DEFAULT sysdate		 NULL ,
		pd_end                        		DATE		 NULL ,
		ps_no                         		VARCHAR2(20)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL ,
		bt_no                         		NUMBER(10)		 NULL ,
		b_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE productDetail_pd_no_SEQ;

CREATE SEQUENCE productDetail_pd_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE QNA(
		q_no                          		NUMBER(10)		 NULL ,
		q_title                       		VARCHAR2(100)		 NULL ,
		q_content                     		VARCHAR2(1000)		 NULL ,
		q_date                        		DATE		 NULL ,
		q_groupno                     		NUMBER(10)		 NULL ,
		q_step                        		NUMBER(10)		 NULL ,
		q_depth                       		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);

DROP SEQUENCE QNA_q_no_SEQ;

CREATE SEQUENCE QNA_q_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

DROP SEQUENCE QNA_q_groupno_SEQ;

CREATE SEQUENCE QNA_q_groupno_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE review(
		r_no                          		NUMBER(10)		 NULL ,
		r_title                       		VARCHAR2(100)		 NULL ,
		r_content                     		VARCHAR2(1000)		 NULL ,
		r_date                        		DATE		 NULL ,
		r_star                        		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(10)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE review_r_no_SEQ;

CREATE SEQUENCE review_r_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE notice(
		n_no                          		NUMBER(10)		 NULL ,
		n_title                       		VARCHAR2(100)		 NULL ,
		n_content                     		VARCHAR2(1000)		 NULL ,
		n_date                        		DATE		 NULL 
);

DROP SEQUENCE notice_n_no_SEQ;

CREATE SEQUENCE notice_n_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE orders(
		o_no                          		NUMBER(10)		 NULL ,
		o_date                        		DATE		 NULL ,
		pd_no_purchase                		NUMBER(10)		 NULL ,
		pd_no_sell                    		NUMBER(10)		 NULL ,
		o_status                      		VARCHAR2(30)		 NULL 
);

DROP SEQUENCE orders_o_no_SEQ;

CREATE SEQUENCE orders_o_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TABLE wishList(
		w_no                          		NUMBER(10)		 NULL ,
		p_no                          		NUMBER(10)		 NULL ,
		m_id                          		VARCHAR2(20)		 NULL 
);


CREATE TABLE paymentList(
		pl_no                         		NUMBER(10)		 NULL ,
		pl_method                     		VARCHAR2(100)		 NULL 
);


CREATE TABLE payment(
		pm_no                         		NUMBER(10)		 NULL ,
		pm_name                       		VARCHAR2(20)		 NULL ,
		pm_phone                      		VARCHAR2(15)		 NULL ,
		pm_address                    		VARCHAR2(50)		 NULL ,
		pm_memo                       		VARCHAR2(100)		 NULL ,
		o_no                          		NUMBER(10)		 NULL ,
		pl_no                         		NUMBER(10)		 NULL 
);



ALTER TABLE member ADD CONSTRAINT IDX_member_PK PRIMARY KEY (m_id);

ALTER TABLE deliveryAddress ADD CONSTRAINT IDX_deliveryAddress_PK PRIMARY KEY (da_zipcode);
ALTER TABLE deliveryAddress ADD CONSTRAINT IDX_deliveryAddress_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);

ALTER TABLE category ADD CONSTRAINT IDX_category_PK PRIMARY KEY (c_no);

ALTER TABLE brands ADD CONSTRAINT IDX_brands_PK PRIMARY KEY (br_no);
ALTER TABLE brands ADD CONSTRAINT IDX_brands_FK0 FOREIGN KEY (c_no) REFERENCES category (c_no);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (p_no);
ALTER TABLE product ADD CONSTRAINT IDX_product_FK0 FOREIGN KEY (br_no) REFERENCES brands (br_no);

ALTER TABLE sizes ADD CONSTRAINT IDX_sizes_PK PRIMARY KEY (s_size);
ALTER TABLE sizes ADD CONSTRAINT IDX_sizes_FK0 FOREIGN KEY (c_no) REFERENCES category (c_no);

ALTER TABLE productSize ADD CONSTRAINT IDX_productSize_PK PRIMARY KEY (ps_no);
ALTER TABLE productSize ADD CONSTRAINT IDX_productSize_FK0 FOREIGN KEY (s_size) REFERENCES sizes (s_size);
ALTER TABLE productSize ADD CONSTRAINT IDX_productSize_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no);

ALTER TABLE bidType ADD CONSTRAINT IDX_bidType_PK PRIMARY KEY (bt_no);

ALTER TABLE bidStatus ADD CONSTRAINT IDX_bidStatus_PK PRIMARY KEY (b_no);

ALTER TABLE productDetail ADD CONSTRAINT IDX_productDetail_PK PRIMARY KEY (pd_no);
ALTER TABLE productDetail ADD CONSTRAINT IDX_productDetail_FK0 FOREIGN KEY (ps_no) REFERENCES productSize (ps_no);
ALTER TABLE productDetail ADD CONSTRAINT IDX_productDetail_FK1 FOREIGN KEY (bt_no) REFERENCES bidType (bt_no);
ALTER TABLE productDetail ADD CONSTRAINT IDX_productDetail_FK2 FOREIGN KEY (b_no) REFERENCES bidStatus (b_no);
ALTER TABLE productDetail ADD CONSTRAINT IDX_productDetail_FK3 FOREIGN KEY (m_id) REFERENCES member (m_id);

ALTER TABLE QNA ADD CONSTRAINT IDX_QNA_PK PRIMARY KEY (q_no);
ALTER TABLE QNA ADD CONSTRAINT IDX_QNA_FK0 FOREIGN KEY (m_id) REFERENCES member (m_id);

ALTER TABLE review ADD CONSTRAINT IDX_review_PK PRIMARY KEY (r_no);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK0 FOREIGN KEY (p_no) REFERENCES product (p_no);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK1 FOREIGN KEY (m_id) REFERENCES member (m_id);

ALTER TABLE notice ADD CONSTRAINT IDX_notice_PK PRIMARY KEY (n_no);

ALTER TABLE orders ADD CONSTRAINT IDX_orders_PK PRIMARY KEY (o_no);
ALTER TABLE orders ADD CONSTRAINT IDX_orders_FK0 FOREIGN KEY (pd_no_purchase) REFERENCES productDetail (pd_no);
ALTER TABLE orders ADD CONSTRAINT IDX_orders_FK1 FOREIGN KEY (pd_no_sell) REFERENCES productDetail (pd_no);

ALTER TABLE wishList ADD CONSTRAINT IDX_wishList_PK PRIMARY KEY (w_no);
ALTER TABLE wishList ADD CONSTRAINT IDX_wishList_FK0 FOREIGN KEY (p_no) REFERENCES product (p_no);
ALTER TABLE wishList ADD CONSTRAINT IDX_wishList_FK1 FOREIGN KEY (m_id) REFERENCES member (m_id);

ALTER TABLE paymentList ADD CONSTRAINT IDX_paymentList_PK PRIMARY KEY (pl_no);

ALTER TABLE payment ADD CONSTRAINT IDX_payment_PK PRIMARY KEY (pm_no);
ALTER TABLE payment ADD CONSTRAINT IDX_payment_FK0 FOREIGN KEY (o_no) REFERENCES orders (o_no);
ALTER TABLE payment ADD CONSTRAINT IDX_payment_FK1 FOREIGN KEY (pl_no) REFERENCES paymentList (pl_no);

