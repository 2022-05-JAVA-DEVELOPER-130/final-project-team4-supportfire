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
import com.itwill.dao.MemberDao;
import com.itwill.dao.OrdersDao;
import com.itwill.dto.Member;
import com.itwill.mapper.CategoryMapper;
import com.itwill.mapper.MemberMapper;
import com.itwill.mapper.OrdersMapper;

@SpringBootApplication
@ComponentScan(basePackages = {"com.itwill"},includeFilters= {
		@Filter(type=FilterType.ASSIGNABLE_TYPE,
				classes = {MemberDao.class,MemberMapper.class}
				)
})
public class MemberDaoSpringBootTestApplication {

	public static void main(String[] args) throws Exception {
		SpringApplication application = 
				new SpringApplication(MemberDaoSpringBootTestApplication.class);
		application.setWebApplicationType(WebApplicationType.NONE);
		ConfigurableApplicationContext context=application.run(args);
		MemberDao member = context.getBean(MemberDao.class);
		//System.out.println(member.updateMember(new Member("newMember", "1234", "newName", "01099999999", "909090", "newMail@mail.com", "남자", 2000, "서울시 강북구")));
		System.out.println(member.selectAllMembers());
//		System.out.println(member.insertMember(new Member("test","test","test","test","test","test","test",1000,"test")));
//		System.out.println(member.deleteMember("test"));
		System.out.println(member.selectMemberByPhone("01023456789"));
	
	}

}
