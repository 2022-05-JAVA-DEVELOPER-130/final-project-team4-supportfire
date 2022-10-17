package com.itwill.test;



import java.util.Date;

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
import com.itwill.dao.QnaDao;
import com.itwill.dto.ProductDetail;
import com.itwill.dto.ProductSize;
import com.itwill.dto.Qna;
import com.itwill.dto.ReQna;
import com.itwill.mapper.CategoryMapper;
import com.itwill.mapper.OrdersMapper;
import com.itwill.mapper.ProductDetailMapper;
import com.itwill.mapper.QnaMapper;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"},includeFilters= {
		@Filter(type=FilterType.ASSIGNABLE_TYPE,
				classes = {QnaDao.class,QnaMapper.class}
				)
})
public class QnaDaoSpringBootTestApplication {

	public static void main(String[] args) {
		SpringApplication application = 
				new SpringApplication(QnaDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		QnaDao qnaDao=(QnaDao)context.getBean(QnaDao.class);
		//Qna qna = new Qna(0, "제몬", "내욘", null, "seongmin", new ReQna(1, null, null));
		//Qna qnaUpdate = new Qna(15, "제몬수정", "내욘수접", null, "seongmin",new ReQna(1, null, null));
		//System.out.println(qnaDao.qna_insert(qna));
		//System.out.println(qnaDao.qna_update(qnaUpdate));
		System.out.println(qnaDao.selectAll());
		System.out.println(qnaDao.qna_selectByNo(3));
		System.out.println(qnaDao.selectAll_p(1,3));
	}

}
