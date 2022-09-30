package com.itwill.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;

import com.itwill.dao.OrdersDao;
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
		System.out.println(ordersDao.selectByIdPurchase("jiwon"));
		System.out.println(ordersDao.selectByIdSell("jiwon"));
		
	}

}
