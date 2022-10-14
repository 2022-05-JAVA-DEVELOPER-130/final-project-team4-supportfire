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
import com.itwill.dao.ProductDetailDao;
import com.itwill.dto.Product;
import com.itwill.dto.ProductDetail;
import com.itwill.dto.ProductSize;
import com.itwill.mapper.ProductDetailMapper;
import com.itwill.mapper.ProductMapper;
import com.itwill.service.ProductService;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"}, includeFilters = {
        @Filter(
                type = FilterType.ASSIGNABLE_TYPE, 
                classes = {ProductDao.class,ProductMapper.class,ProductService.class}
            )
        } )
public class ProductServiceSpringBootTestApplication {

	public static void main(String[] args) {
		SpringApplication application = 
				new SpringApplication(ProductServiceSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		ProductService productService=(ProductService)context.getBean(ProductService.class);
		//System.out.println(productService.insert(new Product(0, "갤럭시제트제트플립플립플립", "30/09/30", 2000000, "img", 3)));
		//System.out.println(productService.delete(6));
		//System.out.println(productService.selectAll());
		//System.out.println(productService.selectBuyMinPriceByNo(1));
		//System.out.println(productService.searchAll("nike"));
		//System.out.println(productService.selectSellMinPriceByNo(1));
		//System.out.println(productService.selectByNo(1));
		/*
		System.out.println(productService.selectAllMinPrice());
		List<Map> map = productService.selectAllMinPrice();
		for (Map map2 : map) {
			System.out.println("----------------------------------------------------------");
			System.out.println("P_no = " +map2.get("P_NO") + " : min_price =" + map2.get("min_price"));
		}
		*/
		//System.out.println(map1);
		/*
		List<Map> map1 = productService.selectAllMinPrice();
		Map minPriceMap = new HashMap();
		for (Map map : map1) {
			String p_no = String.valueOf(map.get("p_no"));
			String p_price = String.valueOf(map.get("min_price"));
			if(p_price == "null") {
				p_price = "구매 입찰";
				minPriceMap.put(p_no, p_price);
				System.out.println("p_no : "+p_no+"  제품 가격 : "+ p_price);
			} else {
				minPriceMap.put(p_no, p_price);
				System.out.println("p_no : "+p_no+"  제품 가격 : "+ p_price);
			}
			
		}
		*/
			System.out.println(productService.selectBuyMinPriceByNo(1));
			System.out.println(productService.selectSellMinPriceByNo(1));
			/*
			if(map2.get("min_price") == null) {
			
			//System.out.println(map2.get("min_price")+" : 등록된 상품이 없어용");
			}
			System.out.println("P_no = " +map2.get("P_NO") + " : min_price = " + map2.get("min_price"));
			 */
		 
		 
		
	}

}
