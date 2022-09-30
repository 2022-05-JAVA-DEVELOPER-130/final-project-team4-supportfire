package com.itwill.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;

import com.itwill.dao.ProductDetailDao;
import com.itwill.dto.ProductDetail;
import com.itwill.dto.ProductSize;
import com.itwill.mapper.ProductDetailMapper;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"}, includeFilters = {
        @Filter(
                type = FilterType.ASSIGNABLE_TYPE, 
                classes = {ProductDetailDao.class,ProductDetailMapper.class}
            )
        } )
public class ProductDetatilDaoSpringBootTestApplication {

	public static void main(String[] args) {
		SpringApplication application = 
				new SpringApplication(ProductDetatilDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		ProductDetailDao productDetailDao=(ProductDetailDao)context.getBean(ProductDetailDao.class);
		System.out.println(productDetailDao.selectByNo(1));
		System.out.println(productDetailDao.selectById("seongmin"));
		System.out.println(productDetailDao.selectAll());
		System.out.println(productDetailDao.selectByIdAndBtNo("seongmin", 1));
		//System.out.println(productDetailDao.insert(new ProductDetail(0, 140000, null, null, new ProductSize(1, null, null), "seongmin", 1, 1)));
		System.out.println(productDetailDao.delete(8));
	}

}
