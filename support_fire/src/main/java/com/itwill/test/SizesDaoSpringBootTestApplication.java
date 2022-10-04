package com.itwill.test;

import java.util.List;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;

import com.itwill.dao.ProductSizeDao;
import com.itwill.dao.SizesDao;
import com.itwill.dto.Product;
import com.itwill.dto.ProductDetail;
import com.itwill.dto.ProductSize;
import com.itwill.mapper.ProductDetailMapper;
import com.itwill.mapper.ProductMapper;
import com.itwill.mapper.ProductSizeMapper;
import com.itwill.mapper.SizesMapper;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"}, includeFilters = {
        @Filter(
                type = FilterType.ASSIGNABLE_TYPE, 
                classes = {SizesDao.class,SizesMapper.class}
            )
        } )
public class SizesDaoSpringBootTestApplication {

	public static void main(String[] args) {
		SpringApplication application = 
				new SpringApplication(SizesDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		SizesDao sizesDao=(SizesDao)context.getBean(SizesDao.class);
		System.out.println(sizesDao.selectAll(1));
		
		
	}

}
