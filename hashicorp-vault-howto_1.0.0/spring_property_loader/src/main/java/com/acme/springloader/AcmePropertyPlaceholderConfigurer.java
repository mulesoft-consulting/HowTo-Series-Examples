package com.acme.springloader;
import org.apache.logging.log4j.LogManager;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;
import org.springframework.core.io.Resource;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class AcmePropertyPlaceholderConfigurer extends PropertyPlaceholderConfigurer {
	private static final Logger logger = LogManager.getLogger(AcmePropertyPlaceholderConfigurer.class.getName());
	private String clientId;
	private String clientSecret;
	private String configMgrUrl;
	
	public AcmePropertyPlaceholderConfigurer(){
		if (System.getProperty("CONFIG_MGR.CLIENT_ID") == null ||
				System.getProperty("CONFIG_MGR.CLIENT_SECRET") == null ||
				System.getProperty("CONFIG_MGR.URL") == null)
			throw new RuntimeException("Required properties not supplied.");
			
		this.clientId = System.getProperty("CONFIG_MGR.CLIENT_ID");
		this.clientSecret = System.getProperty("CONFIG_MGR.CLIENT_SECRET");
		this.configMgrUrl = System.getProperty("CONFIG_MGR.URL");

		if (this.clientId.equals("") || this.clientSecret.equals("") || this.configMgrUrl.equals("")) {
			logger.error("Empty property values were provided - throwing exception");
			throw new RuntimeException("Empty property values supplied");
		}
	}
	
	public void postProcessBeanFactory(ConfigurableListableBeanFactory beanFactory) throws BeansException {
		injectResources();
        super.postProcessBeanFactory(beanFactory);
    }
	
	public void injectResources() {
		ConfigPropertiesLoader vpl = new ConfigPropertiesLoader(this.clientId,
				this.clientSecret, this.configMgrUrl);
		Resource configResources = vpl.getResource("");
		
		super.setLocation(configResources);
	}
}
