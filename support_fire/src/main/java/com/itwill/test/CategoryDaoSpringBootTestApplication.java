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
import com.itwill.mapper.CategoryMapper;
import com.itwill.mapper.OrdersMapper;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"},includeFilters= {
		@Filter(type=FilterType.ASSIGNABLE_TYPE,
				classes = {CategoryDao.class,CategoryMapper.class}
				)
})
public class CategoryDaoSpringBootTestApplication {

	public static void main(String[] args) {
		SpringApplication application = 
				new SpringApplication(CategoryDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		CategoryDao carCategoryDao=(CategoryDao)context.getBean(CategoryDao.class);
		//System.out.println(carCategoryDao.selectAll());

	}

}
