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
import com.itwill.mapper.OrdersMapper;
import com.itwill.service.OrdersService;


	@SpringBootApplication
	@ComponentScan(basePackages = {"com.itwill"},includeFilters= {
			@Filter(type=FilterType.ASSIGNABLE_TYPE,
					classes = {OrdersService.class,OrdersDao.class,OrdersMapper.class}
					)
	})
	public class OrdersServiceSpringBootTestApplication {

		public static void main(String[] args) throws Exception {
			// TODO Auto-generated method stub
			SpringApplication application = 
					new SpringApplication(OrdersServiceSpringBootTestApplication.class);
			application.setWebApplicationType(WebApplicationType.NONE);
			ConfigurableApplicationContext context=application.run(args);
			OrdersService ordersService=(OrdersService)context.getBean(OrdersService.class);
			//6번상품구매
			//Orders newPurchase= new Orders(0, null, 0, 6, null);
			//System.out.println(ordersService.insertOrder(newPurchase));
			
			//3번상품판매
			//Orders newSell= new Orders(0,null,3,0,null);
			//System.out.println(ordersService.insertOrder(newSell));
			
			//없는번호 구매
			Orders newPurchase= new Orders(0, null, 0, 11, null);
			System.out.println(ordersService.insertOrder(newPurchase));
			
		}
	}
