package com.site.Util;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import ch.qos.logback.core.db.dialect.MsSQLDialect;

@Component
public class EmailImpl implements Email{
	
       @Autowired
	   private JavaMailSender sender;
	   
	   @Override
	   public String emailCheck(String emailAdr) {
		   String randomNum = "";
	      try {
	    	  MimeMessage msg = sender.createMimeMessage();
	    	  MimeMessageHelper helper = new MimeMessageHelper(msg);
	         int i = ((int)(Math.random()*30000)+20000); // 20000 ~ 50000까지 랜덤숫자 발송
	         randomNum = Integer.toString(i);
	         helper.setTo(emailAdr);
	         helper.setSubject("롯데시네마 인증번호 입니다");
	         helper.setText("인증번호는 <h1>"+randomNum+"</h1> 입니다",true);
	         helper.setFrom("LOTTE");
	         System.out.println("5");
	         sender.send(msg);
	         System.out.println("6");
	      }catch(Exception e) {
	    	  e.printStackTrace();
	          randomNum = "false";
	      }
	      System.out.println(randomNum);
	      return randomNum;
	   }
}
