package com.acme.springloader;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

public class ConfigPropertiesLoader implements ResourceLoader {
	private String clientId;
	private String cLientSecret;
	private String configMgrUrl;

	private static final Logger logger = LogManager.getLogger(ConfigPropertiesLoader.class.getName());
	
	public ConfigPropertiesLoader(String clientId, String clientSecret, String configMgrUrl)
	{
		this.clientId = clientId;
		this.cLientSecret = clientSecret;
		this.configMgrUrl = configMgrUrl;
	}

	public ClassLoader getClassLoader() {
		return this.getClassLoader();
	}

	public Resource getResource(String jsonPath) {
		byte[] resourceData;
		
		ConfigClient vc = new ConfigClient(this.clientId, this.cLientSecret, this.configMgrUrl);
		String jsonReturned = vc.retrieveProperties();

		Gson gsonParser = new Gson();
		Map<String, Object>[] map = gsonParser.fromJson(jsonReturned, new TypeToken<Map<String, Object>[]>(){}.getType());

		ByteArrayOutputStream output = new ByteArrayOutputStream();
		
		for(Map<String,Object> pair : map)
		{
			for(Map.Entry<String, Object> aProperty : pair.entrySet())
			{
				String propertyLine = String.format("%s=%s%n", aProperty.getKey(), aProperty.getValue().toString());
				try {
					output.write(propertyLine.getBytes());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
				
		resourceData = output.toByteArray();
		return new ByteArrayResource( resourceData );
	}
}
