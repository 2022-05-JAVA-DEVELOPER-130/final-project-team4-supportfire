package com.itwill.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.itwill.dao.OrdersDao;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"})
public class OrdersDaoSpringBootTestApplication {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		SpringApplication application = 
				new SpringApplication(OrdersDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		OrdersDao ordersDao=(OrdersDao)context.getBean(OrdersDao.class);
		//System.out.println(ordersDao.selectAll());
		//System.out.println(ordersDao.selectByIdPurchase("jiwon"));
		//System.out.println(ordersDao.selectByIdSell("jiwon"));
		
	}

}
