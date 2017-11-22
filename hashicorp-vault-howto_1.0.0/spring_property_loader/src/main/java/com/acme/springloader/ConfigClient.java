package com.acme.springloader;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Base64;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class ConfigClient {
	private String clientId;
	private String cLientSecret;
	private String configMgrUrl;

	private static final Logger logger = LogManager.getLogger(ConfigClient.class.getName());
	
	public ConfigClient(){
		throw new RuntimeException("Spring Bean not properly configured");
	}
	
	public ConfigClient(String clientId, String clientSecret, String configMgrUrl) {
		this.clientId = clientId;
		this.cLientSecret = clientSecret;
		this.configMgrUrl = configMgrUrl;
	}

	public String retrieveProperties() throws RuntimeException {
		String jsonResult = "";

		try {
			String encoded = Base64.getEncoder().encodeToString((this.clientId+":"+this.cLientSecret).getBytes(StandardCharsets.UTF_8));  

			URL url = new URL(String.format("%s", this.configMgrUrl));
			HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
			urlConnection.setRequestProperty("accept", "application/json");
			urlConnection.setRequestProperty("Authorization", "Basic "+encoded);
			
			if (urlConnection.getResponseCode() != 200) {
				throw new RuntimeException("Could not get connection to Configuration Manager... Response code = " + urlConnection.getResponseCode());
			}
			
			BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));
		    StringBuffer jsonString = new StringBuffer();
		    String line;
		    while ((line = br.readLine()) != null) {
		        jsonString.append(line);
		    }
		    br.close();
		    urlConnection.disconnect();

		    jsonResult = jsonString.toString();
		    
		} catch (Exception e) {
			throw new RuntimeException("Trouble retrieving secret from Configuration Manager url=" + this.configMgrUrl +
					" System.getProperty(\"test.url\")=" + System.getProperty("test.url") +
					" System.getenv(\"test.url\")=" + System.getenv("test.url"));
		}
		
		return jsonResult;
	}
}
