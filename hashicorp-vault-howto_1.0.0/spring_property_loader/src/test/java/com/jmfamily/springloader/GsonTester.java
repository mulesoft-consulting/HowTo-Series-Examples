package com.jmfamily.springloader;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class GsonTester {
	private static final Logger logger = LogManager.getLogger(GsonTester.class.getName());
	
	@Test
	public void doSomething()
	{
		String sampleJSON = "[{\"FOO\":\"BAR\"},{\"ANIMAL\":\"DOG\"},{\"MAKE\":\"FORD\"}]";
		Gson gsonParser = new Gson();
		
		Type propertyList = new TypeToken<Map<String, Object>[]>(){}.getType();
		
		Map<String, Object>[] foo = gsonParser.fromJson(sampleJSON, propertyList);
		for(Map<String,Object> item : foo)
		{
			for(String key : item.keySet()) {
				String outputStr = "key=" + key + " value=" + item.get(key).toString();
				logger.error(outputStr);
			}
		}
		
//		Map<String, String> map = gsonParser.fromJson(sampleJSON, new TypeToken<Map<String, String>>(){}.getType());
		
	}

}
