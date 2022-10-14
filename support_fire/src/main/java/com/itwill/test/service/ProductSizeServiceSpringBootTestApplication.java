package com.itwill.test.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;

import com.itwill.dao.ProductDao;
import com.itwill.dao.ProductSizeDao;
import com.itwill.dto.Product;
import com.itwill.dto.ProductDetail;
import com.itwill.dto.ProductSize;
import com.itwill.mapper.ProductDetailMapper;
import com.itwill.mapper.ProductMapper;
import com.itwill.mapper.ProductSizeMapper;
import com.itwill.service.ProductService;
import com.itwill.service.ProductSizeService;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"}, includeFilters = {
        @Filter(
                type = FilterType.ASSIGNABLE_TYPE, 
                classes = {ProductSizeDao.class,ProductSizeMapper.class, ProductDao.class, ProductSizeService.class}
            )
        } )
public class ProductSizeServiceSpringBootTestApplication {

	public static void main(String[] args) {
		SpringApplication application = 
				new SpringApplication(ProductSizeServiceSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		ProductSizeService productSizeService=(ProductSizeService)context.getBean(ProductSizeService.class);
		ProductService productService=(ProductService)context.getBean(ProductService.class);
		
		System.out.println(productSizeService.selectBuyMinPriceByNo(1));
		System.out.println(productSizeService.selectSellMinPriceByNo(1));
		System.out.println(productSizeService.selectByNoAll(1));
	}

}
