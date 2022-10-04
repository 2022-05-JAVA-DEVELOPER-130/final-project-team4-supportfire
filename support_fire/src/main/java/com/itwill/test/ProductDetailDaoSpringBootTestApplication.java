package com.itwill.test;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;

import com.itwill.dao.CategoryDao;
import com.itwill.dao.CategoryDaoImp;
import com.itwill.dao.OrdersDao;
import com.itwill.dao.ProductDetailDao;
import com.itwill.mapper.CategoryMapper;
import com.itwill.mapper.OrdersMapper;
import com.itwill.mapper.ProductDetailMapper;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"},includeFilters= {
		@Filter(type=FilterType.ASSIGNABLE_TYPE,
				classes = {ProductDetailDao.class,ProductDetailMapper.class}
				)
})
public class ProductDetailDaoSpringBootTestApplication {

	public static void main(String[] args) {
		SpringApplication application = 
				new SpringApplication(ProductDetailDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		ProductDetailDao productDetailDao=(ProductDetailDao)context.getBean(ProductDetailDao.class);
		System.out.println(productDetailDao.selectSellListByNo(1));
		//System.out.println(productDetailDao.selectAll());
		//System.out.println(productDetailDao.updateByBidStatus(3, 5));
		//System.out.println(productDetailDao.selectByNo(1));
	}

}
