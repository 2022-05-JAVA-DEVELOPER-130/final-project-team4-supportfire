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
import com.itwill.dto.Product;
import com.itwill.dto.ProductDetail;
import com.itwill.dto.ProductSize;
import com.itwill.mapper.ProductDetailMapper;
import com.itwill.mapper.ProductMapper;
import com.itwill.mapper.ProductSizeMapper;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"}, includeFilters = {
        @Filter(
                type = FilterType.ASSIGNABLE_TYPE, 
                classes = {ProductSizeDao.class,ProductSizeMapper.class}
            )
        } )
public class ProductSizeDaoSpringBootTestApplication {

	public static void main(String[] args) {
		SpringApplication application = 
				new SpringApplication(ProductSizeDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		ProductSizeDao productSizeDao=(ProductSizeDao)context.getBean(ProductSizeDao.class);
		//System.out.println(productSizeDao.selectByNo(1));
		System.out.println(productSizeDao.selectBuyMinPriceBySize(1, "230"));
		System.out.println(productSizeDao.selectSellMinPriceBySize(1, "230"));
		//System.out.println(productSizeDao.delete(14));
		/*
		System.out.println(productDao.selectAll());
		System.out.println(productDao.selectAllMinPrice());
		System.out.println(productDao.selectBuyMinPriceByNo(1));
		System.out.println(productDao.selectSellMinPriceByNo(1));
		
		List<Map> map = productDao.selectAllMinPrice();
		for (Map map2 : map) {
			System.out.println("P_no = " +map2.get("P_NO") + " : min_price =" + map2.get("min_price"));
		}
		 */
		
	}

}
