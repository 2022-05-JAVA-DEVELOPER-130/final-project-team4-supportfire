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

import com.itwill.dao.NoticeDao;
import com.itwill.dao.ProductDao;
import com.itwill.dao.ProductDetailDao;
import com.itwill.dto.Notice;
import com.itwill.dto.Product;
import com.itwill.dto.ProductDetail;
import com.itwill.dto.ProductSize;
import com.itwill.mapper.NoticeMapper;
import com.itwill.mapper.ProductDetailMapper;
import com.itwill.mapper.ProductMapper;
import com.itwill.service.NoticeService;
import com.itwill.service.ProductService;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"}, includeFilters = {
        @Filter(
                type = FilterType.ASSIGNABLE_TYPE, 
                classes = {NoticeDao.class,NoticeMapper.class,NoticeService.class}
            )
        } )
public class NoticeServiceSpringBootTestApplication {

	public static void main(String[] args) throws Exception {
		SpringApplication application = 
				new SpringApplication(NoticeServiceSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		NoticeService noticeService=(NoticeService)context.getBean(NoticeService.class);
		
		//System.out.println(noticeService.selectAll(1));
		//System.out.println("selectByNo() test:"+noticeService.selectByNo(2));
		
		//System.out.println("insert() test:"+noticeService.insert(new Notice(0, "추가 service 공지사항 제목", "추가 service 공지사항 내용", null, 0, 0)));
		
		//System.out.println("delete() test:"+noticeService.delete(6));
		
		//System.out.println("update() test:"+noticeService.update(new Notice(4, "너무 달아", "야미야미야미야미", null, 0, 1)));
		
		//System.out.println("updateCount() test:"+noticeService.updateCount(2));
		 
		 
		
	}

}
