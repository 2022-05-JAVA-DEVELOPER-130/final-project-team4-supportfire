package com.itwill.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;
import org.springframework.context.annotation.ComponentScan.Filter;

import com.itwill.dao.OrdersDao;
import com.itwill.dto.Orders;
import com.itwill.dto.Payment;
import com.itwill.mapper.OrdersMapper;
import com.itwill.service.OrdersService;
import com.itwill.service.PaymentService;


	@SpringBootApplication
	@ComponentScan(basePackages = {"com.itwill"},includeFilters= {
			@Filter(type=FilterType.ASSIGNABLE_TYPE,
					classes = {OrdersService.class,OrdersDao.class,OrdersMapper.class}
					)
	})
	public class PaymentServiceSpringBootTestApplication {

		public static void main(String[] args) throws Exception {
			// TODO Auto-generated method stub
			SpringApplication application = 
					new SpringApplication(PaymentServiceSpringBootTestApplication.class);
			application.setWebApplicationType(WebApplicationType.NONE);
			ConfigurableApplicationContext context=application.run(args);
			PaymentService paymentService=(PaymentService)context.getBean(PaymentService.class);
			System.out.println(paymentService.insertPayment(new Payment(0,"김지원","01020202020","강동","문앞", 17, 2)));
			
			
		}
	}
