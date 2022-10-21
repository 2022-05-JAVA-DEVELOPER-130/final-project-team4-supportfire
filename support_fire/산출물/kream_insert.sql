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
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'Nike', 1);
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'adidas', 1);
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'Vans', 1);
insert into brands values(BRANDS_BR_NO_SEQ.nextval, 'New Balance', 1);

/************제품***************/
/*Nike*/
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Air Force 1 07 WB Flax', '19/09/10', 169000 ,'Nike_Air_Force_1_07_WB_Flax.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Dunk Low Retro Black', '21/01/14', 129000, 'Nike_Dunk_Low_Retro_Black.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Dunk Low Light Smoke Grey', '22/05/07', 129000, 'Nike_Dunk_Low_Light_Smoke_Grey.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike Dunk Low Retro Gym Red', '22/09/21', 129000, 'Nike_Dunk_Low_Retro_Gym_Red.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Nike x J.Crew Killshot 2 Sail Midnight Navy', '17/02/26', 109000, 'Nike_x_J.Crew_Killshot_2_Sail_Midnight_Navy.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Jordan 1 x Travis Scott Retro Low OG SP Sail and Ridgerock', '22/07/21', 189000 ,'Jordan_1_x_Travis_Scott_Retro_Low_OG_SP_Sail_and_Ridgerock.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Jordan 1 Retro Low OG Black and Dark Powder Blue', '22/07/27', 159000 ,'Jordan_1_Retro_Low_OG_Black_and_Dark_Powder_Blue.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Jordan 1 Retro High OG Black Mocha', '20/11/13', 199000 ,'Jordan_1_Retro_High_OG_Black_Mocha.png', 1);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Jordan 1 Mid Light Smoke Grey Anthracite', '22/01/24', 149000 ,'Jordan_1_Mid_Light_Smoke_Grey_Anthracite.png', 1);
/*adidas*/
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Adidas Samba Vegan White Black', '21/07/27', 128700 ,'Adidas Samba Vegan White Black.png', 2);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Adidas Superstar Core Black White', '19/12/23', 119000 ,'Adidas Superstar Core Black White.png', 2);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Adidas Samba OG Black White Gum', '18/06/01', 119000 ,'Adidas Samba OG Black White Gum.png', 2);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Adidas Samba OG Cloud White', '18/01/01', 128700 ,'Adidas Samba OG Cloud White.png', 2);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Adidas Yeezy Boost 350 V2 Beluga - Reflective', '21/12/18', 329000 ,'Adidas Yeezy Boost 350 V2 Beluga - Reflective.png', 2);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Adidas Yeezy Boost 350 V2 Slate Core Black', '22/09/03', 329000 ,'Adidas Yeezy Boost 350 V2 Slate Core Black.png', 2);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Adidas Yeezy Slide Bone 2022', '21/07/27', 99000 ,'Adidas Yeezy Slide Bone 2022.png', 2);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Adidas Samba ADV Black', '22/03/25', 99000 ,'Adidas Samba ADV Black.png', 2);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Adidas Adimatic Grey One', '21/07/27', 139000 ,'Adidas Adimatic Grey One.png', 2);
/*Vans*/
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Vans Vault x CDG Slip-On LX White', '22/09/29', 169000 ,'Vans Vault x CDG Slip-On LX White.png', 3);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Vans Vault x Bianca Chandon Classic Slip-On LX Stressed Black White', '22/08/20', 125000 ,'Vans Vault x Bianca Chandon Classic Slip-On LX Stressed Black White.png', 3);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Vans Vault x CDG Old Skool LX White', '22/01/07', 119000 ,'Vans Vault x CDG Old Skool LX White.png', 3);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Vans Slip-On Checkerboard', '17/01/02', 71500 ,'Vans Slip-On Checkerboard.png', 3);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Vans Vault x Bianca Chandon Authentic LX Stressed Navy White', '22/08/20', 125000 ,'Vans Vault x Bianca Chandon Authentic LX Stressed Navy White.png', 3);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Vans Vault OG Old Skool LX Black', '22/02/26', 125000 ,'Vans Vault OG Old Skool LX Black.png', 3);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Vans x BAPE Old Skool 36 DX ABC Camo', '22/09/29', 169000 ,'Vans x BAPE Old Skool 36 DX ABC Camo.png', 3);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Vans ComfyCush Old Skool Black True white', '20/09/29', 90000 ,'Vans ComfyCush Old Skool Black True white.png', 3);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'Vans Vault x Palm Angels Sk8-Hi Reissue VLT LX Chili Pepper', '22/09/30', 189000 ,'Vans Vault x Palm Angels Sk8-Hi Reissue VLT LX Chili Pepper.png', 3);
/*New Balance*/
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'New Balance 993 Made in USA Grey - D Standard', '18/08/21', 259000 ,'New Balance 993 Made in USA Grey - D Standard.png', 4);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'New Balance 574 Heritage Orange Burst White', '22/08/26', 119000 ,'New Balance 574 Heritage Orange Burst White.png', 4);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'New Balance 2002R Grey', '20/09/25', 149000 ,'New Balance 2002R Grey.png', 4);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'New Balance 530 Silver', '19/12/02', 99000 ,'New Balance 530 Silver.png', 4);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'New Balance 992 Made in USA Grey - D Standard', '20/04/13', 259000 ,'New Balance 992 Made in USA Grey - D Standard.png', 4);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'New Balance 530 Steel Grey', '21/01/08', 109000 ,'New Balance 530 Steel Grey.png', 4);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'New Balance 2002R Eclipse Castlerock', '22/09/16', 149000 ,'New Balance 2002R Eclipse Castlerock.png', 4);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'New Balance 530 White', '19/12/02', 109000 ,'New Balance 530 White.png', 4);
insert into product values(PRODUCT_P_NO_SEQ.nextval, 'New Balance 574 Legacy Navy', '22/06/10', 129000 ,'New Balance 574 Legacy Navy.png', 4);
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

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 10);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 10);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 11);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 11);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 12);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 12);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 13);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 13);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 14);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 14);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 15);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 15);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 16);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 16);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 17);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 17);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 17);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 18);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 18);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 19);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 19);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 20);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 20);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 21);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 21);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 22);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 22);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 23);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 23);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 24);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 24);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 25);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 25);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 26);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 26);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 27);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 27);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 28);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 28);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 29);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 29);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 30);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 30);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 31);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 31);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 32);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 32);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 33);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 33);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 34);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 34);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 35);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 35);

insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '210', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '220', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '230', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '240', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '250', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '260', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '270', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '280', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '290', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '300', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '310', 36);
insert into productSize values(PRODUCTSIZE_PS_NO_SEQ.nextval, '320', 36);

/************입찰상태************/
insert into bidStatus values(1, '대기중');
insert into bidStatus values(2, '거래중');
insert into bidStatus values(3, '거래완료');

/**************입찰타입***************/
insert into bidType values(1, '구매');
insert into bidType values(2, '판매');

/************회원*****************/
insert into member values('seongmin', '1234', '정성민', '01011111111', '970902', 'seongmin@gamil.com', '남', 1000, '서울시 강남구');
insert into member values('bongkyoun', '1234', '김봉균', '01022222222', '940601', 'bongkyoun@gamil.com', '남', 1000, '서울시 서초구');
insert into member values('jiwon', '1234', '김지원', '01033333333', '971002', 'jiwon@gamil.com', '여', 1000, '서울시 종로구');
insert into member values('hyun', '1234', '박현', '01044444444', '900602', 'hyun@gamil.com', '남', 1000, '서울시 중구');
insert into member values('enbi', '1234', '임은비', '01055555555', '970902', 'seongmin@gamil.com', '남', 1000, '서울시 강남구');
insert into member values('joo2', '1234', '이주희', '01066666666', '940601', 'bongkyoun@gamil.com', '남', 1000, '서울시 서초구');
insert into member values('sojin', '1234', '안소진', '01077777777', '971002', 'jiwon@gamil.com', '여', 1000, '서울시 종로구');
insert into member values('seoyoung', '1234', '최서영', '01088888888', '900602', 'hyun@gamil.com', '남', 1000, '서울시 중구');
insert into member values('kakarot', '1234', '카카로트', '01099999999', '900602', 'hyun@gamil.com', '남', 1000, '서울시 중구');
insert into member values('naruto', '1234', '나루토', '01011111112', '900602', 'hyun@gamil.com', '남', 1000, '서울시 중구');
    
/***********배달주소*************/

insert into address values(ADDRESS_A_NO_SEQ.nextval, '정성민', '01012345678', '06392', '서울시 강남구', '301호', 'seongmin');
insert into address values('회사', '09283', '서울시 서초구', '302호', 'bongkyoun');
insert into address values('사무실', '11846', '서울시 종로구', '303호', 'jiwon');
insert into address values('집', '03527', '서울시 중구', '304호', 'hyun');

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

insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 169000, sysdate, sysdate+7, 450, 'seongmin', 2, 2);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 140000, sysdate, sysdate+7, 422, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 160000, sysdate, sysdate+7, 430, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 165000, sysdate, sysdate+7, 380, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 150000, sysdate, sysdate+7, 368, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 153000, sysdate, sysdate+7, 378, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 140000, sysdate, sysdate+7, 345, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 140000, sysdate, sysdate+7, 480, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 155000, sysdate, sysdate+7, 435, 'seongmin', 2, 1);
insert into productDetail values(PRODUCTDETAIL_PD_NO_SEQ.nextval, 180000, sysdate, sysdate+7, 521, 'seongmin', 2, 2);


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
insert into reqna values(reqna_rq_no_seq.nextval, '안녕하세요 support_fire 1:1 문의 담담자 CS 정성윤입니다. 현재 고객님의 주문 단계는 입금전 단계 입니다. 상품은 입금이된 후 출고가 진행되오니 결제 후 사이트를 통하여 배송상황 확인 부탁드립니다.', sysdate);
insert into reqna values(reqna_rq_no_seq.nextval, '안녕하세요 support_fire 1:1 문의 담담자 CS 임현정입니다. 아쉽게도 나이키 측에서 재고가 많이 풀리지 않아 세계적으로 매물이 부족한 상황입니다.', sysdate);
insert into reqna values(reqna_rq_no_seq.nextval, '안녕하세요 support_fire 1:1 문의 담담자 CS 박현입니다. 죄송하지만 코로나 사태로 인하여 물류량 증가로 전체적인 배송이 지연되는 상황입니다 고객님의 너그러운 마음으로 이해 부탁드립니다.', sysdate);

