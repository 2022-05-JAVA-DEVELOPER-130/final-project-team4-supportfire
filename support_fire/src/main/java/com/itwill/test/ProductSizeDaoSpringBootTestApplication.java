package com.itwill.test;

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

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"}, includeFilters = {
        @Filter(
                type = FilterType.ASSIGNABLE_TYPE, 
                classes = {ProductSizeDao.class,ProductSizeMapper.class, ProductDao.class}
            )
        } )
public class ProductSizeDaoSpringBootTestApplication {

	public static void main(String[] args) {
		SpringApplication application = 
				new SpringApplication(ProductSizeDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		ProductSizeDao productSizeDao=(ProductSizeDao)context.getBean(ProductSizeDao.class);
		ProductDao productDao=(ProductDao)context.getBean(ProductDao.class);
		/*
		//System.out.println(productSizeDao.selectByNo(1));
		//System.out.println(productSizeDao.delete(14));
		System.out.println(productSizeDao.selectBuyMinPriceByNo(1));
		System.out.println(productSizeDao.selectSellMinPriceByNo(1));
		Product product_no = productDao.selectByNo(1);
		System.out.println(product_no);
		//ProductSize productSizeInsert = new ProductSize(0, "230", product_no);
		//System.out.println(productSizeDao.insert(productSizeInsert));
		/*
		System.out.println(productSizeDao.insert(insertProductSize));
		*/
		/*
		System.out.println(productDao.selectAll());
		
		System.out.println(productDao.selectBuyMinPriceByNo(1));
		System.out.println(productDao.selectSellMinPriceByNo(1));
		
		List<Map> map = productDao.selectAllMinPrice();
		for (Map map2 : map) {
			System.out.println("P_no = " +map2.get("P_NO") + " : min_price =" + map2.get("min_price"));
		}
		System.out.println(productDao.selectAllMinPrice());
		 */
		List<Map> map = productSizeDao.selectBuyMinPriceByNo(1);
		System.out.println(map);
		//System.out.println(map);
		Map sizeMap = new HashMap();
		for (Map map2 : map) {
			String size = (String)map2.get("S_SIZE");
			//System.out.println(map2.get("min_price"));
			sizeMap.put(size, map2.get("min_price"));
		}
		System.out.println(sizeMap);
		
		
		
		//System.out.println(sizeMap.get("220"));
		/*
		System.out.println(productSizeDao.selectByNo(1));
		List<ProductSize> psSize = productSizeDao.selectByNoAll(2);
		System.out.println(productSizeDao.selectByNo(1));
		for (int i=0; i<psSize.size(); i++) {
			System.out.println("size:" + psSize.get(i).getS_size());
			System.out.println("price : " + sizeMap.get(psSize.get(i).getS_size()));
		}
		*/
	}

}
