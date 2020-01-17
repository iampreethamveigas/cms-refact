package com.mkyong;

import java.util.Iterator;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelcomeController {

	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";

	@RequestMapping(value = "/", method = { RequestMethod.POST }, produces = { "application/x-www-form-urlencoded" })
	public String welcome(Map<String, Object> model,@RequestBody MultiValueMap<String, String> formData) {
		Iterator<String> it = formData.keySet().iterator();
		while (it.hasNext()) {
			String theKey = (String) it.next();
			System.out.print(theKey + formData.getFirst(theKey));
		}
		// sample view secret yml
		model.put("message", this.message);
		model.put("Customer_Name", "");
		model.put("Corporate_ID", "");
		model.put("User_ID", "");
		model.put("VERIFYURL", "");
		model.put("VERSION", "");
		return "welcome";
	}

}