/*********QNA***********/
insert into qna values(QNA_Q_NO_SEQ.nextval, '상품 하자', '발견 곤란', sysdate, 'sojin', null);
insert into qna values(QNA_Q_NO_SEQ.nextval, '박스가 심하게 훼손되서 왔읍니다', '왜 이럴까요?', sysdate, 'seoyoung', null);
insert into qna values(QNA_Q_NO_SEQ.nextval, '배송지연 실화인가요?', '감동실화인가요?', sysdate, 'seongmin', 3);
insert into qna values(QNA_Q_NO_SEQ.nextval, '상품이 출발했는데 배송지를 변경하고 싶어요', '가능한가요?', sysdate, 'jiwon', null);
insert into qna values(QNA_Q_NO_SEQ.nextval, '상품하자 접수합니다', '검수를 제대로 안하시는건지 곤란하네요^_ㅠ', sysdate, 'joo2', null);
insert into qna values(QNA_Q_NO_SEQ.nextval, '가볍고 뛰어다니기 좋은 신발 있을까요?', '직업상 뛰어다닐 일이 많아 추천 부탁드립니다.', sysdate, 'naruto', null);
insert into qna values(QNA_Q_NO_SEQ.nextval, '나이키 x 드래곤볼 콜라보 제품은 매물이 없나요?', '제가 드래곤볼을 많이 좋아합니다', sysdate, 'kakarot', 2);
insert into qna values(QNA_Q_NO_SEQ.nextval, '주문한지 15일째인데 상품이 도착하지 않고있습니다.', '맨발로 다니라는 소리인가요?', sysdate, 'enbi', 1);

/**********notice***********/
insert into notice values(NOTICE_N_NO_SEQ.nextval, '인터넷 익스플로러(IE) 지원 종료 안내', 
                                                     '안녕하세요 support_fire입니다. 
                                                     6/15(수)부터 마이크로소프트(MS)의 공식 지원이 종료되는 ‘인터넷 익스플로러(IE)’에 대한 업데이트 지원을 종료합니다. 구글 크롬(Chrome) 등 최신 브라우저를 사용하시길 바랍니다. 감사합니다.', 
                                                     sysdate, 0, 1);
insert into notice values(NOTICE_N_NO_SEQ.nextval, '택배사 파업 여파 해소 및 배송 정상화 안내', 
                                                    '안녕하세요 support_fire입니다. 
                                                    택배노조의 파업 및 종료 후 여파로 인한 배송 지연이 오늘부터 정상화되었습니다.
                                                    현재 모든 지역에서 파업 전과 같은 정상 일정으로 배송이 가능함을 알려 드립니다.배송 정상화를 기다려 주셔서 감사합니다.
                                                    앞으로도 더 나은 서비스 제공을 위해 최선의 노력을 다하겠습니다. 감사합니다.',
                                                    sysdate, 0, 0);
insert into notice values(NOTICE_N_NO_SEQ.nextval, '신규 회원 가입 혜택 변경 안내', 
                                                     '안녕하세요 support_fire입니다. 
                                                     (기존)회원 가입 시 적립금 지급 금액 : 500원
                                                     (현재)회원 가입 시 적립금 지금 금액 : 1000원 으로 인상 되었습니다 많은 관심 부탁드립니다. 감사합니다.', 
                                                     sysdate, 0, 0);
insert into notice values(NOTICE_N_NO_SEQ.nextval, '배송지연 안내', 
                                                    '안녕하세요 support_fire입니다. 
                                                    배송이 지연되어 죄송합니다 근데 어쩔 수 없습니다.', 
                                                    sysdate, 0, 0);
insert into notice values(NOTICE_N_NO_SEQ.nextval, '친구추천 기능 삭제 안내', 
                                                    '안녕하세요 support_fire입니다. 
                                                     친구추천 기능이 삭제되어 죄송합니다 근데 어쩔 수 없습니다.', 
                                                     sysdate, 0, 0);
insert into notice values(NOTICE_N_NO_SEQ.nextval, '이벤트 추첨 결과 안내', 
                                                     '안녕하세요 support_fire입니다. 
                                                     추첨결과 아무도 당첨되지 않았습니다.
                                                     다음을 기약하시길....',
                                                     sysdate, 0, 0);

/*********review**********/

commit;
