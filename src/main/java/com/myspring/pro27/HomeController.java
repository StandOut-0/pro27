package com.myspring.pro27;

import java.text.DateFormat;
import java.util.Date;
//������ ��ü, ������� ����, ���� �Ǵ� ��ȭ�� ������ ������ ���� ��ȣ ������ ����
import java.util.Locale;

// ������ ��, SLF4J API�� ����Ͽ� �α� �ڵ带 �ۼ�
///�پ��� �α� ������ ��ũ�� ���� �߻�ȭ(�������̽�) ������ �ϴ� ���̺귯��
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//Ŭ���� ��� �˻��� ���� ���� Ŭ������ �ڵ����� ������ �� �ֵ�����
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
