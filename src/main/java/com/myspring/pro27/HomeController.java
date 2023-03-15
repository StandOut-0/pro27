package com.myspring.pro27;

import java.text.DateFormat;
import java.util.Date;
//로케일 개체, 사용자의 국가, 지역 또는 문화의 관습과 관습에 따라 번호 형식을 지정
import java.util.Locale;

// 개발할 때, SLF4J API를 사용하여 로깅 코드를 작성
///다양한 로깅 프레임 워크에 대한 추상화(인터페이스) 역할을 하는 라이브러리
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//클래스 경로 검색을 통해 구현 클래스를 자동으로 감지할 수 있도록함
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
/* @Controller */
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		//INFO : com.myspring.pro27.HomeController - Welcome home! The client locale is ko_KR.
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}
