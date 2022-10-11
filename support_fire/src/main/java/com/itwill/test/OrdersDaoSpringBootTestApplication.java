package com.itwill.test;

import java.sql.Date;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;

import com.itwill.dao.OrdersDao;
import com.itwill.dto.Orders;
import com.itwill.dto.ProductDetail;
import com.itwill.mapper.OrdersMapper;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"},includeFilters= {
		@Filter(type=FilterType.ASSIGNABLE_TYPE,
				classes = {OrdersDao.class,OrdersMapper.class}
				)
})
public class OrdersDaoSpringBootTestApplication {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		SpringApplication application = 
				new SpringApplication(OrdersDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		OrdersDao ordersDao=(OrdersDao)context.getBean(OrdersDao.class);
		System.out.println(ordersDao.selectAll());
		//System.out.println(ordersDao.selectByIdPurchase("jiwon"));
		//System.out.println(ordersDao.selectByIdSell("bongkyoun"));
		//System.out.println(ordersDao.selectByNo(1));
		//System.out.println(ordersDao.updateByNo("배송완료",2));
		Orders insertOrders=new Orders(10,null,3,2,"배송중");
		System.out.println(ordersDao.insertOrder(insertOrders));
		//System.out.println(ordersDao.deleteByNo(3));
		
		
		
	}

}
