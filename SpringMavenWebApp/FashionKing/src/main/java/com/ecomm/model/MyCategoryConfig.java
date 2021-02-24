package com.ecomm.model;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MyCategoryConfig
{
	@Bean(name="category")
	public Category getABean()
	{
		
		System.out.println("----------Bean Method Called----------");
		Category category=new Category();
		category.setCategoryId(2001);
		category.setCategoryName("Smartphone");
		category.setCategoryDesc("5G mobiles");
		return category;
	}
}
