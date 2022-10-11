package com.itwill.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;

import com.itwill.dao.PaymentDao;
import com.itwill.dto.Payment;
import com.itwill.mapper.PaymentMapper;

import org.springframework.context.annotation.ComponentScan.Filter;



@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"},includeFilters= {
		@Filter(type=FilterType.ASSIGNABLE_TYPE,
				classes = {PaymentDao.class,PaymentMapper.class}
				)
})
public class PaymentDaoSpringBootTestApplication {

	public static void main(String[] args) throws Exception{
		// TODO Auto-generated method stub
		SpringApplication application = 
				new SpringApplication(OrdersDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		PaymentDao paymentDao=(PaymentDao)context.getBean(PaymentDao.class);
		
		//System.out.println(paymentDao.selectAll());
		//System.out.println(paymentDao.selectByONo(1));
		//System.out.println(paymentDao.selectByPMNo(2));
		//System.out.println(paymentDao.updateByNo(new Payment(1, "김지원", "01011111111", "서울시강동구", "문앞에", 1, 0)));
		
		Payment insertPayment=new Payment(3,"하하하","01022222222", "서울시강남구", "개조심", 2, 3);
		System.out.println(paymentDao.insertPayment(insertPayment));
		//System.out.println(paymentDao.deleteByNo(4));
	
	}

}
