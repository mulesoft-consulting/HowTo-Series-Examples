package com.jmfamily.springloader;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.junit.Test;
import org.junit.runner.RunWith;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:Test-context.xml"})
public class SpringContextConfigurationTest {
	@Autowired
	ConfigurableApplicationContext context;

	@Test(expected = RuntimeException.class)
	public void badProperties()
	{
		System.setProperty("CONFIG_MGR.URL", "foo");
		System.setProperty("CONFIG_MGR.CLIENT_ID", "bar");
		System.setProperty("CONFIG_MGR.CLIENT_SECRET", "xyz");

		vault().injectResources();
	}
	
	@Bean
	JMFPropertyPlaceholderConfigurer vault() {
		return new JMFPropertyPlaceholderConfigurer();
	}
}